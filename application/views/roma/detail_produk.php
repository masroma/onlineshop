<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>home/produk">Produk</a></li>
                    <li class="breadcrumb-item active" aria-current="page">nama produk</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <img src="<?php echo base_url(); ?>asset/images/<?php echo $detail["tshirt_image"] ?>" class="img-fluid rounded" alt="<?php echo $detail['tshirt_name'];?>">
            </div>

            <div class="col-md-6">
                <h2 class="text-gray"><?php echo $detail["tshirt_name"]; ?></h2>
                <h6 class="text-gray"><?php echo $detail["brand_name"] ?></h6>
                <p class="text-gray"><?php echo $detail["product_description"] ?></p>
            </div>

            <div class="col-md-3">
            <p class="text-gray">qty</p>
			
			 <form action="<?php echo base_url(); ?>Home/beli" method="post">
												<fieldset>
													<input type="hidden" name="id" value="<?php echo $detail["id"]; ?>">
													<input type="hidden" name="tshirt_name" value="<?php echo $detail["tshirt_name"]; ?>">
													<input type="hidden" name="tshirt_price" value="<?php echo $detail["tshirt_price"]; ?>">
													<input type="hidden" name="tshirt_image" value="<?php echo $detail["tshirt_image"]; ?>">
													<input type="number" class="form-control mb-3">
                                                    <button class="btn btn-danger btn-block"><i class="fa fa-cart-plus"></i> Beli</button>
                         
                </fieldset>
											</form>
               
              
                <a href="https://wa.me/6281210006695" class="btn btn-success btn-block"><i class="fa fa-whatsapp"></i> beli via whatsapp</a>
            </div>
        </div>
    </div>
</div>