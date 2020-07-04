<?php
require('base.php');
class Admin extends Base{
    public function users(){
		$this->secure();
		$this->level2();
		$users=$this->db->get('users');
		$data['content']='content/administer-users';
		$data['active1']='admin';
		$data['active']='admin-users';
		$data['title']='User Administration';
		$data['users']=$users;
		$this->load->view('layouts/dtable',$data);
	}
	
	public function bkp(){
		$this->load->dbutil();
		$prefs = array(     
			'format'      => 'zip',             
			'filename'    => 'my_db_backup.sql'
			);
		$this->load->helper('file');
		$backup=$this->dbutil->backup();
		if(write_file('./Bkps/Backup_'.date('Ymd-His').'.zip',$backup)){
			echo 'MESSAGE: Backup done successfully';
		}
		//powershell.exe -Command "Invoke WebRequest http://localhost/oip/admin/bkp
	}

	public function ts(){
		$this->load->dbutil();
		$prefs = array(     
			'format'      => 'zip',             
			'filename'    => 'my_db_backup.sql'
			);
		$backup =& $this->dbutil->backup($prefs); 

		$db_name = 'backup-on-'. date("Y-m-d-H-i-s") .'.zip';
		$save = './Bkps/'.$db_name;
		$this->load->helper('file');
		write_file($save, $backup); 
		$this->load->helper('download');
		force_download($db_name, $backup);
	}
    
    public function ua(){ 
		$this->secure();
		$this->level3();
		//$this->db->query('select * from access inner join users on access.user_id=users.id')->get()->result;
		$uas=$this->db->select('*')->from('access')->get()->result();
		$data['content']='content/ua';
		$data['active1']='admin';
		$data['uas']=$uas;
		$data['active']='admin-ua';
		$data['title']='Unauthorized Access logs';
		$this->load->view('layouts/dtable',$data);
	}

	public function account_actions(){
		$this->secure();
		$this->level3();
		$select='account_actions.id,account_actions.maker, account_actions.account_id, account_actions.action, account_actions.datetime_modified';
		$aas=$this->db->select($select)->from('account_actions')->join('users','account_actions.maker=users.username')->get()->result();
		//$aas2=$this->db->select($select)->from('account_actions')->join('users','account_actions.user_id=users.id')->get()->result();
		
		$data['content']='content/account_actions';
		$data['active1']='admin';
		$data['aas']=$aas;
		//$data['aas2']=$aas2;
		$data['active']='admin-aa';
		$data['title']='Audit Trails';
		$this->load->view('layouts/dtable',$data);
	}

	public function roles(){
		$this->secure();
		$this->level3();
		$data['roles']=$this->db->get('roles')->result();
		$data['content']='content/roles_home';
		$data['active1']='admin';
		$data['active']='admin-roles';
		//$data['aas']=$aas;
		$data['title']='User Roles';
		$this->load->view('layouts/dtable',$data);
	}

	public function new_user(){
		$this->secure();
		$this->post_method();
		$this->level2();
		$this->load->library('form_validation');
		$this->form_validation->set_rules('username',"Username",'trim|min_length[6]|required|is_unique[users.username]');
		$this->form_validation->set_rules('level','Access Level','required|numeric');
		$this->form_validation->set_rules('fName','First Name','required|trim|alpha');
		$this->form_validation->set_rules('lName','Surname','required|trim|alpha');
		$this->form_validation->set_rules('password','Preliminary Password','trim|required|min_length[8]');//callback_valid_password
		
		if(!$this->form_validation->run()){
			$this->users();
			return;
		}

		$newUser=strtoupper($this->input->post('username'));
		$maker=$this->session->userdata('username');
		$date=date('Y-m-d H:i:s');

		$data=[
			'username'=>$newUser,
			'fName'=>$this->input->post('fName'),
			'lName'=>$this->input->post('lName'),
			'password'=>hash('whirlpool',$this->input->post('password')),
			'level'=>$this->input->post('level'),
			'locked'=>0,
			'mustChangePwd'=>1,
			'failedAttempts'=>0,
			'maker'=>$maker
		];
		//audit trail
		$this->db->insert('account_actions',['action'=>'User Created: '.$newUser,'account_id'=>$newUser,'maker'=>$maker,'datetime_modified'=>$date]);
		$rs=$this->db->insert('users',$data);
		if($this->db->affected_rows()==1){
			$this->session->set_flashdata('success','User '.$this->input->post('username').' Successfully Created');
			redirect(base_url('admin/users'));
			return;
		}else{
			$this->session->set_flashdata('fail','User '.$this->input->post('username').' Not Created. Try again');
			redirect(base_url('admin/users'));
			return;
		}
		return;
	}

