<?php
class Sistemku extends CI_Controller {

    public function index(){

        if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect('sistemku/login', 'refresh');
		}elseif (!$this->ion_auth->is_admin()){ 
		// remove this elseif if you want to enable this for non-admins
		
			// redirect them to the home page because they must be an administrator to view this
			return show_error('You must be an administrator to view this page.');
		}else{
			// set the flash data error message if there is one
			//$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

			//list the users
			$this->data['users'] = $this->ion_auth->users()->result();

			foreach ($this->data['users'] as $k => $user){
				$this->data['users'][$k]->groups = $this->ion_auth->get_users_groups($user->id)->result();
			}

			$this->_render_page('auth/index', $this->data);
		}
    }

    public function login(){
    	
    }
}