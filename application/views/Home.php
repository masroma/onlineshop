<html lang = "en"> 

   <head> 
      <meta charset = "utf-8"> 
      <title>CodeIgniter Test Pengiriman Email</title> 
   </head>

   <body> 
      <?php 
         echo $this->session->flashdata('notif'); 
         echo form_open('Send_email/send_mail'); 
      ?> 

      <input type = "email" name = "email" required /> 
      <input type = "submit" value = "SEND MAIL"> 

      <?php 
         echo form_close(); 
      ?> 
   </body>

</html>