<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>Home/data_belanja">Keranjang Belanja</a></li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container py3">
    <div class="row">
        <div class="col-md-12 align-center">
            <h5 class="text-center text-info">Daftar Belanja</h5>
            <div class="garis-bawah mx-auto mb-3"></div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
        <div class="col-md-12">
        <form action="<?php echo base_url() ?>Home/ubah_belanja" method="post" name="frmShopping" id="frmShopping" class="form-horizontal" enctype="multipart/form-data">
          <?php 

            if ($cart=$this->cart->contents()){


          ?>
          <table class="table">
            <thead>
              <tr>
                <th scope="col">No</th>
                <th scope="col">Gambar Produk</th>
                <th scope="col">Nama Produk</th>
                <th scope="col">Harga Satuan</th>
                <th scope="col">Qty</th>
                <th scope="col">Jumlah</th>
               <th scope="col">Hapus</th>
              </tr>
            </thead>
            <tbody>

                <?php 
                    $grand_total=0;
                    $Jumlah_qty =0;
                    $i=1;
                    foreach ($cart as $item){
                    $grand_total = $grand_total + $item['subtotal'];
                    $Jumlah_qty= $Jumlah_qty+$item['qty'];

                ?>
                <input type="hidden" name="cart[<?php echo $item['id'];?>][id]" value="<?php echo $item['id'];?>" />
                <input type="hidden" name="cart[<?php echo $item['id'];?>][rowid]" value="<?php echo $item['rowid'];?>" />
                <input type="hidden" name="cart[<?php echo $item['id'];?>][name]" value="<?php echo $item['name'];?>" />
                <input type="hidden" name="cart[<?php echo $item['id'];?>][price]" value="<?php echo $item['price'];?>" />
                <input type="hidden" name="cart[<?php echo $item['id'];?>][tshirt_image]" value="<?php echo $item['img'];?>" />
                <input type="hidden" name="cart[<?php echo $item['id'];?>][qty]" value="<?php echo $item['qty'];?>" />
              
                <th scope="row"><?php echo $i++; ?></th>
                <style type="text/css">
                  .ukurangambar{
                    width: 80px;
                    height: 60px;
                  }
                  .sizeinput{
                    width: 60px;
                  }
                </style>
                <td><img src="<?php echo base_url() . 'asset/images/'.$item['img']; ?>" class="img-responsive ukurangambar"></td>
                <td><?php echo $item["name"]; ?></td>
                <td>Rp. <?php echo  number_format($item["price"],0,",","."); ?></td>
                <td><input type="number" min="1" max="10" class="form-control input-sm sizeinput" name="cart[<?php echo $item['id']; ?>][qty]" value="<?php echo $item['qty']; ?>" /></td>
                <td>Rp. <?php echo number_format($item['subtotal'],0,",","."); ?></td>
                <td><a href="<?php echo base_url(); ?>/Home/hapusdatabelanja/<?php echo $item['rowid']; ?>" class="btn btn-sm btn-danger "><i class="fa fa-trash hapus-databelanja"></i></a></td>
              </tr>
              <tr>
              <?php } ?>
             
              <td colspan="4" >

               <a  data-toggle="modal" data-target=".bs-example-modal-lg"  class ='btn btn-sm btn-danger text-white'>Kosongkan Cart</a>
              <button class='btn btn-sm btn-success'  type="submit">Update Cart</button>
              <a href="<?php echo base_url(); ?>Chekout/checkoutfunction" class='btn btn-sm btn-primary'  type="submit">Checkout</button>
              
             
             </td>
              <td colspan="3" align=""><p style="font-size:11px; ">Total Harga: Rp<?php echo number_format($grand_total,0,",","."); ?> &nbsp; </b>Jumlah Order: <?php echo $Jumlah_qty; ?></p></td>
              </tr>
            </tbody>
          </table>
          
      </form>
      <?php 
          }
          else {
            echo "<div class='alert alert-danger' role='alert'>
                  data produk yang anda beli masih kosong
                </div>";
          }
      ?>
        </div>
    </div>
</div>