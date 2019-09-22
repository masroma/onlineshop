<?php 
	class Usermodel extends CI_Model
	{
		public function __construct(){
			parent::__construct();
			$this->load->database();
		}

		public function ambilprovinsi(){
			return $this->db->get('propinsi')->result_array();
		}
		public function simpandatauser(){
			$data = array(
					'customer_name'    => $this->input->post('customer_name', true),
					'customer_email'   => $this->input->post('customer_email', true),
					'customer_phone'   => $this->input->post('customer_phone', true),
					'customer_address' => $this->input->post('customer_address', true),
					'provinsi'        => $this->input->post('input_provinsi', true),
					'customer_username'=> $this->input->post('customer_username', true),
					'customer_password'=> $this->input->post('customer_password', true),
					'create_date'      => date('y-m-d H:i:s'),
			);

			$this->db->insert('ms_customer',$data);
		}
		public function get_session_login($id_customer){
			$this->db->where('customer_username',$id_customer);
			$query= $this->db->get('ms_customer');
			return $query->row_array();
		}
		
		public function simpan_data_pesanan($data){
			$this->db->insert('tr_order',$data);
			$id_data = $this->db->insert_id();
			return(isset($id_data)) ? $id_data : FALSE;
		}
		public function simpan_detail_pesanan($data){
			$this->db->insert('tbl_detail_order',$data);
		}

		public function seselesaikanbelanja($id_customer){
			$session = $this->session->userdata('customer_username',$id_customer);
			$this->db->select('*');
			$this->db->from('tr_order');
			$this->db->join('tbl_detail_order', 'tbl_detail_order.pesanan_id=tr_order.order_id');
			$this->db->join('ms_tshirt', 'tbl_detail_order.id=ms_tshirt.id');
			$this->db->where('customer_username',$session);
			//$this->db->where('status','belum');
			return $this->db->get()->result();
		}

		public function validation_pembayaran($simpan){
			$this->load->library('form_validation');
			if($simpan == "save")

				$this->form_validation->set_rules('input_invoice', 'Nomor Invoice', 'required');
				$this->form_validation->set_rules('input_jumlah', 'Jumlah Transper', 'required');

				$this->form_validation->set_message('required', 'Mohon isi form terlebih dahulu');

				if($this->form_validation->run())
					return TRUE;
				else 
					return FALSE;
		}

		public function save_pembayaran($gambar){
			$data = array(
				"customer_username" =>$this->input->post('customer_username', true),
				"no_invoice"        =>$this->input->post('input_invoice', true),
				"jmlh_transper"     =>$this->input->post('input_jumlah', true),
				"gambar_transper"   =>$gambar,
				"tanggal_transper"  => date('y-m-d H:i:s'),


			);
			$this->db->insert('pembayaran',$data);
		}
	}