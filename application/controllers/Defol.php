<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Defol extends MY_Home{

	public function __construct(){
        parent::__construct();
        redirect('home', 'refresh');

    }

    public function index(){

    }
}