<?php
	class Produk_model extends CI_Model
	{
		public function __construct(){
			parent::__construct();
			$this->load->helper('array');
			$this->load->helper('url');
			$this->load->database();
		}

		public function produk_pria()
		{
			$result= array();
			$status= 'pria';

			$this->db->select('*');
			$this->db->from('ms_tshirt');
			$this->db->join('ms_brand', 'ms_brand.brand_id = ms_tshirt.brand_id');
			$this->db->where('brand_name',$status);
			return $this->db->limit(8)->get()->result_array();
			
		}

		public function produk_all(){
			$this->db->select('*');
			$this->db->from('ms_tshirt');
			$this->db->join('ms_brand', 'ms_brand.brand_id = ms_tshirt.brand_id');
			//$this->db->where('brand_name',$status);
			return $this->db->limit(8)->get()->result_array();
		}

		public function get_detail_produk($slug){

			$this->db->select('*');
			$this->db->from('ms_tshirt');
			$this->db->join('ms_brand', 'ms_brand.brand_id = ms_tshirt.brand_id');
			$this->db->where('sluga',$slug);
			return $this->db->get();
		}

		public function cari_data_produk($keyword){
			$this->db->select('*');
			$this->db->from('ms_tshirt');
			$this->db->like('tshirt_name',$keyword);
			$this->db->or_like('tshirt_price',$keyword);
			return $this->db->get()->result_array();
		}
		public function kategori(){
			$this->db->select('*');
			$this->db->from('ms_brand');
			$this->db->order_by("brand_name","asc");
			return $this->db->get()->result_array();
		}
		public function tampilkategori($brand_name){
			$this->db->select('*');
			$this->db->from('ms_tshirt');
			$this->db->join('ms_brand', 'ms_brand.brand_id = ms_tshirt.brand_id');
			$this->db->where('brand_name',$brand_name);
			return $this->db->get()->result_array();
		}
		public function getTotalproducts(){
			$sql="select * from ms_tshirt";
			$query=$this->db->query($sql);
			return $query->num_rows();
		}
		public function getAltotalproducts($start=0,$limit=0){
			if($limit>0){
				$sql="select ms_tshirt.*, ms_brand.brand_name from ms_tshirt INNER JOIN ms_brand ON ms_tshirt.brand_id=ms_brand.brand_id LIMIT " . $start . "," . $limit;
				$query=$this->db->query($sql);
				return $query->result_array();
			}
			else 
			{
				return NULL;
			}
		}
		public function cheklogin($username,$password)
		{
			$this->db->from('ms_customer');
			$this->db->where("customer_username",$username);
			$this->db->where("customer_password",$password);
			return $this->db->get()->num_rows();
		}
		 public function view_ordering_limit($table,$order,$ordering,$baris,$dari){
	        $this->db->select('*');
	        $this->db->order_by($order,$ordering);
	        $this->db->limit($dari, $baris);
	        return $this->db->get($table);
	    }
	      public function view_where($table,$data){
        $this->db->where($data);
        return $this->db->get($table);
    }


	}