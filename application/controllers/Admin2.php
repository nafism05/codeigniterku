<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Admin extends CI_Controller {

	public $dataq = array(
			'title' => 'Dashboard',
			'breadcrumb' => '<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li><li class="active">Dashboard</li>',
			'headline' => 'Dashboard <small>Control panel</small>',
			'include' => 'admin/dashboard/dashboard',
			'template' => 'admin/admin_template',
			'header' => 'admin/dashboard/dashboard_header',
			'footer' => 'admin/dashboard/dashboard_footer',
			'login' => 'admin/login',
			'logout' => 'admin/logout',
			'index' => 'admin',
			'register' => 'admin/register',
			'edit' => 'admin/edit/',
			'delete' => 'admin/delete/',
			'users_p' => 'admin/users', //halaman users
			'active' => 'dashboard', //menu yang memiliki class active ketika dikunjungi
			'avatar' => 'assets/uploads/avatar/', //directory avatar

			'berita' => 'admin/berita',
			'tulis_berita' => 'admin/tulis_berita',
			'edit_berita' => 'admin/edit_berita/',
			'delete_berita' => 'admin/delete_berita/'

		);


	public function __construct(){
        parent::__construct();
		$this->load->model('CrudModel', 'crud');
		if ($this->ion_auth->logged_in()){
			$this->dataq['user_info'] = $this->ion_auth->user()->row();
		}
		$this->load->library('upload');
		$this->load->library('image_lib');
		// $this->load->helper('captcha');

    }

    public function index(){

    	if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['login'], 'refresh');
		}/*elseif (!$this->ion_auth->is_admin()){ // remove this elseif if you want to enable this for non-admins
		
			// redirect them to the home page because they must be an administrator to view this
			return show_error('You must be an administrator to view this page.');
		}*/else{
			// set the flash data error message if there is one
			$this->dataq['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

			$this->load->view($this->dataq['template'], $this->dataq);
		}
    }

    public function data(){
			$this->load->view('data');

    }

    public function login(){

    	if ($this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['index'], 'refresh');
		}else{

			//validate form input
			$this->form_validation->set_rules('username', 'Username', 'required');
			$this->form_validation->set_rules('password', 'Password', 'required');

			if ($this->form_validation->run() == true){
				// check to see if the user is logging in
				// check for "remember me"
				$remember = (bool) $this->input->post('remember');

				if ($this->ion_auth->login($this->input->post('username'), $this->input->post('password'), $remember)){
					//if the login is successful
					//redirect them back to the home page
					$this->session->set_flashdata('message', $this->ion_auth->messages());

					redirect($this->dataq['index'], 'refresh');
				}else{
					// if the login was un-successful
					// redirect them back to the login page
					$this->session->set_flashdata('message', $this->ion_auth->errors());
					redirect($this->dataq['login'], 'refresh'); // use redirects instead of loading views for compatibility with MY_Controller libraries
				}
			}else{

				$this->load->view($this->dataq['login'], $this->dataq);
			}
		}

	}

	public function logout(){
		$this->dataq['title'] = "Logout";

		// log the user out
		$this->ion_auth->logout();

		// redirect them to the login page
		$this->session->set_flashdata('message', $this->ion_auth->messages());
		redirect($this->dataq['login'], 'refresh');
	}

    public function users(){

    	if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['login'], 'refresh');
		}else{

	    	$this->dataq['title'] = "Data Users";
	    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-users"></i> Home</a></li><li class="active">Users</li>';
	    	$this->dataq['headline'] = '<h1>Data Tables <small>advanced tables</small>';
	    	$this->dataq['include'] = "admin/users/users";
	    	$this->dataq['active'] = "users";
	    	$this->dataq['header'] = "admin/users/users_header";
	    	$this->dataq['footer'] = "admin/users/users_footer";

			$this->dataq['users'] = $this->ion_auth->users()->result();

			foreach ($this->dataq['users'] as $k => $user){
				$this->dataq['users'][$k]->groups = $this->ion_auth->get_users_groups($user->id)->result();
			}

			$this->load->view($this->dataq['template'], $this->dataq);
		}

		
	}

	// create a new user
	public function register(){

		if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['login'], 'refresh');
		}else{

	        $this->dataq['title'] = "Register Users";
	    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-users"></i> Home</a></li><li><a href="#"> Users</a></li><li class="active">Register</li>';
	    	$this->dataq['headline'] = '<h1>Register New User</h1>';
	    	$this->dataq['include'] = "admin/users/register";
	    	$this->dataq['active'] = "users";
	    	$this->dataq['header'] = "admin/users/register_header";
	    	$this->dataq['footer'] = "admin/users/register_footer";


	        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()){
	            redirect($this->dataq['index'], 'refresh');
	        }

	        // validate form input
	        $this->form_validation->set_rules('first_name', 'First Name', 'required');
	        $this->form_validation->set_rules('last_name', 'Last Name', 'required');
	        $this->form_validation->set_rules('username', 'Username', 'required|is_unique[users.username]', array('is_unique' => 'Username sudah digunakan!'));
	        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
	        $this->form_validation->set_rules('phone', 'Phone Number', 'trim');
	        $this->form_validation->set_rules('password', 'Password', 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
	        $this->form_validation->set_rules('password_confirm', 'Password Confirm', 'required');

	        if ($this->form_validation->run() == true){

	            $config['upload_path']          = './assets/uploads/avatar/';
		        $config['allowed_types']        = 'gif|jpg|png';
		        $config['overwrite'] = FALSE;
		        $config['remove_spaces'] = TRUE;
		        $config['file_name'] = 'avatar';

		        $this->upload->initialize($config);

	            if(!$this->upload->do_upload('foto_profil')){
	            //upload file gagal
		            $this->dataq['upload_error'] = $this->upload->display_errors();

			    	$this->load->view($this->dataq['template'], $this->dataq);
	            }else{
	            //upload file berhasil kemudian dilanjutkan insert data
	            	$path_gambar = $this->upload->upload_path.$this->upload->file_name;
		            $nama_gambar = $this->upload->file_name;

		            //reseize
		            $this->_reseize($path_gambar, 100, 125, $nama_gambar);
		            $this->_reseize($path_gambar, 250, 0, $nama_gambar);
		            $this->_reseize($path_gambar, 500, 0, $nama_gambar);

		            //insert data user
		            $username    = $this->input->post('username');
		            $email    = strtolower($this->input->post('email'));
		            $password = $this->input->post('password');

		            $additional_data = array(
		                'first_name' => $this->input->post('first_name'),
		                'last_name'  => $this->input->post('last_name'),
		                'phone'      => $this->input->post('phone'),
		                'avatar'      => $nama_gambar
		            );
		            $group = array('2');

		            if($this->ion_auth->register($username, $password, $email, $additional_data, $group)){
		            //insert data berhasil
			            $this->session->set_flashdata('notifikasi', 'User baru sukses dibuat.');

						redirect($this->dataq['users_p'], 'refresh');
		            }else{
		            //insert data gagal, kemudian hapus file yang berhasil diupload
		            	$this->_hapusAvatar($nama_gambar);
		            	$this->session->set_flashdata('register_error', 'User baru gagal dibuat.');

						redirect($this->dataq['users_p'], 'refresh');
		            }

	            }

	        }else{

	            $this->load->view($this->dataq['template'], $this->dataq);
	        }
		}

    }

    public function edit($id){

    	if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['login'], 'refresh');
		}else{

	    	$this->dataq['title'] = "Edit User";
	    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-users"></i> Home</a></li><li><a href="#"> Users</a></li><li class="active">Edit</li>';
	    	$this->dataq['headline'] = '<h1>Edit User</h1>';
	    	$this->dataq['include'] = "admin/users/edit";
	    	$this->dataq['active'] = "users";
	    	$this->dataq['header'] = "admin/users/register_header";
	    	$this->dataq['footer'] = "admin/users/register_footer";
	    	$this->dataq['user'] = $this->ion_auth->user($id)->row();


	        if (!$this->ion_auth->is_admin()){
	            redirect($this->dataq['index'], 'refresh');
	        }

	        // validate form input
	        $this->form_validation->set_rules('first_name', 'First Name', 'required');
	        $this->form_validation->set_rules('last_name', 'Last Name', 'required');
	        $this->form_validation->set_rules('phone', 'Phone Number', 'trim');
	        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
	        $this->form_validation->set_rules('password', 'Password', 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
	        $this->form_validation->set_rules('password_confirm', 'Password Confirm', 'required');

	        if ($this->form_validation->run() == true){

	            $config['upload_path']          = './assets/uploads/avatar/';
		        $config['allowed_types']        = 'gif|jpg|png';
		        $config['overwrite'] = FALSE;
		        $config['remove_spaces'] = TRUE;
		        $config['file_name'] = 'avatar';

		        $this->upload->initialize($config);

	            if(!$this->upload->do_upload('foto_profil')){
		            $data = array(
							'first_name' => $this->input->post('first_name'),
							'last_name' => $this->input->post('last_name'),
							'password' => $this->input->post('password'),
							'email' => $this->input->post('email'),
							'phone' => $this->input->post('phone')
						);
					$this->ion_auth->update($id, $data);

			    	$this->session->set_flashdata('notifikasi', 'Data user berhasil di update.');

					redirect($this->dataq['users_p'], 'refresh');
	            }else{
	            //upload file berhasil kemudian dilanjutkan edit data
	            	$path_gambar = $this->upload->upload_path.$this->upload->file_name;
		            $nama_gambar = $this->upload->file_name;

		            //hapus avatar
		            $this->_hapusAvatar($this->dataq['user']->avatar);

		            //reseize
		            $this->_reseize($path_gambar, 100, 125, $nama_gambar);
		            $this->_reseize($path_gambar, 250, 0, $nama_gambar);
		            $this->_reseize($path_gambar, 500, 0, $nama_gambar);

		            //insert data user
		            $data = array(
							'first_name' => $this->input->post('first_name'),
							'last_name' => $this->input->post('last_name'),
							'password' => $this->input->post('password'),
							'email' => $this->input->post('email'),
							'phone' => $this->input->post('phone'),
							'avatar'      => $nama_gambar
						);
					
		            $this->ion_auth->update($id, $data);

			    	$this->session->set_flashdata('notifikasi', 'Data user berhasil di update.');

					redirect($this->dataq['users_p'], 'refresh');

	            }

	        }else{
	        	
	            $this->load->view($this->dataq['template'], $this->dataq);
	        }
		}
    }

    public function delete($id){
    	if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['login'], 'refresh');
		}else{
			$result = $this->ion_auth->user($id)->row();
			$avatar = $result->avatar;
			
			$this->ion_auth->delete_user($id);

			$this->_hapusAvatar($avatar);

			$this->session->set_flashdata('notifikasi', 'Data user berhasil di hapus.');

			redirect($this->dataq['users_p'], 'refresh');
		}
    }

    public function berita(){
    	if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['login'], 'refresh');
		}else{

	    	$this->dataq['title'] = "Data Berita";
	    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-newspaper-o"></i> Home</a></li><li class="active">Berita</li>';
	    	$this->dataq['headline'] = '<h1>Data Tables <small>advanced tables</small>';
	    	$this->dataq['include'] = "admin/berita/berita";
	    	$this->dataq['active'] = "berita";
	    	$this->dataq['header'] = "admin/users/users_header";
	    	$this->dataq['footer'] = "admin/users/users_footer";

			$this->dataq['berita_result'] = $this->crud->getKontens();

			$this->load->view($this->dataq['template'], $this->dataq);
		}
    }

    public function tulis_berita(){
    	if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect($this->dataq['login'], 'refresh');
		}else{

	    	$this->dataq['title'] = "Tulis Berita";
	    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-newspaper-o"></i> Home</a></li><li><a href="#">Berita</a></li><li class="active">Tulis Berita</li>';
	    	$this->dataq['headline'] = '<h1>Form Berita</h1>';
	    	$this->dataq['include'] = "admin/berita/tulis_berita";
	    	$this->dataq['active'] = "berita";
	    	$this->dataq['header'] = "admin/berita/tulis_berita_header";
	    	$this->dataq['footer'] = "admin/berita/tulis_berita_footer";

			// validate form input
	        $this->form_validation->set_rules('judul', 'Judul', 'required');
	        $this->form_validation->set_rules('isi', 'Isi', 'required');

	        if ($this->form_validation->run() == true){


	        }else{

	            $this->load->view($this->dataq['template'], $this->dataq);
	        }
		}
    }

    public function _reseize($path, $height, $width, $nama_ori){
        $config['image_library'] = 'gd2';
        $config['source_image'] = $path;
        $config['new_image'] = './assets/uploads/avatar/'.$height.'_'.$nama_ori;
        $config['overwrite'] = TRUE;
        $config['create_thumb'] = false;
        if($width>0){
        	$config['maintain_ratio'] = false;
            $config['width'] = $width;
        }else{
        	$config['maintain_ratio'] = true;
        }
        $config['height'] = $height;

        $this->image_lib->initialize($config);

        $this->image_lib->resize();
        $this->image_lib->clear();
    }

    public function _hapusAvatar($namaFile){
    	unlink('assets/uploads/avatar/'.$namaFile);
		unlink('assets/uploads/avatar/100_'.$namaFile);
		unlink('assets/uploads/avatar/250_'.$namaFile);
		unlink('assets/uploads/avatar/500_'.$namaFile);
    }

    

}