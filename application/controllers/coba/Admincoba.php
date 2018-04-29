<?php

Class Admincoba extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function index(){
		$this->load->view('coba/admincoba');
	}

	public function profil(){
		$user = $this->ion_auth->user(1)->row();
		$data['avatar'] = $user->avatar;
		
		$this->load->view('coba/admincoba', $data);

	}
}



?>