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
          </style>
          <div class="pembungkus_gambar ">          
              <img src="<?php echo base_url() ?>asset/images/gambarregis.png" class="gambar_regis img-thumbnail">
          </div>
          
      </div>
    <div class="col-md-5 single-right-left">
      <div class="row">
          <h2 class="text-center"><u>Ubah data User</u></h2>
          <form class="form-horizontal" action="<?php echo base_url(); ?>Auth/editusersubmit" method="post" name="frmCO" id="frmCO">
              <div class="form-group">
                  <!--  -->
                  <label for="exampleInputEmail1">Nama</label>
                  <input type="text" class="form-control" id="nama"  name="customer_name" required="" value="<?php echo $get_session["customer_name"]; ?>" >
                  <div class="merah"></div>

              </div>
              <div class="form-group">
                  <label for="exampleInputEmail1">Email</label>
                  <input type="email" class="form-control" id="email" required="" name="customer_email" value="<?php echo $get_session["customer_email"]; ?>">
                   <div class="merah"></div>
              </div>
              
              <div class="form-group">
                  <label for="exampleInputEmail1">No Telepon</label>
                  <input type="number" class="form-control" id="email"  name="customer_phone" required="" value="<?php echo $get_session["customer_phone"]; ?>" >
                  <div class="merah"></div>
              </div>
              <div class="form-group">
                  <label for="exampleInputEmail1">Alamat</label>
                  <textarea class="form-control" rows="3" name="customer_address" required=""><?php echo $get_session["customer_address"]; ?></textarea>
                 <div class="merah"></div>
              </div>
              <div class="form-group">
                  <label for="exampleInputEmail1">Provinsi</label>
                  <input type="text" class="form-control" id="email"  name="provinsi" required="" value="<?php echo $get_session["provinsi"]; ?>" >
                  <div class="merah"></div>
              </div>
              <div class="form-group">
                  <label for="exampleInputPassword1">Username</label>
                  <input type="text" class="form-control" name="customer_username" id="exampleInputPassword1"   value="<?php echo $get_session["customer_username"]; ?>" required="">
                  <div class="merah"></div>
              </div>
              <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control"  name="customer_password" id="exampleInputPassword1" required="" value="<?php echo $get_session["customer_password"]; ?>">
                  <div class="merah"></div>
              </div>
              <style>.nilai{background-color:#22e1d3 !important;}</style>
              <input type="submit" class="btn btn-primary nilai"  name="submit" value="simpan">
        </form>
      </div>
    </div>
  </div>
</div>
