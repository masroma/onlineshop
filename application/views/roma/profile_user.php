<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>Auth/profile">profile</a></li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container py3">
    <div class="row">
        <div class="col-md-12 align-center">
            <h5 class="text-center text-info">Profile</h5>
            <div class="garis-bawah mx-auto mb-3"></div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
        <div class="col-md-12">
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