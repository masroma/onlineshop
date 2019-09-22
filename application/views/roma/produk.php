<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item">Produk</li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
        <div class="col-md-12 align-center">
            <h5 class="text-center text-info">Produk</h5>
            <div class="garis-bawah mx-auto mb-3"></div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
        <div class="col-md-3">
        <ul class="list-group">
        <?php foreach($data_kategori as $row){?>
            <li class="list-group-item"> 
            <a class="dropdown-item" href="<?php echo base_url(); ?>kategori_produk/<?php echo $row["brand_name"]; ?>">
            <?php echo $row['brand_name'];?></a></li>
<?php } ?>
</ul> 
        </div>
        <div class="col-md-9">
            <div class="row">
            <?php if(count($all)>0) { ?>
				<?php foreach ($all as $data) { ?>
                    <div class="col-md-4  mb-3">
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
        <?php } ?>
            </div>
        </div>
    </div>
</div>