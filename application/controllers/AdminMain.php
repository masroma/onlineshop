<?php
	class AdminMain extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->library('session');
			$this->load->model('Admin_model');
		}

		public function index(){
			$data['content_page']="Admin/home_content_admin";
			$data["produk"]=$this->Admin_model->produk();
			$this->load->view("Admin/index",$data);
		}
		public function hapus($id){
			$data['content_page']="Admin/home_content_admin";
			$data["produk"]=$this->Admin_model->delete($id);
			$this->load->view("Admin/index",$data);
			redirect('AdminMain');
		}
		public function addproduk(){
			$data["cetakbrand"]=$this->Admin_model->ambilbrand();
			$data['content_page']="Admin/Tambah_produk";
			$this->load->view("Admin/index",$data);
		}
		public function simpan_produk(){
			$config['upload_path']		= './asset/images';
			$config['allowed_types']	= 'gif|jpg|png';
			$config['max_size']			= 40000;


			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			$this->upload->do_upload("tshirt_image");
			$data = $this->upload->data();

			$gambar = $data['file_name'];

			$data_produk = array('tshirt_name' 		    =>$this->input->post('tshirt_name'),
								 'sluga'        		=>$this->input->post('sluga'),
								 'tshirt_price' 		=>$this->input->post('tshirt_price'),
								 'harga_coret'  		=>$this->input->post('harga_coret'),
								 'product_description'  =>$this->input->post('product_description'),
								 'create_date'          =>date('Y-m-d'),
								 'tshirt_image'         =>$gambar,
								 'brand_id'             =>$this->input->post('brand_id'));

			$dimpan_data   = $this->Admin_model->simpan_data_produk($data_produk);
			$data["content_page"]="Admin/home_content_admin";
			$this->load->view("Admin/index",$data);
			redirect("AdminMain");
		}
		public function adietprodukk($id){
			$data["cetakbrand"]=$this->Admin_model->ambilbrand();
			$data['content_page']="Admin/ubah_dataproduk";
			$data['data_porduk'] = $this->Admin_model->edit_produk($id);
			$this->load->view("Admin/index",$data);
		}
		public function ubah_dataporduk($id){
			$config['upload_path']		= './asset/images';
			$config['allowed_types']	= 'gif|jpg|png';
			$config['max_size']			= 40000;
			$gambar=$this->input->post('gambar_old');


			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			$this->upload->do_upload("tshirt_image");
			$data = $this->upload->data();

			if ($this->upload->do_upload("tshirt_image")){
			$gambar = $data['file_name'];
			}
			$data_produk = array('tshirt_name' 		    =>$this->input->post('tshirt_name'),
								 'sluga'        		=>$this->input->post('sluga'),
								 'tshirt_price' 		=>$this->input->post('tshirt_price'),
								 'harga_coret'  		=>$this->input->post('harga_coret'),
								 'product_description'  =>$this->input->post('product_description'),
								 'create_date'          =>date('Y-m-d'),
								 'tshirt_image'         =>$gambar,
								 'brand_id'             =>$this->input->post('brand_id'));

			$dimpan_data   = $this->Admin_model->ubah_data_produk($data_produk,$id);
			$data["content_page"]="Admin/home_content_admin";
			$this->load->view("Admin/index",$data);
			redirect("AdminMain");
		}
	}