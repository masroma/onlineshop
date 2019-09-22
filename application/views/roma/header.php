<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>asset/roma/css/style.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css"/>
    
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>asset/js/jquery-2.1.4.min.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script> -->
        <script type="text/javascript">
        $(document).ready(function() {
    $('#example').DataTable();
} );
        </script>
    <title>ecommerce</title>
</head>

<body>
    <div class="container-fluid bg-info py-2">
        <nav class="container navbar navbar-expand-lg navbar-light ">
            <a class="navbar-brand text-white" href="#"><img src="<?php echo base_url();?>asset/images/logoputih.png" class="img-fluid" style="width:180px;"  alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="<?php echo base_url();?>">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="<?php echo base_url();?>Home/produk">Produk <span class="sr-only">(current)</span></a>
                    </li>
                    <?php if($this->session->has_userdata('customer_username')){?>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="<?php echo base_url();?>Chekout/upload_bukti_pebayaran">Upload Pembayaran</a>
                    </li>
                    <?php } ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Brand
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <?php foreach ($data_kategori as $data) { ?>
                            <a class="dropdown-item" href="<?php echo base_url(); ?>kategori_produk/<?php echo $data["brand_name"]; ?>">
                            <?php echo $data["brand_name"]; ?>
                            </a>
                        <?php } ?>
                           
                            <div class="dropdown-divider">
                        </div>
                    </li>
                

                    
                </ul>
                <form class="form-inline my-2 my-lg-0" action="<?php echo base_url(); ?>Cari_produk/search" method="post">
                    <input class="form-control mr-sm-2" type="search" name="search" placeholder="cari produk" aria-label="Search">
                    <button class="btn btn-outline-white text-white border border-white my-2 my-sm-0" type="submit"><i
                            class="fa fa-search text-white "></i></button>
                </form>
                <ul class="navbar-nav ml-auto">
                <?php
				if(!$this->session->has_userdata('customer_username')){ ?>
                <li class="nav-item">
                        <a class="nav-link text-white" href="<?php echo base_url();?>Auth/login">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="<?php echo base_url();?>Auth/registrasi">Register</a>
                    </li>
                <?php } else { ?>
              
                <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Halo <?php 	echo $this->session->userdata("customer_username");?>
                        </a>
                    
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      
                        <a class="dropdown-item" href="<?php echo base_url();?>Auth/profile".encrypt_url().""> Profile</a>
                        <a class="dropdown-item" href="<?php echo base_url();?>Chekout/selesaikan_pembayaran".encrypt_url().""> History</a>
                        <a class="dropdown-item" href="<?php echo base_url();?>Home/Logout"> Logout</a>
                            <div class="dropdown-divider"></div>

                        </div>
                    </li>
                <?php } ?>

                    <li class="nav-item">
                            <a class="nav-link text-white" href="<?php echo base_url() ?>Home/data_belanja">
                            <?php 
							$cart =$this->cart->contents();
							$jumlahqty =0;
							foreach ($cart as $item){
							$jumlahqty = $jumlahqty + $item['qty'];
						 ?>
						<?php } ?>
						<span style="color: red; margin-left:15px; margin-top: -20px; margin-top: 17px;background-color: red;color: #eddbdb;font-size: 12px;width: 18px;height: 17px;text-align: center;position: absolute;top: -2px;border-radius: 50%;">
							
							<?php echo $jumlahqty; ?>
						</span>    
                            <i class="fa fa-cart-plus text-white"></i></a>
                        </li>
                            </ul>
            </div>
        </nav>
    </div>