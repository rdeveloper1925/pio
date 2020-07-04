<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require('base.php');
class Pages extends Base {

	public function index()
	{
		$this->load->view('auth/login');
	}

	public function dashboard(){
		$this->secure();
		$data['policies']=count(directory_map('./assets/files/policies'));
		$data['manuals']=count(directory_map('./assets/files/manuals'));
		$data['processes']=count(directory_map('./assets/files/processes'));
		$data['blacklists']=count(directory_map('./assets/files/blacklist'));
		$data['forms']=count(directory_map('./assets/files/forms'));
		$data['products']=count(directory_map('./assets/files/products'));
		$data['content']='content/dashboard';
		$data['active1']='dashboard';
		$data['active']='dashboard';
		$data['title']='Dashboard';
		$this->load->view('layouts/app',$data);
	}

	public function differal(){
		$this->secure();
		$data['diffs']=$this->db->get('differal_prod')->result();
		$data['content']='content/differed'; 
		$data['active1']='diff';
		$data['active']='diff';
		$data['title']='Accounts differed';
		$this->load->view('layouts/dtable',$data);
	}

	public function name_search(){
		$this->secure();
		$data['content']='content/name_search'; 
		$data['active1']='customer-search';
		$data['active']='customer-search-name';
		$data['title']='Name Search';
		$this->load->view('layouts/app',$data);
	}

	public function cif_search($cif=0){
		$this->secure();
		$data['content']='content/cif_search';
		$data['cif']=$cif;
		$data['active1']='customer-search';
		$data['active']='customer-search-cif';
		$data['title']='CIF Search';
		$this->load->view('layouts/app',$data);
	}

	public function company_search(){
		$this->secure();
		$data['content']='content/company_search';
		$data['active1']='customer-search';
		$data['active']='customer-search-company';
		$data['title']='Company Search';
		$this->load->view('layouts/dtable',$data);
	}

	public function policies(){
		$this->secure();
		$map=directory_map('./assets/files/policies');
		
		$data['files']=$map;
		$data['content']='content/policies';
		$data['active1']='pp';
		$data['active']='pp-policies';
		$data['title']='Policies';
		$this->load->view('layouts/dtable',$data);
	}

	public function manuals(){
		$this->secure();
		$map=directory_map('./assets/files/manuals');
		$data['manuals']=$map;
		$data['content']='content/manuals';
		$data['active1']='pp';
		$data['active']='pp-manuals';
		$data['title']='Manuals';
		$this->load->view('layouts/dtable',$data);
	}

	public function process_flows(){
		$this->secure();
		$map=directory_map('./assets/files/processes');
		$data['processes']=$map;
		$data['content']='content/process_flows';
		$data['active1']='pp';
		$data['active']='pp-pf';
		$data['title']='Process Flows';
		$this->load->view('layouts/dtable',$data);
	}

	public function blacklist_persons(){
		$this->secure();
		$map=directory_map('./assets/files/blacklist');
		$data['content']='content/blacklist_persons';
		$data['active1']='blacklists';
		$data['active']='blacklists-p';
		$data['title']='Local Blacklist';
		$data['blacklists']=$map;
		$this->load->view('layouts/dtable',$data);
	}

	public function blacklist_companies(){
		$this->secure();
		$map=directory_map('./assets/files/blacklist_company');
		$data['content']='content/blacklist_companies';
		$data['active1']='blacklists';
		$data['active']='blacklists-c';
		$data['files']=$map;
		$data['title']='Blacklisted Companies';
		$this->load->view('layouts/dtable',$data);
	}

	public function sanctioned_countries(){
		$this->secure();
		$map=directory_map('./assets/files/countries');
		$data['content']='content/sanctioned_countries';
		$data['active1']='blacklists';
		$data['active']='blacklists-sc';
		$data['title']='Sanctioned Countries';
		$data['countries']=$map;
		$this->load->view('layouts/dtable',$data);
	}

	public function product_guide(){
		$this->secure();
		$map=directory_map('./assets/files/products');
		$data['products']=$map;
		$data['content']='content/product_guide';
		$data['active1']='product_guide';
		$data['active']='product_guide';
		$data['title']='Product Guide';
		$this->load->view('layouts/dtable',$data);
	}

	public function pep_list(){
		$this->secure();
		$map=directory_map('./assets/files/pep');
		$data['peps']=$map;
		$data['content']='content/pep_list';
		$data['active1']='pl';
		$data['active']='pl';
		$data['title']='Pep List';
		$this->load->view('layouts/dtable',$data);
	}
	public function forms(){
		$this->secure();
		$map=directory_map('assets/files/forms');
		$data['forms']=$map;
		$data['content']='content/forms';
		$data['active1']='forms';
		$data['active']='forms';
		$data['title']='Forms';
		$this->load->view('layouts/dtable',$data);
	}

