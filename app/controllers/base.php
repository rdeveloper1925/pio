<?php
class Base extends CI_Controller{
    
    public function post_method(){
        if($_SERVER['REQUEST_METHOD']!='POST'){
            $this->session->set_flashdata('INVALID_METHOD','Invalid Access Method');
            redirect(base_url('pages'));
            return;
        }else{
            return true;
        }
    }

    public function secure(){
        date_default_timezone_set('Africa/Kampala');
        if(!$this->session->has_userdata('username')){
			$this->session->set_flashdata('unauthorized','Please Login to view page');
            redirect(base_url('pages'));
            return;
        }
        return true;
    }
    public function level2(){
        date_default_timezone_set('Africa/Kampala');
        if($this->session->userdata('level')<2){
            $data=array(
                'url'=>$_SERVER['REQUEST_URI'],
                'access_time'=>date('Y-m-d H:i:s',$_SERVER['REQUEST_TIME']),
                'user_id'=>$this->session->userdata('username'),
                'resource_level'=>2
            );
            $this->db->insert('access',$data);
            $this->session->set_flashdata('ACCESS2',"Sorry, You are not allowed to view this page.");
            redirect(base_url('pages/dashboard'));
            return;
        }
        return true;
    }

    public function level3(){
        date_default_timezone_set('Africa/Kampala');
        if($this->session->userdata('level')!=3){
            $data=array(
                'url'=>$_SERVER['REQUEST_URI'],
                'access_time'=>date('Y-m-d H:i:s',$_SERVER['REQUEST_TIME']),
                'user_id'=>$this->session->userdata('username'),
                'resource_level'=>3
            );
            $this->db->insert('access',$data);
            $this->session->set_flashdata('ACCESS2',"Sorry, You are not allowed to view this page.");
            redirect(base_url('pages/dashboard'));
            return;
        }
        return true;
    }

    public function authenticate($username,$password){
        $this->post_method();
        //$query1=$this->db->query('select * from users where username='.$this->db->escape($username));
        $query1=$this->db->query('select * from users where username=?',$username);
        if($query1->num_rows()!=1){
            $this->session->set_flashdata('INVALID_USERNAME','Unknown Username');
            redirect(base_url());
            return;
        }else if($query1->num_rows()==1){
            $user_id=$query1->result()[0]->username;//user_id=username
            $fail=$query1->result()[0]->failedAttempts;
            $query2=$this->db->get_where('users',['username'=>$username,'password'=>$password,'locked'=>0]);
            if($query2->num_rows()!=1){
                if(3-($fail+1)>0){
                    $this->db->where(['username'=>$user_id]);
                    $this->db->update('users',['failedAttempts'=>$fail+1]);
                    $this->session->set_flashdata('INVALID_PWD','Wrong Password. Attempts left: '.(3-($fail+1)));
                    redirect(base_url());
                    return;
                }else{
                    $this->db->where(['username'=>$user_id]);
                    $this->db->update('users',['failedAttempts'=>$fail+1,'locked'=>1]);
                    $this->session->set_flashdata('LOCKED','Your Account has been locked!');
                    redirect(base_url());
                    return;
                }
            }else if($query2->num_rows()==1&&$query2->result()[0]->locked==0&&$query2->result()[0]->mustChangePwd==0){
                $this->session->set_userdata($query2->result_array()[0]);
                $this->db->where(['username'=>$user_id]);
                $this->db->update('users',['failedAttempts'=>0,'locked'=>0]);
                //here
                if($this->pwd_expired($user_id)){
                    $data['user_id']=$username;
                    $this->session->set_flashdata('EXPIRED','Your password Expired! Change Password now');
                    $this->load->view('auth/mustChange',$data);
                    return;
                }
                redirect(base_url('pages/dashboard'));
                return;
            }else if($query2->num_rows()==1&&$query2->result()[0]->locked==0&&$query2->result()[0]->mustChangePwd==1){
                $this->session->set_userdata(['user_id'=>$query2->result()[0]->username]);
                $data['user_id']=$query2->result()[0]->username;
                if($data['user_id']==null){
                    return redirect(base_url());
                }
                $this->load->view('auth/mustChange',$data);
                return;
            }else if($query2->result()[0]->locked==1){
                $this->session->set_flashdata('LOCKED','Your Account was locked! Contact IT Support to unlock');
                redirect(base_url());
                return;
            }
        }
    }

    public function pwd_expired($username){
        $q=$this->db->query('select * from users where username=?',$username);
        if($q->num_rows()==1){
            $dateSet=$q->result()[0]->pwd_set;
            $then=strtotime($dateSet);
            if(round(abs(time() - $then) /60/60/24,0)>5){
                return true;
            }
        }else{
            return false;
        }
    }

    public function past_due_logon(){
        $this->db->query('UPDATE USERS SET LOCKED=1 where CURRENT_DATE-DATE(LAST_LOGIN)>=15');
        echo "User Review Done ".date('Y-m-d H:i:s',time());
    }

    public function check_role($role,$username){
        $there=$this->db->query('select * from roles where role like "'.$role.'" and username="'.$username.'"')->result();
        //$this->db->get_where('roles',['role'=>$role,'username'=>$username])->result();
        if(empty($there)){
            return false;
        }else{
            return true;
        }
    }
}