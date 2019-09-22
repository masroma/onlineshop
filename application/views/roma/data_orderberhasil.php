<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>Chekout/selesaikan_pembayaran">history belanja</a></li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="container py3">
    <div class="row">
        <div class="col-md-12 align-center">
            <h5 class="text-center text-info">History Belanja</h5>
            <div class="garis-bawah mx-auto mb-3"></div>
        </div>
    </div>
</div>

<div class="container py-3">
    <div class="row">
        <div class="col-md-12">
        <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>NOMOR INVOICE</th>
                <th>NAMA PEMESAN</th>
                <th>TANGGAL PESANAN</th>
                <th>TOTAL Pembayaran</th>
                <th>Batas Waktu Pembayaran</th>
                <th>status</th>
              
            </tr>
        </thead>
        <tbody>
        <?php foreach ($data_pembayaran as $row) { ?>
            <tr>
                <td><?= $row->pesanan_id; ?></td>
                <td><?= $row->customer_username; ?></td>
                <td><?= $row->tgl_pesan ?></td>
                <td>Rp. <?= $row->total ?></td>
                <td><?= $row->bts_bayar ?></td>
            <td>
            <?php $data = date("Y-m-d");
                if($data > $row->bts_bayar && $row->status == 'belum'){ 
                ?>
                 <span class="badge badge-danger">expired</span>
                <?php } else { ?>
                <?php if($row->status == 'belum' ){ ?>
                    
                    <span class="badge badge-danger">Belum bayar</span><br>
                    <a href='<?= base_url(); ?>Chekout/upload_bukti_pebayaran'>Kirim bukti pembayaran</a>
               <?php }else{ ?>
                    <span class='badge badge-success'>Lunas</span>
               <?php  } ?>
                <?php } ?>
            </td>
            </tr>
            <?php } ?>
         
        </tbody>
      
    </table>
        </div>
    </div>
</div>