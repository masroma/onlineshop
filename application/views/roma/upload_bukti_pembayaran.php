<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>Chekout/upload_bukti_pebayaran">Upload bukti pembayaran</a></li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container py3">
    <div class="row">
        <div class="col-md-12 align-center">
            <h5 class="text-center text-info">Upload bukti pembayaran</h5>
            <div class="garis-bawah mx-auto mb-3"></div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
        <div class="col-md-12">
        <form action="<?php echo base_url(); ?>Chekout/Simpanbayar" method="post"  enctype="multipart/form-data">
            
            <div class="form-group">
              <label for="name" class="cols-sm-2 control-label">Nama Pengirim/ Pemilik No Rekening</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"></span>
                  <input type="text" class="form-control" name="customer_username" id="name"  placeholder="Nama Pengirim" value="<?php //echo $this->session->userdata("customer_username"); ?>">

                </div>
                <div class="merah"><?php echo form_error('customer_username') ?></div>
              </div>
            </div>

            <div class="form-group">
              <label for="email" class="cols-sm-2 control-label">Nomor Invoice</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="input_invoice"   placeholder="No Invoice" value="<?php echo set_value('input_invoice'); ?>"/>
                </div>
                <div class="merah"><?php echo form_error('input_invoice') ?></div>
              </div>
            </div>
            <div class="form-group">
              <label for="password" class="cols-sm-2 control-label">Jumlah Transper</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase" aria-hidden="true"></i></span>
                  <input type="number" class="form-control" name="input_jumlah"   placeholder="Jumlah Transper" value="<?php echo set_value('input_jumlah'); ?>"/>
                </div>
                <div class="merah"><?php echo form_error('input_jumlah') ?></div>
              </div>
            </div>

            <div class="form-group">
              <label for="confirm" class="cols-sm-2 control-label">Upload Bukti Pembayaran</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"></span>
                  <input class="form-control" type="file" name="input_gambar" id="exampleInputFile" >
                 
                </div>
              </div>
            </div>
            <div class="merah"><?php echo form_error('input_gambar') ?></div>
            <div class="form-group ">
              <input type="submit" class="btn btn-primary btn-lg btn-block login-button"  name="submit" value="simpan">
              
            </div>
            
          </form>
        </div>
    </div>
</div>