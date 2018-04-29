<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Home{

	public function __construct(){
        parent::__construct();
        $this->load->model('HomeModel', 'home');

    }

    public function index(){
    	$this->dataq['title'] = "Home";
    	$this->dataq['include'] = "homepage/homepage";
    	$this->dataq['header'] = "";
    	$this->dataq['footer'] = "";

        $this->dataq['grid'] = $this->home->getKontensGrid();
        $this->dataq['Knews'] = $this->home->getKontensByKategori('news', 4);
        $this->dataq['Knews1'] = $this->home->getKontensByKategori('news', 1);
        $this->dataq['Ksport'] = $this->home->getKontensByKategori('sport', 4);
        $this->dataq['Ksport1'] = $this->home->getKontensByKategori('sport', 1);
        $this->dataq['Khealth'] = $this->home->getKontensByKategori('health', 4);
    	$this->dataq['Khealth1'] = $this->home->getKontensByKategori('health', 1);

        $this->load->view($this->dataq['template'], $this->dataq);
    }

    public function post($slug){
        $this->dataq['title'] = "Post";
        $this->dataq['include'] = "homepage/single/post";
        $this->dataq['header'] = "";
        $this->dataq['footer'] = "";

        $this->dataq['konten'] = $this->home->getKonten($slug);
       
        $this->load->view($this->dataq['template'], $this->dataq);
    }

    public function kategori($kategori){
        $this->dataq['title'] = $kategori;
        $this->dataq['include'] = "homepage/kategori/view_by_kategori";
        $this->dataq['header'] = "";
        $this->dataq['footer'] = "";
        
        $this->dataq['carousel'] = $this->home->getKontensByKategori($kategori, 7);
        $this->dataq['highlight'] = $this->home->getKontensByKategori($kategori, 9);
        // $this->dataq['highlight2'] = $this->home->getKontensByKategori($kategori, 8, 8);

        //$this->home->getKontensByKategori($kategori, $limit=null);
        
        $this->load->view($this->dataq['template'], $this->dataq);
    }

    public function indeks_berita($kategori=null){
        $this->dataq['title'] = "Indeks";
        $this->dataq['include'] = "homepage/indeks_berita";


        $this->dataq['kategori'] = $this->home->getCategories();

        $this->form_validation->set_rules('sortdate', 'Tgl Publish', 'required');
        if($this->form_validation->run()){
            $sortdate = $this->input->post('sortdate');
            $this->dataq['konten'] = $this->home->getKontensByDate($sortdate, $kategori);
            // redirect($this->dataq['indeks_berita_page'], 'refresh');
            $this->load->view($this->dataq['template'], $this->dataq);
        }else{
        if($kategori==null){
            $this->dataq['konten'] = $this->home->getKontens();
        }else{
            $this->dataq['konten'] = $this->home->getKontensByKategori($kategori);
        }   
            $this->load->view($this->dataq['template'], $this->dataq);
        }
    }
}