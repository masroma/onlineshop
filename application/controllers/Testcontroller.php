<?php 
	class Testcontroller extends CI_Controller {
		public function __construct() {
			parent::__construct();
		}

		public function index(){
			$this->load->view("testviewawal");
		}
		public function cobalagilah(){
			$this->load->view("testlagi");
		}
	}