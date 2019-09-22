<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>checkout/checkoutfunction">Checkout</a></li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container py3">
    <div class="row">
        <div class="col-md-12 align-center">
            <h5 class="text-center text-info">Checkout </h5>
            <div class="garis-bawah mx-auto mb-3"></div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
        <div class="col-md-6">
        <form action="<?php echo base_url(); ?>Chekout/simpan_pesanan">
        <input type="hidden" name="" id="provinsi_asal" class="form-control provinsi">
        <input type="hidden" name="" id="kota_asal" class="form-control city">
        <input type="hidden" name="berat" id="berat" value="1" class="form-control">
        <div class="form-group">
            <div class="alert alert-danger" role="alert">
              PENTING! - Pastikan data anda sudah benar sebelum menyelesaikan orderan ini.
            </div>
        </div>
        <div class="form-group">
            <label >Nama</label>
            <input type="text" name="customer_username" class="form-control" disabled="" value="<?php echo $this->session->userdata("customer_username"); ?>">
        </div>
        <div class="form-group">
            <label >Alamat Email</label>
            <input type="text" name="customer_email" class="form-control"  disabled="" value="<?php echo $get_data_kunsumen["customer_email"]; ?>">
        </div>
        <div class="form-group">
            <label >No Telepon</label>
            <input type="number" class="form-control"  disabled="" value="<?php echo $get_data_kunsumen["customer_phone"]; ?>">
        </div>
        
        <div class="form-group">
            <label >Provinsi Tujuan</label>
            <select onChange="get_kota_tujuan()"  id="provinsi_tujuan" class="form-control provinsi" required="" >
              
            </select>
        </div>
        <div class="form-group">
            <label >Kota Tujuan</label>
            <select name="kota" id="kota_tujuan"  class="form-control" required="">
               
               
            </select>
        </div>
       
        <div class="form-group">
            <label >Kurir</label>
            <select onChange="get_ongkir()" name="kurir" id="kurir" class="form-control" required="">
              <option value="">--Pilih--</option>
              <option value="pos">POS</option>
              <option value="tiki">TIKI</option>
            </select>
        </div>
        <div class="form-group">
            <label for="service">Service</label>
            <select name="service" id="service"  class="form-control"  onChange="get_harga(this)" required="">
              
            </select>
        </div>
        <input type="hidden" name="total">
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Simpan pesanan</button>
        </div>
      
        </div>
        <div class="col-md-6">
        <div class="form-group">
                  <label for="exampleFormControlInput1">Kode pos</label>
                  <input type="number" name="kodepos" min="5" class="form-control" id="exampleFormControlInput1" placeholder="kode pos" required="">
                </div>

                 <div class="form-group">
                  <label for="exampleFormControlTextarea1">Alamat Tujuan</label>
                  <textarea name="alamat" class="form-control" id="exampleFormControlTextarea1" rows="3" required=""></textarea>
                </div>
                <?php 
                    if ($cart = $this->cart->contents()){
                ?>
                <?PHP 
                  $grand_total=0;
                  $jumlahqty=0;
                  $a        =1;

                  foreach($cart as $item){
                    $grand_total = $grand_total + $item['subtotal'];
                    $jumlahqty = $jumlahqty+$item['qty'];
                  }

                ?>
                  <ul class="list-group">
                    <li class="list-group-item active text-center">Daftar Belanja</li>
                    <li class="list-group-item">Total Harga: Rp. <span id="tot_order"><?php echo $grand_total; ?> </li>
                    <li class="list-group-item">Jumlah Order: <?php echo $jumlahqty; ?> </li>
                    <li class="list-group-item">Harga Ongkos Kirim: Rp. <span id="harga"></span> </li>
                    <li class="list-group-item">Sub Harga: <span id="amount" name="total"></span></li>
                  </ul>
               
               <?php 
                  } 
                    else{
                      echo "<div class='alert alert-info'><strong>DATA BELANJA MASIH KOSONG</strong>";
                    }

               ?>
           
             
        </form>
        <style>
          .atas{margin-top: 40px;}
        </style>
        </div>
    </div>
</div>

  	