<?php 
	class Chekout extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->model('Usermodel');
			$this->load->model('Produk_model');
			
		}

		public function checkoutfunction(){
			$data['data_kategori'] =$this->Produk_model->kategori();
			if(!$this->session->has_userdata('customer_username')){
				redirect(base_url() . "Home",$data);
			}else {
			$data["get_data_kunsumen"]=$this->Usermodel->get_session_login($this->session->userdata('customer_username'));
			$this->load->view('roma/header',$data);

			$this->load->view('roma/checkout_view',$data);
			$this->load->view('roma/footer');
		}

		}
		public function get_provinsi(){
			$provinces		= $this->rajaongkir->province();
			$this->output->set_content_type('application/json')->set_output($provinces);
		}
		public function get_kota($id_provinsi){
			$kota 			= $this->rajaongkir->city($id_provinsi);
			$this->output->set_content_type('application/json')->set_output($kota);
		}
		public function get_ongkir($asal,$tujuan,$berat,$kurir){
			$ongkir 		= $this->rajaongkir->cost($asal,$tujuan,$berat,$kurir);
			$this->output->set_content_type('application/json')->set_output($ongkir);
		}
		public function simpan_pesanan(){
			$data['data_kategori'] =$this->Produk_model->kategori();
			$session	= $this->session->userdata("customer_username");
			$provinsi = $this->input->get('provinsi', TRUE);
			$kota = $this->input->get('kota', TRUE);
			$kurir = $this->input->get('kurir', TRUE);
			$service = $this->input->get('service', TRUE);
			$total= $this->input->get('total', TRUE);
			$kodepos= $this->input->get('kodepos', TRUE);
			$alamat= $this->input->get('alamat', TRUE);

			// print_r($provinsi);
			// exit;
			$tgl_pesan = date("Y-m-d");
			$bts = date("Y-m-d", mktime(0,0,0, date("m"), date("d") + 3, date("Y")));
			$data_order = array('customer_username' => $session,
								'total' => $total,
								'kota' =>  $kota,
								'kurir' => $kurir,
								'service' => $service,
								'tgl_pesan' => $tgl_pesan,
								'kodepos' => $kodepos,
								'alamat' => $alamat,
								'bts_bayar' => $bts,
								'status'  => 'belum'
							);
			$id_order   = $this->Usermodel->simpan_data_pesanan($data_order);

			if ($cart   = $this->cart->contents())
			{
				foreach($cart as $item)
				{
					$data_detail	= array('pesanan_id' =>$id_order,
											'id'     => $item['id'],
											'qty'        => $item['qty'],
											'total_harga'=> $item['price']);

					$simpan         = $this->Usermodel->simpan_detail_pesanan($data_detail);
				}
			}

			$this->cart->destroy();

			$this->load->view('body/navbar');
			$this->load->view('data_keranjang/data_orderberhasil');
			$this->load->view('body/footer');
			$this->cart->destroy();
			redirect('Chekout/selesaikan_pembayaran');
		}

		public function selesaikan_pembayaran(){
			$data['data_kategori'] =$this->Produk_model->kategori();
			$data["data_pembayaran"] = $this->Usermodel->seselesaikanbelanja($this->session->userdata('customer_username'));
			$this->load->view('roma/header',$data);
			$this->load->view('roma/data_orderberhasil',$data);
			$this->load->view('roma/footer');
			$this->cart->destroy();
		}

		public function cetak_invoice(){
			$data['data_kategori'] =$this->Produk_model->kategori();
			$data["data_pembayaran"] = $this->Usermodel->seselesaikanbelanja($this->session->userdata('customer_username'));
			$this->load->view('data_keranjang/cetak_invoice',$data);
		}

		public function upload_bukti_pebayaran(){
			$data['data_kategori'] =$this->Produk_model->kategori();
			if(!$this->session->has_userdata('customer_username')){
				redirect(base_url() . "Home",$data);
			}else {
			$data["get_data_kosumen"]=$this->Usermodel->get_session_login($this->session->userdata('customer_username'));
			$this->load->view('roma/header',$data);
			$this->load->view('roma/upload_bukti_pembayaran',$data);
			$this->load->view('roma/footer');
			}
		}

		public function Simpanbayar(){
			$data['data_kategori'] =$this->Produk_model->kategori();
			$config['upload_path']			= './asset/images';
			$config['allowed_types']		= 'gif|jpg|png';
			$config['max_size']				= '40000';


			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			$this->upload->do_upload("input_gambar");
			$data = $this->upload->data();

			$gambar = $data['file_name'];


			if ($simpan =$this->input->post('submit')){

				if($this->Usermodel->validation_pembayaran("save_pembayaran")){
					$this->Usermodel->save_pembayaran($gambar);
					redirect('Home');
				}
			}


		}
	}
		