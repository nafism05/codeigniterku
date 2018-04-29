<?php

class Upload extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->library('image_lib');
    }

    public function index(){
        $this->load->view('coba/upload_form', array('error' => ' ' ));
    }

    public function haha(){
        if($this->input->post('userfile')){
            echo 'dadi';
        }else{
            echo 'oradadi';
        }
    }

    public function do_uploads(){
        $config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['overwrite'] = FALSE;
        $config['remove_spaces'] = TRUE;
        // $config['encrypt_name'] = TRUE;
        /*$config['max_size']             = 500;
        $config['max_width']            = 1024;
        $config['max_height']           = 768;*/

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('userfile')){
            $error = array('error' => $this->upload->display_errors());

            $this->load->view('coba/upload_form', $error);
        }else{

            $path = $this->upload->upload_path.$this->upload->file_name;
            $nama_ori = $this->upload->file_name;

            //reseize
            $this->reseize($path, 100, 125, $nama_ori);
            $this->reseize($path, 250, 0, $nama_ori);
            $this->reseize($path, 500, 0, $nama_ori);
            // $this->reseize($path, 250, '250_');
            // $this->reseize2($path, 125, 100, '100_');

            $data = array('upload_data' => $this->upload->data());

            $this->load->view('coba/upload_success', $data);
        }
    }

    public function reseize($path, $height, $width, $nama_ori){
        $config['image_library'] = 'gd2';
        $config['source_image'] = $path;
        $config['new_image'] = './uploads/thumbs/'.$height.'_'.$nama_ori;
        $config['maintain_ratio'] = TRUE;
        $config['overwrite'] = TRUE;
        $config['create_thumb'] = false;
        if($width>0){
            $config['width'] = $width;
        }
        $config['height'] = $height;
        $this->image_lib->initialize($config);

        $this->image_lib->resize();
        $this->image_lib->clear();
    }
}
?>

