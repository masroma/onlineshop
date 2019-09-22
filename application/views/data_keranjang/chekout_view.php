
 <div class="page-head_agile_info_w3l">
    <div class="container">
      <h3>Keranjang <span>Belanja</span></h3>
      <!--/w3_short-->
         <div class="services-breadcrumb">
            <div class="agile_inner_breadcrumb">

              <ul class="w3_short">
                <li><a href="index.html">Home</a><i>|</i></li>
                <li>Keranjang Belanja</li>
              </ul>
             </div>
        </div>
     <!--//w3_short-->
  </div>
</div>
<div class="banner-bootom-w3-agileits">
  <div class="container">
  	 <div class="col-md-5 single-right-left">
      <div class="row">
        <h2 style="margin-top:10px; text-align: center; border-bottom: 6px solid #cec2c2; width: 471px; margin-bottom:30px; ">Detail Pembayaran</h2>
       	
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
    </div>
     
     <div class="col-md-7 single-right-left " style="margin-top: 170px;">
                
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