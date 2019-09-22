<?php
	class Cari_produk extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->model('Produk_model');
		}
		public function search(){
			$data['data_kategori'] =$this->Produk_model->kategori();
			$keyword = $this->input->post('search');
			$data['data_kategori'] =$this->Produk_model->kategori();
			$data['cari_produk']=$this->Produk_model->cari_data_produk($keyword);
			$this->load->view('roma/header',$data);
			$this->load->view('roma/pencarian_produk',$data);
			$this->load->view('roma/footer');
		}
	}