<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>auth/register">Register</a></li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
    <div class="col-md-12">
     
          <h2 class="text-center text-info">Daftar Sekarang</h2>
          <p class=" text-center text-gray">sudah punya akun ? <span class="text-info">LOGIN</span></p>
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