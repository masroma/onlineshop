<?php 
   class Send_email extends CI_Controller { 

      function __construct() { 
         parent::__construct(); 
          //load helper form
         $this->load->helper('form'); 
      } 

      public function index() { 

         $this->load->helper('form'); 
         $this->load->view('home'); 

      } 

      public function send_mail() { 

         $from_email = "rudiyanto6065@gmail.com"; 
         $to_email = $this->input->post('email'); 

         $config = Array(
                'protocol' => 'smtp',
                'smtp_host' => 'ssl://smtp.googlemail.com',
                'smtp_port' => 465,
                'smtp_user' => $from_email,
                'smtp_pass' => 'sayahilaf17181717',
                'mailtype'  => 'html', 
                'charset'   => 'iso-8859-1'
        );

            $this->load->library('email', $config);
            $this->email->set_newline("\r\n");   

         $this->email->from($from_email); 
         $this->email->to($to_email);
         $this->email->subject('Test Pengiriman Email'); 
         $this->email->message('Coba mengirim Email dengan CodeIgniter'); 

         //Send mail 
         if($this->email->send()){
                $this->session->set_flashdata("notif","Email berhasil terkirim."); 
         }else {
                $this->session->set_flashdata("notif","Email gagal dikirim."); 
                $this->load->view('home'); 
         } 
      }
} 