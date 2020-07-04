<?php
require('base.php');
class Fcubs extends Base{
    public function ns(){
        $this->post_method();
        $this->secure();
        //form_validation
        $this->form_validation->set_rules('name','Customer Name','trim|required|min_length[3]');

        if(!$this->form_validation->run()){
            $this->secure();
            $data['content']='content/name_search'; 
		    $data['active1']='customer-search';
		    $data['active']='customer-search-name';
		    $data['title']='Name Search';
		    $this->load->view('layouts/app',$data);
            return; 
        }

        $name=strtoupper($this->input->post('name'));
        $query ="SELECT ALT_AC_NO,BRANCH_CODE,ACCOUNT_CLASS,CUST_NO,CUST_AC_NO,AC_DESC,ACC_STATUS,ACY_CURR_BALANCE,CCY,ALT_AC_NO from STTMS_CUST_ACCOUNT  where AC_DESC like '%".$name."%' ORDER BY BRANCH_CODE ASC ";
        $con=$this->load->database('oracle',true);
        $nameResults=$con->query($query);
        
        $data['content']='content/name_search'; 
		$data['active1']='customer-search';
		$data['active']='customer-search-name';
        $data['title']='Name Search';
        $data['nameResults']=$nameResults;
		$this->load->view('layouts/app',$data);
        return; 
    }

    public function cif_find($cif){
        $this->secure();
        //some validation
        $con=$this->load->database('oracle',true);
        $queryName ="SELECT AC_DESC from STTMS_CUST_ACCOUNT  where CUST_NO='".$cif."' ORDER BY BRANCH_CODE ASC ";
        $queryMdate='SELECT SIG_TEXT from oblprod.svtm_cif_sig_det where CIF_ID='.$cif;

        $name=$con->query($queryName)->result_array()[0]['AC_DESC'];
        $mdate=$con->query($queryMdate)->result_array()[0]['SIG_TEXT']->load();
        
        //echo '<img width="850" height="750" src="data:image/jpeg;base64,'.$mdate->result_array()[0]['SIG_TEXT']->load().'"/>';
    
		$data['content']='content/cif_search';
        $data['cif']=$cif;
        $data['name']=$name;
        $data['mandate']=$mdate;
		$data['active1']='customer-search';
		$data['active']='customer-search-cif';
		$data['title']='CIF Search';
        $this->load->view('layouts/app',$data);
        return;
    }
    
    public function cif_search(){
        $this->secure();
        $this->post_method();
        $this->form_validation->set_rules('cif', 'CIF','required|min_length[6]|max_length[6]');

        if(!$this->form_validation->run()){
            $data['content']='content/cif_search';
		    $data['active1']='customer-search';
		    $data['active']='customer-search-cif';
		    $data['title']='CIF Search';
            $this->load->view('layouts/app',$data);
            return;
        }
        $cif=$this->input->post('cif');
        $con=$this->load->database('oracle',true);
        $queryName ="SELECT AC_DESC from STTMS_CUST_ACCOUNT  where CUST_NO='".$cif."' ORDER BY BRANCH_CODE ASC ";
        $queryMdate='SELECT SIG_TEXT from oblprod.svtm_cif_sig_det where CIF_ID='.$cif;

        $name=$con->query($queryName)->result_array()[0]['AC_DESC'];
        $mdate=$con->query($queryMdate)->result_array()[0]['SIG_TEXT']->load();

        if(is_null($con->query($queryName)->result_array()[0])){
            $data['content']='content/error';
            $data['title']='CIF NOT FOUND';
            $data['active1']='customer-search';
            $data['active']='customer-search-cif';
            $this->load->view('layouts/app',$data);
            return;
        }

        $data['content']='content/cif_search';
        $data['cif']=$cif;
        $data['name']=$name;
        $data['mandate']=$mdate;
		$data['active1']='customer-search';
		$data['active']='customer-search-cif';
		$data['title']='CIF Search';
        $this->load->view('layouts/app',$data);
        return;
    }

    public function acc_details($cif){
        $this->secure();
        //some validation
        $con=$this->load->database('oracle',true);
        $q1="SELECT * from STTMS_CUST_ACCOUNT where CUST_NO='".$cif."'";
        $dets=$con->query($q1);

        $q1="SELECT * from STTM_CUST_PERSONAL where CUSTOMER_NO='".$cif."'";
        $pdets=$con->query($q1);

        $q1="select ACCOUNT,MOBILE_NUMBER_AT_ACC_OPENING,OTHR_PHN_NUMBER_AT_ACC_OPENING,EMAIL_ADDRESS_AT_AC_OPENING FROM VW_OBL_SEGMENTS where SUBSTR(account,1,6)='".$cif."'";
        $odets=$con->query($q1);
        
        $data['content']='content/details';
        $data['details']=$dets->result_array()[0];
        $data['detailsPersonal']=$pdets->result_array()[0];
        $data['detailsOthers']=$odets->result_array();
		$data['active1']='customer-search';
		$data['active']='customer-search-cif';
		$data['title']='Account Details';
        $this->load->view('layouts/app',$data);
        return;
    }
}