	public function view_user($user_id){
		$this->secure();
		$this->level2();
		$user=$this->db->get_where('users',['username'=>$user_id])->result()[0];
		$roles=$this->db->get_where('roles',['username'=>$user_id])->result();
		$data['roles']=$roles;
		$data['content']='content/view_user';
		$data['active1']='admin';
		$data['active']='admin-users';
		$data['title']='View User: '.$user->username;
		$data['user']=$user;
		$this->load->view('layouts/dtable',$data);
		return;
	}

	public function roles_add(){
		$username=$this->input->post('username');
		$maker_checker=$this->input->post('maker-checker');
		$role=$this->input->post('role');
		$role_to_add=array(
			'role'=>$role." (".$maker_checker.")",
			'username'=>$username,
			'grantedBy'=>$this->session->userdata('username'),
			'grantedDate'=>date('Y-m-d H:i:s', time())
		);
		$this->db->where(['username'=>$username,'role'=>$role." (".$maker_checker.")"]);
		$rs=$this->db->get('roles')->result();
		if(!empty($rs)){
			$this->session->set_flashdata('ROLE_EXISTS','User already has selected role');
			$this->view_user($username);
			return;
		}else{
			$this->db->insert('roles', $role_to_add);
			$this->db->insert('account_actions',[
				'action'=>$role." (".$maker_checker.") Granted to ".$username,
				'account_id'=>$username,
				'maker'=>$this->session->userdata('username'),
				'datetime_modified'=>date('Y-m-d H:i:s',time())
			]);
			if($this->db->affected_rows()==1){
				$this->session->set_flashdata('ROLE_GRANTED',' <b>'.$username.'</b> has been granted <b>'.$role.' ('.$maker_checker.')'.'</b> role');
				$this->view_user($username);
				return;
			}else{
				$data['content']='content/view_user';
				$data['active1']='admin';
				$data['active']='admin-users';
				$data['reason']='An Error Occured';
				$data['content']='content/error';
				$data['title']='Error !!';
				$this->load->view('layouts/dtable',$data);
				return;
			}
		}
	}

	public function revoke($id,$user_id){
		$this->db->where(['id'=>$id]);
		$this->db->delete('roles');
		
		$this->session->set_flashdata('ROLE_REVOKED','Role Successfully Revoked!!');
		$this->view_user($user_id);
		return;
	}

	public function revoke2($id,$user_id){
		$this->db->where(['id'=>$id]);
		$this->db->delete('roles');
		$this->session->set_flashdata('ROLE_REVOKED','Role Successfully Revoked!!');
		$this->roles();
		return;
	}

	public function defferal_upload(){
		$this->secure();
		$creation_date=date('Y-m-d',strtotime($this->input->post('creation_date')));
		$expected_closure=date('Y-m-d',strtotime($this->input->post('expected_closure')));
		//$closure_date=date('Y-m-d',strtotime($this->input->post('closure_date')));
		$data=array(
			'branch_code'=>$this->input->post('branch_code'),
			'creation_date'=>$creation_date,
			'sales_person'=>$this->input->post('sales_person'),
			'account_no'=>$this->input->post('account_no'),
			'customer_name'=>$this->input->post('customer_name'),
			'customer_contact'=>$this->input->post('customer_contact'),
			'product'=>$this->input->post('product'),
			'errors_identified'=>$this->input->post('errors_identified'),
			'expected_closure'=>$expected_closure,
			'deferral_authorizer'=>$this->input->post('defferal_authorizer'),
		);
		$rs=$this->db->insert('differal_prod',$data);
		if($rs){
			$this->secure();
			$this->session->set_flashdata('success','Defferal successfully added');
		$data['diffs']=$this->db->get('differal_prod')->result();
		$data['content']='content/differed'; 
		$data['active1']='diff';
		$data['active']='diff';
		$data['title']='Accounts differed';
		$this->load->view('layouts/dtable',$data);
		}else{
			echo 'error';
		}
	}

	public function update_account($user_id){
		$this->secure();
		$this->level2();
		$this->post_method();
		$uid=$this->session->userdata('username');
		$date=date('Y-m-d H:i:s');
		//audit trail
		if($this->input->post('locked')!=null){
			$this->db->insert('account_actions',['action'=>'Account Lock: '.$user_id,'account_id'=>$user_id,'maker'=>$uid,'datetime_modified'=>$date]);
			$locked=1;
		}else{
			$this->db->insert('account_actions',['action'=>'Account Unlock: '.$user_id,'account_id'=>$user_id,'maker'=>$uid,'datetime_modified'=>$date]);
			$locked=0;
		}
		if($this->input->post('mustChangePwd')!=null){
			$this->db->insert('account_actions',['action'=>'Password Reset: '.$user_id,'account_id'=>$user_id,'maker'=>$uid,'datetime_modified'=>$date]);
			$mcp=1;
		}else{
			$mcp=0;//must change password
		}
		$data=array(
			'mustChangePwd'=>$mcp,
			'locked'=>$locked,
			'failedAttempts'=>0,
			'password'=>hash('whirlpool','password') //change this to change default password after reseting a user.
		);
		$this->db->where(['username'=>$user_id]);
		$rs=$this->db->update('users',$data);
		if($this->db->affected_rows()==1){
			$this->session->set_flashdata('success','User account settings successfully modified');
			redirect(base_url('admin/users'));
			return;
		}else{
			$this->session->set_flashdata('fail','User account settings failed to be modified. Try again');
			redirect(base_url('admin/users'));
			return;
		}
	}

