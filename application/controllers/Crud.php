<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Crud extends CI_Controller {

	public $dataGlobal = array(
			'error' => '',
			'judul' => '',
			'isi' => ''
		);

	public $data = array(
			'error' => '',
			'judul' => '',
			'isi' => ''
		);

	public function __construct(){
        parent::__construct();
		$this->load->model('CrudModel', 'crud');
		$this->load->library('upload');
		$this->load->library('image_lib');
		$this->load->helper('captcha');

		$params = array('orientation' => 'L', 'unit' => 'cm', 'size' => 'A4');
		$this->load->library('fpdf', $params);

		
    }

    public function adminlte(){
    	$this->load->view('adminlte/admin_template');
    }

    public function cacak_list_user(){
    	$this->data['users'] = $this->ion_auth->users()->result();

		foreach ($this->data['users'] as $k => $user){
			$this->data['users'][$k]->groups = $this->ion_auth->get_users_groups($user->id)->result();
		}

		foreach ($this->data['users'] as $user){
			// if($this->ion_auth->get_users_groups($user->id)->result()!=1){
			if(!$this->ion_auth->is_admin($user->id)){

			}
				echo $user->first_name;
		}
    }

    public function cacak_captcha(){
    	$vals = array(
                'img_path'	 => './captcha/',
                'img_url'	 => base_url().'captcha/',
                'img_width'	 => '300',
                'img_height' => 60,
                'border' => 0, 
                'font_size'     => 50,
                'expiration' => 20
                // 'expiration' => 7200
            );
 
        // create captcha image
        $cap = create_captcha($vals);

        // store image html code in a variable
        $data['image'] = $cap['image'];

        // store the captcha word in a session
        $this->session->set_userdata('mycaptcha', $cap['word']);

        // $this->load->view('registrasi_view.php', $data);
        echo $data['image'];
    }

    function downloadfpdf() { 
    	define('FPDF_FONTPATH',$this->config->item('fonts_path'));
          $nama = "indah";
         // $this->load->view('laporanpdf',$nama);
         // $this->fpdf->FPDF("L","cm","A4");
		   // kita set marginnya dimulai dari kiri, atas, kanan. jika tidak diset, defaultnya 1 cm  
		   $this->fpdf->SetMargins(1,1,1);
		    //AliasNbPages() merupakan fungsi untuk menampilkan total halaman
		   //di footer, nanti kita akan membuat page number dengan format : number page / total page
		   
		   $this->fpdf->AliasNbPages();
		   // AddPage merupakan fungsi untuk membuat halaman baru
		  $this->fpdf->AddPage();
		  // Setting Font : String Family, String Style, Font size
		  $this->fpdf->SetFont('Times','B',12);
		  $this->fpdf->Cell(30,0.7,'Laporan Produk '.$nama.'  Jasa Jawa Barat',0,'C','C');
		  $this->fpdf->Ln();
		 $this->fpdf->Cell(30,0.7,'Periode Bulan Agustus',0,'C','C');
		 $this->fpdf->Line(1,3.5,30,3.5);
		 $this->fpdf->Output("laporan.pdf","I"); 
    }

    public function cacakdompdf(){
		
    	$data['group_name'] = array(
				'name'  => 'group_name',
				'id'    => 'group_name',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('group_name'),
			);
			$data['description'] = array(
				'name'  => 'description',
				'id'    => 'description',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('description'),
			);

		  $this->load->library('pdf');
		  $this->pdf->load_view('admin/berita/laporan', $data);
		  $this->pdf->render();
		  $this->pdf->stream("laporan.pdf");
	}

	public function cacak2(){
		$this->load->view('admin/berita/laporan');
	}

	public function index(){

		
		$this->read();
			
	}




	public function login(){

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
				redirect('read', 'refresh');
			}else{
				// if the login was un-successful
				// redirect them back to the login page
				$this->session->set_flashdata('message', $this->ion_auth->errors());
				redirect('login', 'refresh'); // use redirects instead of loading views for compatibility with MY_Controller libraries
			}
		}else{
			// the user is not logging in so display the login page
			// set the flash data error message if there is one
			$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

			$this->data['username'] = array(
				'name' => 'username',
				'id'    => 'username',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('username'),
			);
			$this->data['password'] = array(
				'name' => 'password',
				'id'   => 'password',
				'type' => 'password',
			);

			$this->load->view('login_view', $this->data);
		}
	}




	public function logout(){
		$this->data['title'] = "Logout";

		// log the user out
		$logout = $this->ion_auth->logout();

		// redirect them to the login page
		$this->session->set_flashdata('message', $this->ion_auth->messages());
		redirect('crud/login', 'refresh');
	}



	public function formAksi(){ //create dan read
		if($this->input->post('submit')){
			$this->formAksiProses();		 
		}else{
			echo 'hayo ngapain';
		}
	}

	public function insertForm(){
		$this->dataGlobal['include'] = 'form_view';
		$this->dataGlobal['title'] = 'Tambah Artikel';
		$this->dataGlobal['headline'] = 'Tambah Artikel';
		$this->load->view('template', $this->dataGlobal);
		$this->dataGlobal = array(
				'error' => '',
				'judul' => '',
				'isi' => ''
			);
	}



	public function read(){

		if (!$this->ion_auth->logged_in()){
			// redirect them to the login page
			redirect('login', 'refresh');
		}/*elseif (!$this->ion_auth->is_admin()){ // remove this elseif if you want to enable this for non-admins
		
			// redirect them to the home page because they must be an administrator to view this
			return show_error('You must be an administrator to view this page.');
		}*/else{
			// set the flash data error message if there is one
			$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

			$data['result'] = $this->crud->getKontens();
			$data['include'] = 'read_view';
			$data['headline'] = 'Halaman Artikel';
			$data['title'] = 'Halaman Artikel';

			$this->load->view('template', $data);
		}
	}




	public function editForm($konten_id){
		$result = $this->crud->getKonten($konten_id);
		$data = array(
				'error' => '',
				'konten_id' => $result->konten_id,
				'judul' => $result->judul,
				'gambar' => $result->gambar,
				'isi' => $result->isi,
				'title' => 'Edit Konten',
				'include' => 'editForm',
				'headline' => 'Edit Konten'
			);

		// echo $result->konten_id;

		$this->load->view('template', $data);
	}



	public function delete($konten_id){
		$result = $this->crud->getKonten($konten_id);
		$data['gambar'] = $result->gambar;
		
		$this->crud->deleteKonten($konten_id);

		$this->hapusGambar($data['gambar']);

		redirect('crud', 'refresh');
	}

	// create a new group
	public function buat_group(){
		//$this->data['title'] = $this->lang->line('create_group_title');

		if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()){
			redirect('/', 'refresh');
		}

		// validate form input
		$this->form_validation->set_rules('group_name', 'Nama Grup', 'required|alpha_dash');

		if ($this->form_validation->run() == TRUE){
			$new_group_id = $this->ion_auth->create_group($this->input->post('group_name'), $this->input->post('description'));
			if($new_group_id){
				// check to see if we are creating the group
				// redirect them back to the admin page
				$this->session->set_flashdata('message', $this->ion_auth->messages());
				redirect("crud", 'refresh');
			}
		}else{
			// display the create group form
			// set the flash data error message if there is one
			$this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));

			$data['group_name'] = array(
				'name'  => 'group_name',
				'id'    => 'group_name',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('group_name'),
			);
			$data['description'] = array(
				'name'  => 'description',
				'id'    => 'description',
				'type'  => 'text',
				'value' => $this->form_validation->set_value('description'),
			);

			$this->load->view('buat_group', $data);
		}
	}



	// create a new user
	public function buat_user(){
        //$this->data['title'] = $this->lang->line('create_user_heading');

        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin()){
            redirect('crud', 'refresh');
        }

        $tables = $this->config->item('tables','ion_auth');
        $identity_column = $this->config->item('identity','ion_auth');
        $this->data['identity_column'] = $identity_column;

        // validate form input
        $this->form_validation->set_rules('first_name', $this->lang->line('create_user_validation_fname_label'), 'required');
        $this->form_validation->set_rules('last_name', $this->lang->line('create_user_validation_lname_label'), 'required');
        if($identity_column!=='email'){
            $this->form_validation->set_rules('identity',$this->lang->line('create_user_validation_identity_label'),'required|is_unique['.$tables['users'].'.'.$identity_column.']');
            $this->form_validation->set_rules('email', $this->lang->line('create_user_validation_email_label'), 'required|valid_email');
        }
        else
        {
            $this->form_validation->set_rules('email', $this->lang->line('create_user_validation_email_label'), 'required|valid_email|is_unique[' . $tables['users'] . '.email]');
        }
        $this->form_validation->set_rules('phone', $this->lang->line('create_user_validation_phone_label'), 'trim');
        $this->form_validation->set_rules('company', $this->lang->line('create_user_validation_company_label'), 'trim');
        $this->form_validation->set_rules('password', $this->lang->line('create_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
        $this->form_validation->set_rules('password_confirm', $this->lang->line('create_user_validation_password_confirm_label'), 'required');

        if ($this->form_validation->run() == true)
        {
            $email    = strtolower($this->input->post('email'));
            $identity = ($identity_column==='email') ? $email : $this->input->post('identity');
            $password = $this->input->post('password');

            $additional_data = array(
                'first_name' => $this->input->post('first_name'),
                'last_name'  => $this->input->post('last_name'),
                'company'    => $this->input->post('company'),
                'phone'      => $this->input->post('phone'),
            );
        }
        if ($this->form_validation->run() == true && $this->ion_auth->register($identity, $password, $email, $additional_data))
        {
            // check to see if we are creating the user
            // redirect them back to the admin page
            $this->session->set_flashdata('message', $this->ion_auth->messages());
            redirect("auth", 'refresh');
        }
        else
        {
            // display the create user form
            // set the flash data error message if there is one
            $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));

            $this->data['first_name'] = array(
                'name'  => 'first_name',
                'id'    => 'first_name',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('first_name'),
            );
            $this->data['last_name'] = array(
                'name'  => 'last_name',
                'id'    => 'last_name',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('last_name'),
            );
            $this->data['identity'] = array(
                'name'  => 'identity',
                'id'    => 'identity',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('identity'),
            );
            $this->data['email'] = array(
                'name'  => 'email',
                'id'    => 'email',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('email'),
            );
            $this->data['company'] = array(
                'name'  => 'company',
                'id'    => 'company',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('company'),
            );
            $this->data['phone'] = array(
                'name'  => 'phone',
                'id'    => 'phone',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('phone'),
            );
            $this->data['password'] = array(
                'name'  => 'password',
                'id'    => 'password',
                'type'  => 'password',
                'value' => $this->form_validation->set_value('password'),
            );
            $this->data['password_confirm'] = array(
                'name'  => 'password_confirm',
                'id'    => 'password_confirm',
                'type'  => 'password',
                'value' => $this->form_validation->set_value('password_confirm'),
            );

            $this->_render_page('auth/create_user', $this->data);
        }
    }








    public function formAksiProses(){ //keterangan: edit apa insert?
        $config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['overwrite'] = FALSE;
        $config['remove_spaces'] = TRUE;
        $config['file_name'] = 'gambar';

        $this->upload->initialize($config);

        if ( ! $this->upload->do_upload('gambar')){
        	//jika upload gagal :

        	if($this->input->post('keterangan')=='insert'){ //isert baru, bukan update

		    	$this->dataGlobal = array(
						'error' => $this->upload->display_errors(),
						'judul' => $this->input->post('judul'),
						'isi' => $this->input->post('isi')
					);

		    	$this->insertForm();

        	}else if($this->input->post('keterangan')=='edit'){ //update atau edit data
        		//edit data artikel
	            $data = array(
			        'konten_id' => $this->input->post('konten_id'),
			        'judul' => $this->input->post('judul'),
			        'isi' => $this->input->post('isi')
				);
			
				$this->crud->editKonten($data);
				//edit data artikel end

				//this load view sukses page
				redirect('crud', 'refresh');
        	}

        }else{

        //jika upload berhasil :
        	
        	$path_gambar = $this->upload->upload_path.$this->upload->file_name;
            $nama_gambar = $this->upload->file_name;

            //reseize
            $this->reseize($path_gambar, 100, 125, $nama_gambar);
            $this->reseize($path_gambar, 250, 0, $nama_gambar);
            $this->reseize($path_gambar, 500, 0, $nama_gambar);
            //reseize end

			if($this->input->post('keterangan')=='insert'){ //isert baru, bukan update

		    	//insert data artikel
	            $data = array(
			        'judul' => $this->input->post('judul'),
			        'isi' => $this->input->post('isi'),
			        'gambar' => $this->upload->file_name
				);
			
				$this->crud->insertKonten($data);

				redirect('crud', 'refresh');

				//insert data artikel end
        	}else if($this->input->post('keterangan')=='edit'){ //update atau edit data
        		//edit data artikel
	            $data = array(
			        'konten_id' => $this->input->post('konten_id'),
			        'judul' => $this->input->post('judul'),
			        'isi' => $this->input->post('isi'),
			        'gambar' => $this->upload->file_name,
			        'gambar_lawas' => $this->input->post('gambar')
				);
			
				$this->crud->editKonten($data);
				//edit data artikel end

				//this load view sukses page
				//bar iku hapus gambar seng lawas nganggo unlink
				$this->hapusGambar($data['gambar_lawas']);
        	}

			//notifikasi insert data dan upload berhasil
            $data = array('upload_data' => $this->upload->data());

            $this->load->view('coba/upload_success', $data);
            
        }

    }

    public function reseize($path, $height, $width, $nama_ori){
        $config['image_library'] = 'gd2';
        $config['source_image'] = $path;
        $config['new_image'] = './uploads/thumbs/'.$height.'_'.$nama_ori;
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

    public function hapusGambar($namaFile){
    	unlink('uploads/'.$namaFile);
		unlink('uploads/thumbs/100_'.$namaFile);
		unlink('uploads/thumbs/250_'.$namaFile);
		unlink('uploads/thumbs/500_'.$namaFile);
    }

}
	/*public function update(){
		if($this->input->post('submit')){
			$this->do_upload2();		 
		}else{
			echo 'hayo ngapain';
		}
	}*/
	//form aksi tambah artikel dengan upload gambar
	/*public function do_upload(){
        $config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['overwrite'] = FALSE;
        $config['remove_spaces'] = TRUE;
        $config['file_name'] = 'gambar';

        $this->upload->initialize($config);

        if ( ! $this->upload->do_upload('gambar')){
        //jika upload gagal :
        	$this->dataGlobal = array(
					'error' => $this->upload->display_errors(),
					'judul' => $this->input->post('judul'),
					'isi' => $this->input->post('isi')
				);

        	$this->insertForm();
        }else{

        //jika upload berhasil :
        	
            $path_gambar = $this->upload->upload_path.$this->upload->file_name;
            $nama_gambar = $this->upload->file_name;

            //reseize
            $this->reseize($path_gambar, 100, 125, $nama_gambar);
            $this->reseize($path_gambar, 250, 0, $nama_gambar);
            $this->reseize($path_gambar, 500, 0, $nama_gambar);
            //reseize end

            //insert data artikel
            $data = array(
		        'judul' => $this->input->post('judul'),
		        'isi' => $this->input->post('isi'),
		        'gambar' => $this->upload->file_name
			);
		
			$this->crud->insertKonten($data);
			//insert data artikel end

			//notifikasi insert data dan upload berhasil
            $data = array('upload_data' => $this->upload->data());

            $this->load->view('coba/upload_success', $data);
        }

    }*/