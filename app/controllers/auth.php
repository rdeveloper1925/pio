<?php
require('base.php'); 
class Auth extends Base{
    public function doLogin(){
        $this->post_method();
        //Form validation
        $this->form_validation->set_rules('username','Username','trim|required|min_length[4]|alpha');
        $this->form_validation->set_rules('password','Password','trim|required|min_length[8]');
        //$this->form_validation->set_rules('password', 'Password', 'callback_valid_password');
        //Run Form Validaion
        if(!$this->form_validation->run()){
            $this->load->view('auth/login');
            return;
        }

        $username=$this->input->post('username');
        $password=hash('whirlpool',$this->input->post('password'));
        $this->authenticate($username,$password);
    }

    public function mustChange(){
        $this->post_method();
        //$this->form_validation->set_rules('password','Password','trim|required|min_length[8]');
        $this->form_validation->set_rules('password', 'Password', 'callback_valid_password');
        $this->form_validation->set_rules('password2','Re-entered Password','trim|required|matches[password]');

        if(!$this->form_validation->run()){
            $this->load->view('auth/mustChange');
            return;
        }

        $password=hash ('whirlpool',$this->input->post('password'));
        //return print_r($this->input->post('uid'));
        if($this->input->post('uid')){
            $user_id=$this->input->post('uid');
            $date_change=date('Y-m-d H:i:s',time());
            $this->db->where(['username'=>$user_id]);
            $this->db->update('users',['password'=>$password,'mustChangePwd'=>0,'failedAttempts'=>0,'pwd_set'=>$date_change,'last_login'=>$date_change]);
            $data=$this->db->get_where('users',['username'=>$user_id]);
            $this->session->set_userdata($data->result_array()[0]);
            redirect(base_url('pages/dashboard'));
            return;
        }else{
            echo "Please try again";
        }
    }

    public function password_change(){
        $this->post_method();
        $this->form_validation->set_rules('old','Old Password','trim|required');
        //$this->form_validation->set_rules('new','New Password','trim|required|min_length[8]');
        $this->form_validation->set_rules('new', 'New Password', 'callback_valid_password');
        $this->form_validation->set_rules('new2','Re-typed Password','trim|required|matches[new]');

        if(!$this->form_validation->run()){
            $this->secure();
            $data['content']='content/account';
            $data['active1']='account';
            $data['active']='account';
            $data['title']='My Account';
            $this->load->view('layouts/app',$data);
            return;
        }
        $old=hash('whirlpool',$this->input->post('old'));
        $new=hash('whirlpool',$this->input->post('new'));
        $new2=hash('whirlpool',$this->input->post('new2'));

        $rs=$this->db->get_where('users',['password'=>$old,'username'=>$this->session->userdata('username'),'id'=>$this->session->userdata('id')]);
        if($rs->num_rows()==1&&strcmp($new,$new2)==0){
            $this->db->where(['username'=>$this->session->userdata('username')]);
            $this->db->update('users',['password'=>$new]);
            if($this->db->affected_rows()==1){
                $this->session->set_flashdata('success', 'Password Successfully Updated');
                redirect(base_url('pages/account'));
                return;
            }else{
                $this->session->set_flashdata('fail', 'An Error occured. Please try again');
                redirect(base_url('pages/account'));
                return;
            }
        }else{
            $this->session->set_flashdata('fail', 'An Error occured. Please Check Old Password and try again');
            redirect(base_url('pages/account'));
            return;
        }
    }
    
    public function valid_password($password = '')
    {
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
}