<?php
	class AdminLogin extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->library('session');
			$this->load->model('Admin_model');
		}
		public function index(){
			$this->load->view("Admin/Login");
		}
		public function loginSubmit(){
			$this->form_validation->set_rules('username','Username','required',array('ruquired'=>'silhakan masukan username anda'));
			$this->form_validation->set_rules('password','Password','required',array('ruquired'=>'silhakan masukan username anda'));

			if($this->form_validation->run()==false){
				$this->load->view("Admin/Login");
			}
			else {
				if($this->Admin_model->cheklogin($_POST["username"],$_POST["password"])>0){
					$this->session->set_userdata("username",$_POST["username"]);
					redirect(base_url() . "AdminMain");
				}
				else {
					$data["loginerror"]="username dan password anda salah";
					$this->load->view("Admin/Login",$data);
				}
			}
		}
		public function logout(){
			$this->session->sess_destroy();
			redirect('AdminLogin');
		}
	}