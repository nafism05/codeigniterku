<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tes extends MY_Admin{
	public function __construct(){
        parent::__construct();
        $this->load->model('BeritaModel', 'news');

    }

    public function index(){
       $result = $this->news->getKonten(8);

        foreach ($result as $row){
            $this->dataq['berita_result']['judul'] = $row->judul;
            $this->dataq['berita_result']['isi'] = $row->isi;
        }

        $i = 0;
        foreach ($result as $row){
            $this->dataq['berita_result']['kategori'][$i] = $row->kategori;
            $i++;
        }

        echo $this->dataq['berita_result']['kategori'][0];
        echo $this->dataq['berita_result']['kategori'][1];
    }

    public function insertloop(){
    	$this->dataq['title'] = "Tulis Berita";
    	$this->dataq['breadcrumb'] = '<li><a href="#"><i class="fa fa-newspaper-o"></i> Home</a></li><li><a href="#">Berita</a></li><li class="active">Tulis Berita</li>';
    	$this->dataq['headline'] = '<h1>Form Berita</h1>';
    	$this->dataq['include'] = "admin/berita/tulis_berita";
    	$this->dataq['active'] = "berita";
    	$this->dataq['header'] = "admin/berita/tulis_berita_header";
    	$this->dataq['footer'] = "admin/berita/tulis_berita_footer";
    	//categories :
    	$this->dataq['cat_result'] = $this->news->getCategories();
        $this->dataq['unggah_error'] = '';

        // validate form input
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');
        $this->form_validation->set_rules('published_at', 'Tgl Publish', 'required');

        //validasi kategori
        if($this->input->post('kategori')!=null){
            $this->dataq['post_kategori'] = $this->input->post('kategori');
        }else{
            $this->dataq['post_kategori'] = '';
            $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        }


        if ($this->form_validation->run()){
            $upload_path = './assets/uploads/post/thumbnail/';
            $nama_field = 'thumbnail';
            $nama_baru = 'thumbnail';

            $data = array(
                'judul' => $this->input->post('judul'),
                'isi' => $this->input->post('isi'),
               // 'published_at' => $this->input->post('published_at'),
                'kategori' => $this->input->post('kategori')
            );

            $jam = 5;
            $jam1 = 0;
            for($i=0; $i<5; $i++){
            	if($jam==10){
            		$jam1++;
            		$jam = 0;
            	}
            	
	            $unggah = $this->doUpload($upload_path, $nama_field, $nama_baru);

	            if($unggah['status']){
	                $source = $unggah['source'];
	                $nama_gambar = $unggah['nama_gambar'];

	                $this->reseize($upload_path, $source, 595, 397, $nama_gambar);
	                $this->reseize($upload_path, $source, 200, 130, $nama_gambar);

                    $data['judul'] = $data['judul'].' '.$i;
                    $data['slug'] = url_title($data['judul'],'-',true);
	            	$data['thumbnail'] = $nama_gambar;
                    $data['published_at'] = '2016-11-11';
                    $data['created'] = '2016-11-11 '.$jam1.$jam.':40:00';
	            	$data['modified'] = '2016-11-11 '.$jam1.$jam.':40:00';

	                $this->news->insertKonten($data);

	                $jam++;

	            }
            }




        }else{

            $this->load->view($this->dataq['template'], $this->dataq);
        }

    }
}