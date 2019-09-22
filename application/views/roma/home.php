

    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
            <div id="demo" class="carousel slide" data-ride="carousel">

<!-- Indicators -->
<ul class="carousel-indicators">
  <li data-target="#demo" data-slide-to="0" class="active"></li>
  <li data-target="#demo" data-slide-to="1"></li>
  <li data-target="#demo" data-slide-to="2"></li>
</ul>

<!-- The slideshow -->
<div class="carousel-inner">
  <div class="carousel-item active">
    <img src="<?php echo base_url();?>asset/images/slide1.png" class="rounded img-fluid" alt="gubug casual">
  </div>
  <div class="carousel-item">
    <img src="<?php echo base_url();?>asset/images/shes.png" class="rounded img-fluid" alt="jual sepatu original">
  </div>
  <div class="carousel-item">
    <img src="<?php echo base_url();?>asset/images/ORIGINAL.png" class="rounded img-fluid" alt="sepatu original">
  </div>
</div>

<!-- Left and right controls -->
<a class="carousel-control-prev" href="#demo" data-slide="prev">
  <span class="carousel-control-prev-icon"></span>
</a>
<a class="carousel-control-next" href="#demo" data-slide="next">
  <span class="carousel-control-next-icon"></span>
</a>

</div>
            </div>
        </div>
    
    </div>

    <div class="container-fluid py-3">
        <div class="container">
            <div class="row mb-3">
                <div class="col-md-12 text-center">
                    <h2 class="text-gray"> Toko sepatu masa kini harga bersahabat di jamin produk memuaskan</h2>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repudiandae asperiores qui doloribus laborum quod, architecto ipsam nam, odit repellendus, voluptatem dolorem. Molestiae, aliquam similique esse eius laboriosam quia totam eos.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4  text-center">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-money fa-4x text-success"></i>
                            <h6 class="text-success">Harga Terbaik</h6>
                        </div>
                    </div>

                </div>
                <div class="col-md-4  text-center">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-check fa-4x text-primary"></i>
                            <h6 class="text-primary">Kualitas Original</h6>
                        </div>
                    </div>

                </div>
                <div class="col-md-4  text-center">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-truck fa-4x text-danger"></i>
                            <h6 class="text-danger">Pengiriman cepat</h6>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid py-3">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 col-12 ">
                    <div class="h5">Daftar Produk</div>
                    <div class="garis-bawah text-center"></div>
                </div>
            </div>

            <div class="row my-3">
                <?php foreach($all as $data) { ?>
                <div class="col-md-3  mb-3">
                    <div class="card">
                        <img src="<?php echo base_url(); ?>asset/images/<?php echo $data["tshirt_image"]; ?>" width="100%" height="250px" class="card-img-top img-fluid rounded" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $data["tshirt_name"]; ?></h5>
                            <p class="card-text">Rp.<?php echo $data["tshirt_price"]; ?></p>
                            <form action="<?php echo base_url(); ?>Home/beli" method="post">
												<fieldset>
													<input type="hidden" name="id" value="<?php echo $data["id"]; ?>">
													<input type="hidden" name="tshirt_name" value="<?php echo $data["tshirt_name"]; ?>">
													<input type="hidden" name="tshirt_price" value="<?php echo $data["tshirt_price"]; ?>">
													<input type="hidden" name="tshirt_image" value="<?php echo $data["tshirt_image"]; ?>">
													<input type="hidden" name="qty" value="1">
                                                    <button class="btn btn-info btn-sm "><i class="fa fa-cart-plus"></i> Beli</button>
												
                        
                            <a href="<?php echo base_url(); ?>Home/detail_barang/<?php echo $data["sluga"]; ?>" class="btn btn-primary btn-sm text-white"><i class="fa fa-eye"></i> Detail</a>
                </fieldset>
											</form>
                        </div>
                    </div>
                </div>
                <?php } ?>
              
            </div>
        </div>
    </div>

   
   