	public function edit_user($user_id){
		$this->secure();
		$this->post_method();
		$this->level2();
		$this->load->library('form_validation');
		$this->form_validation->set_rules('level','Access Level','required|numeric');
		$this->form_validation->set_rules('fName','First Name','required|trim|alpha');
		$this->form_validation->set_rules('lName','Surname','required|trim|alpha');
		
		if(!$this->form_validation->run()){
			$this->users();
			return;
		}
		$maker=$this->session->userdata('username');
		$date=date('Y-m-d H:i:s');

		$data=[
			'fName'=>$this->input->post('fName'),
			'lName'=>$this->input->post('lName'),
			'level'=>$this->input->post('level'),
			'maker'=>$maker
		];

		//audit trail
		$this->db->insert('account_actions',['action'=>'User Modify: '.$user_id,'account_id'=>$user_id,'maker'=>$maker,'datetime_modified'=>$date]);
		$this->db->where(['username'=>$user_id]);
		$rs=$this->db->update('users',$data);
		if($this->db->affected_rows()==1){
			$this->session->set_flashdata('success','User Info for '.$this->input->post('username').' Successfully Modified');
			redirect(base_url('admin/users'));
			return;
		}else{
			$this->session->set_flashdata('fail','User Info for '.$this->input->post('username').' Failed to Modify. Try again');
			redirect(base_url('admin/users'));
			return;
		}
		return;
	}

	public function user_export(){
		$this->secure();
		$this->level2();
		$timestamp = time();
        $filename = 'UserExport_' . $timestamp . '.xls';
        header("Content-Type: application/vnd.ms-excel");
        header("Content-Disposition: attachment; filename=\"$filename\"");
		$isPrintHeader = false;
		$users=$this->db->select('username,fName,lName,level,locked,maker,last_login')->get('users')->result_array();
        foreach ($users as $row) {
            if (! $isPrintHeader) {
                echo implode("\t", array_keys($row)) . "\n";
                $isPrintHeader = true;
            }
            echo implode("\t", array_values($row)) . "\n";
        }
        exit(); 
	}

	public function delete_user($user_id){
		$this->secure();
		$this->level2();
		$maker_id=$this->session->userdata('username');
		$date=date('Y-m-d H:i:s');
		$action='Account Delete: '.$user_id;
		//audit trail
		$this->db->insert('account_actions',['action'=>$action,'account_id'=>$user_id,'maker'=>$maker_id,'datetime_modified'=>$date]);
		
		$this->db->query('SET FOREIGN_KEY_CHECKS=0');
		$this->db->where(['id'=>$user_id]);
		$this->db->delete('users');
		$this->session->set_flashdata('success','User '.$user_id.' Deleted Successfully');
		redirect(base_url('admin/users'));
		return;
	}

	public function valid_password($password = ''){
        $password = trim($password);
        $regex_lowercase = '/[a-z]/';
        $regex_uppercase = '/[A-Z]/';
        $regex_number = '/[0-9]/';
        $regex_special = '/[!@#$%^&*()\-_=+{};:,<.>§~]/';
        if (empty($password))
        {
            $this->form_validation->set_message('valid_password', 'The {field} field is required.');
            return FALSE;
        }
        if (preg_match_all($regex_lowercase, $password) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must be at least one lowercase letter.');
            return FALSE;
        }
        if (preg_match_all($regex_uppercase, $password) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must be at least one uppercase letter.');
            return FALSE;
        }
        if (preg_match_all($regex_number, $password) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must have at least one number.');
            return FALSE;
        }
        if (preg_match_all($regex_special, $password) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must have at least one special character.' . ' ' . htmlentities('!@#$%^&*()\-_=+{};:,<.>§~'));
            return FALSE;
        }
        if (strlen($password) < 5)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must be at least 5 characters in length.');
            return FALSE;
        }
        if (strlen($password) > 32)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field cannot exceed 32 characters in length.');
            return FALSE;
        }
        return TRUE;
    }

    public function backup(){
    	exec('mysqldump --user=m477 --password=herandia1 --host=localhost oip > htdocs/oip/bkp/bkp-'.date('Y-m-d').'.sql',$rs);
    	echo 'DB backup done';
    	var_dump($rs);
	}
}
