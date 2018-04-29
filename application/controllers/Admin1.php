<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Admin extends MY_Controller {

	public function __construct(){
        parent::__construct();
		$this->load->model('CrudModel', 'crud');
		$this->load->model('PostModel', 'post');
		
		$this->load->library('upload');
		$this->load->library('image_lib');
		// $this->load->helper('captcha');

		
    }

    public function index(){
		$this->load->view($this->dataq['template'], $this->dataq);
    }


    public function users(){
    	$this->dataq['title'] = "Data Users";
    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-users"></i> Home</a></li><li class="active">Users</li>';
    	$this->dataq['headline'] = '<h1>Data Tables <small>advanced tables</small>';
    	$this->dataq['include'] = "admin/users/users";
    	$this->dataq['active'] = "users";
    	$this->dataq['header'] = "admin/dashboard/dashboard_header";
    	$this->dataq['footer'] = "admin/dashboard/dashboard_footer";

		$this->dataq['users'] = $this->ion_auth->users()->result();

		foreach ($this->dataq['users'] as $k => $user){
			$this->dataq['users'][$k]->groups = $this->ion_auth->get_users_groups($user->id)->result();
		}

		$this->load->view($this->dataq['template'], $this->dataq);

		
	}

	// create a new user
	public function register(){

        $this->dataq['title'] = "Register Users";
    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-users"></i> Home</a></li><li><a href="#"> Users</a></li><li class="active">Register</li>';
    	$this->dataq['headline'] = '<h1>Register New User</h1>';
    	$this->dataq['include'] = "admin/users/register";
    	$this->dataq['active'] = "users";
    	$this->dataq['header'] = "admin/users/register_header";
    	$this->dataq['footer'] = "admin/users/register_footer";


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

    public function edit($id){

    	$this->dataq['title'] = "Edit User";
    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-users"></i> Home</a></li><li><a href="#"> Users</a></li><li class="active">Edit</li>';
    	$this->dataq['headline'] = '<h1>Edit User</h1>';
    	$this->dataq['include'] = "admin/users/edit";
    	$this->dataq['active'] = "users";
    	$this->dataq['header'] = "admin/users/register_header";
    	$this->dataq['footer'] = "admin/users/register_footer";
    	$this->dataq['user'] = $this->ion_auth->user($id)->row();


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

    public function delete($id){
    	
		$result = $this->ion_auth->user($id)->row();
		$avatar = $result->avatar;
		
		$this->ion_auth->delete_user($id);

		$this->_hapusAvatar($avatar);

		$this->session->set_flashdata('notifikasi', 'Data user berhasil di hapus.');

		redirect($this->dataq['users_p'], 'refresh');
	
    }

    /*public function berita(){
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
    	$this->dataq['title'] = "Tulis Berita";
    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-newspaper-o"></i> Home</a></li><li><a href="#">Berita</a></li><li class="active">Tulis Berita</li>';
    	$this->dataq['headline'] = '<h1>Form Berita</h1>';
    	$this->dataq['include'] = "admin/berita/tulis_berita";
    	$this->dataq['active'] = "berita";
    	$this->dataq['header'] = "admin/berita/tulis_berita_header";
    	$this->dataq['footer'] = "admin/berita/tulis_berita_footer";
    	//categories :
    	$this->dataq['cat_result'] = $this->post->getCategories();

		// validate form input
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');
        $this->form_validation->set_rules('published_at', 'Tgl Publish', 'required');

        //validasi kategori
        $post_kategori = $this->input->post('kategori[]');
		if(isset($post_kategori)){
			$this->dataq['post_kategori'] = $post_kategori;
		}else{
			$this->dataq['post_kategori'] = array();
			$this->form_validation->set_rules('kategori', 'Kategori', 'required');
		}


        if ($this->form_validation->run()){
			$upload_path = './assets/uploads/post/thumbnail/';
	    	$nama_field = 'thumbnail';
	    	$nama_baru = 'thumbnail';

	    	$unggah = $this->doUpload($upload_path, $nama_field, $nama_baru);

	    	if($unggah['status']){
	    		$source = $unggah['source'];
	    		$nama_gambar = $unggah['nama_gambar'];

	    		$this->reseize($upload_path, $source, 100, 100, $nama_gambar);

	        	$data = array(
			        'judul' => $this->input->post('judul'),
			        'isi' => $this->input->post('isi'),
			        'published_at' => $this->input->post('published_at'),
			        'kategori' => $this->input->post('kategori'),
			        'thumbnail' => $nama_gambar
				);
			
				$this->post->insertKonten($data);

				$this->session->set_flashdata('notifikasi', 'Berita berhasil di buat.');
	    	}else{
				$this->session->set_flashdata('register_error', 'Berita berhasil di buat.');
	    	}


			redirect($this->dataq['berita'], 'refresh');

        }else{

            $this->load->view($this->dataq['template'], $this->dataq);
        }
		
    }


    public function edit_berita($id){
    	
    	$this->dataq['title'] = "Edit Berita";
    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-newspaper-o"></i> Home</a></li><li><a href="#">Berita</a></li><li class="active">Edit Berita</li>';
    	$this->dataq['headline'] = '<h1>Form Berita</h1>';
    	$this->dataq['include'] = "admin/berita/edit_berita";
    	$this->dataq['active'] = "berita";
    	$this->dataq['header'] = "admin/berita/tulis_berita_header";
    	$this->dataq['footer'] = "admin/berita/tulis_berita_footer";

		// validate form input
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');

        $this->dataq['berita_result'] = $this->crud->getKonten($id);

        if ($this->form_validation->run() == true){
        	$data = array(
		        'konten_id' => $id,
		        'judul' => $this->input->post('judul'),
		        'isi' => $this->input->post('isi')
			);
		
			$this->crud->editKonten($data);

			$this->session->set_flashdata('notifikasi', 'Berita berhasil di edit.');

			redirect($this->dataq['berita'], 'refresh');

        }else{

            $this->load->view($this->dataq['template'], $this->dataq);
        }
		
    }*/

    public function cacakAjax(){
    	$this->load->view('cacakAjax');
    }

    public function myfile(){
    	$this->load->view($this->dataq['template'], $this->dataq);
    }

    public function disqus(){
    	$this->load->view('admin/disqus');

    }

    public function ciblog(){
    	echo $this->tes;

    }

    public function cacakupload(){
    	$this->load->view('cacakupload');

    }

    public function formcacak(){
    	$pos = $this->input->post('kategori');
    	if(isset($pos)){
    		echo $pos[0];
    	}else{
    		echo 'harus diisi';
    	}
    }

    public function ujiUpload(){

    	$upload_path = './assets/uploads/post/thumbnail/';
    	$nama_field = 'thumbnail';
    	$nama_baru = 'thumbnail';

    	$unggah = $this->_doUpload($upload_path, $nama_field, $nama_baru);

    	if($unggah['status']){
    		$source = $unggah['source'];
    		$nama_gambar = $unggah['nama_gambar'];

    		$this->_reseize($upload_path, $source, 100, 100, $nama_gambar);
    		echo 'berhasil';
    	}else{
    		echo 'gagal';
    	}
    }

}