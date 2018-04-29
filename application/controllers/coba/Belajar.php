<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Belajar extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Salary_model', 'salary_model');
	}
	
	public function index()
        {
                echo 'Hello World!';
        }

    public function dompdf(){

    }

    public function slip(){
		$sub = $this->uri->segment(3);
		$id = $this->uri->segment(4);
		$data['salary_data'] = $this->salary_model->get_salary_emp_by_sub($sub,$id);
		//$data['employ_data'] = $this->employment_model->get_marital_by_id($id);
		$data['submission_data'] = $this->salary_model->get_submission_by_id($id);
		$data['id'] = $id;
		// Load all views as normal
		$this->load->view('slip_gaji', $data);
		$html = $this->output->get_output();
		$this->load->library('dompdf_gen');
		// Setup Page
		$this->dompdf->set_paper("A4","potrait");
		// Convert to PDF
		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("slip_gaji.pdf",array("Attachment"=>0)); // VIEW IN OTHER TAB
		//$this->dompdf->stream("welcome.pdf"); // SAVE FILE TO DISK
	}
}