	public function indemnity(){
		$this->secure();
		$indemnities_approved=directory_map('./assets/files/indemnities_approved');
		$indemnities_uploaded=directory_map('./assets/files/indemnities');
		if($this->check_role('%Policy%Checker%',$this->session->userdata('username'))){

		}else if($this->check_role('%Policy%Maker%',$this->session->userdata('username'))){

		}else{
			
		}
		$data['indemnities_approved']=$indemnities_approved;
		$data['indemnities_uploaded']=$indemnities_uploaded;
		$data['content']='content/indemnity';
		$data['active1']='indemnity';
		$data['active']='indemnity';
		$data['title']='Indemnities';
		$this->load->view('layouts/dtable',$data);
		//header('Location: http://134.147.160.48:1818/policy/IND/Indemnity.jsp?username=oip');
	}
	public function indemnity_upload(){
		$this->secure();
		$role='%Indemnity%maker%';
		if($this->check_role());
		$this->form_validation->set_rules('file_name', 'Name', 'required|min_length[5]|max_length[12]');
		if(!$this->form_validation->run()){
            $map=directory_map('./assets/files/indemnities');
			$data['indemnities']=$map;
			$data['content']='content/indemnity';
			$data['active1']='indemnity';
			$data['active']='indemnity';
			$data['title']='Indemnities';
			$this->load->view('layouts/dtable',$data);
            return;
        }
		
		$config['upload_path']= 'assets/files/indemnities';
        $config['allowed_types']= 'pdf|jpg|jpeg|png';
		$config['max_size']= 500;
		$config['file_name']=$this->input->post('file_name');
		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload('file')){
            $error = array('error' => $this->upload->display_errors());
			//redirect(base_url('pages/indemnity'));
			$map=directory_map('./assets/files/indemnities');
			$data['indemnities']=$map;
			$data['content']='content/indemnity';
			$data['active1']='indemnity';
			$data['active']='indemnity';
			$data['error']=$error;
			$data['title']='Indemnities';
			$this->load->view('layouts/dtable',$data);
			return;
		}
		$data = array('upload_data' => $this->upload->data());
		redirect (base_url('pages/indemnity'));
		return;
	}

	public function account(){
		$this->secure();
		$data['content']='content/account';
		$data['active1']='account';
		$data['active']='account';
		$data['title']='My Account';
		$this->load->view('layouts/app',$data);
	}

	public function logout(){
		$this->session->sess_destroy();//session_destroy();
		$this->session->set_flashdata('LOGGED_OUT','Logged out successfully');
		redirect(base_url('pages'));
	}


	public function cubsS(){
		$con=$this->load->database('oracle',true);
		//$data=$con->query("SELECT BRANCH_CODE,ACCOUNT_CLASS,CUST_NO,CUST_AC_NO,AC_DESC,RECORD_STAT,ACY_CURR_BALANCE,CCY,ALT_AC_NO,TO_CHAR(STATUS_SINCE,'DD-MON-YYYY') from STTMS_CUST_ACCOUNT  where CUST_NO='475661' ORDER BY BRANCH_CODE ASC ");
		
		
		$q1="";
		$data=$con->query($q1);
		foreach($data->result_array() as $row){
			echo 'large data: breaking <br>';
			print_r($row);
			echo '<strong>Braking</strong> <br><br><br>';
		}
/*
		$q1="SELECT * from STTM_CUST_PERSONAL  where CUSTOMER_NO='475661'";
		$data=$con->query($q1);
		foreach($data->result_array() as $row){
			echo 'breaking mashup new <br>';
			print_r($row);
			echo '<strong>Braking</strong> <br><br><br>';
		}*/

		$q1="select ACCOUNT,MOBILE_NUMBER_AT_ACC_OPENING,OTHR_PHN_NUMBER_AT_ACC_OPENING,EMAIL_ADDRESS_AT_AC_OPENING FROM VW_OBL_SEGMENTS where SUBSTR(account,1,6)='475661' ";
		$data=$con->query($q1);
		foreach($data->result_array() as $row){
			echo '//breaking mashup new new <br>';
			print_r($row);
			echo '<strong>Braking</strong> <br><br><br>';
		}
	}

	public function try(){
		$con=$this->load->database('oracle',true);
	}
	
}
