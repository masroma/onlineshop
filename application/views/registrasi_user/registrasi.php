 <div class="page-head_agile_info_w3l">
    <div class="container">
      <h3>Berbelanja ditoko kami <span>Aman dan banyak diskon</span></h3>
      <!--/w3_short-->
         <div class="services-breadcrumb">
            <div class="agile_inner_breadcrumb">

              <ul class="w3_short">
                <li><a href="index.html">Home</a><i>|</i></li>
                <li>Registrasi</li>
              </ul>
             </div>
        </div>
     <!--//w3_short-->
  </div>
</div>

<div class="banner-bootom-w3-agileits">
  <div class="container">
      <div class="col-md-6 single-right-left ">
          <style>
            .gambar_regis{width: 90%; height:532px; margin-top:50px;  }
            .merah{color: red; font-size:10px; }
          </style>
          <div class="pembungkus_gambar ">          
              <img src="<?php echo base_url() ?>asset/images/gambarregis.png" class="gambar_regis img-thumbnail">
          </div>
          
      </div>
    <div class="col-md-5 single-right-left">
      <div class="row">
          <h2 class="text-center"><u>Daftar Sekarang</u></h2>
          <form class="form-horizontal" action="<?php echo base_url()?>Auth/Registrasi" method="post" name="frmCO" id="frmCO">
              <div class="form-group">
                  <label for="exampleInputEmail1">Nama</label>
                  <input type="text" class="form-control" id="nama" placeholder="Nama Lengkap" name="customer_name" >
                  <div class="merah"><?php echo form_error('customer_name'); ?></div>

              </div>
              <div class="form-group">
                  <label for="exampleInputEmail1">Email</label>
                  <input type="email" class="form-control" id="email" placeholder="Masukan Email anda" name="customer_email" value="">
                   <div class="merah"><?php echo form_error('customer_email'); ?></div>
              </div>
              
              <div class="form-group">
                  <label for="exampleInputEmail1">No Telepon</label>
                  <input type="number" class="form-control" id="email" placeholder="Masukan No hp anda" name="customer_phone" >
                  <div class="merah"><?php echo form_error('customer_phone'); ?></div>
              </div>
              <div class="form-group">
                  <label for="exampleInputEmail1">Alamat</label>
                  <textarea class="form-control" rows="3" name="customer_address" placeholder=""></textarea>
                 <div class="merah"><?php echo form_error('customer_address'); ?></div>
              </div>
              <div class="form-group">
                  <label for="exampleInputEmail1">Provinsi</label>
                  <select class="form-control" name="input_provinsi">
                     <option value=''>- Pilih -</option>
                     <?php foreach ($ambilprov as $row) { ?>
                     <option><?php echo $row["nama_propinsi"]; ?></option>
                     <?php } ?>
                   
                  </select>
              </div>
              <div class="form-group">
                  <label for="exampleInputPassword1">Username</label>
                  <input type="text" class="form-control" name="customer_username" id="exampleInputPassword1" placeholder="Masukan Username"  value="">
                  <div class="merah"><?php echo form_error('customer_username'); ?></div>
              </div>
              <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control"  name="customer_password" id="exampleInputPassword1" placeholder="Password">
                  <div class="merah"><?php echo form_error('customer_password'); ?></div>
              </div>
              <style>.nilai{background-color:#22e1d3 !important;}</style>
              <input type="submit" class="btn btn-primary nilai"  name="submit" value="simpan">
        </form>
      </div>
    </div>
  </div>
</div>
z