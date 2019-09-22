<?php
	class Admin_model extends CI_Model{
		public function __construct(){
			parent::__construct();
			$this->load->database();
		}
		public function cheklogin($username,$password){
			$this->db->from('admin_tbl');
			$this->db->where("username",$username);
			$this->db->where("password",md5($password));
			return $this->db->get()->num_rows();
		}
		public function produk(){
			$this->db->select('*');
			$this->db->from('ms_tshirt');
			$this->db->join('ms_brand', 'ms_brand.brand_id=ms_tshirt.brand_id');
			return $this->db->get()->result_array();
		}
		public function delete($id){
			$this->db->where('id', $id);
			$this->db->delete('ms_tshirt');
		}
		public function ambilbrand(){
			$this->db->select('*');
			$this->db->from('ms_brand');
			$this->db->order_by("brand_name", "ASC");
			$query= $this->db->get();
			return $query->result_array();

		}
		public function simpan_data_produk($data){
			$this->db->insert('ms_tshirt',$data);
		}
		public function edit_produk($id){
			$this->db->select('*');
			$this->db->from('ms_tshirt');
			$this->db->join('ms_brand', 'ms_brand.brand_id=ms_tshirt.brand_id');
			$this->db->where('id', $id);
			return $this->db->get()->row_array();
		}
		public function ubah_data_produk($data,$id){
			$this->db->where('id', $id);
			$this->db->update('ms_tshirt',$data);
		}
	}