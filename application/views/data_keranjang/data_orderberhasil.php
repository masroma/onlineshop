<div class="page-head_agile_info_w3l">
    <div class="container">
        <h3>PESANAN<span>DITERIMA</span></h3>
        <!--/w3_short-->
          <div class="services-breadcrumb">
              <div class="agile_inner_breadcrumb">

                <ul class="w3_short">
                  <li><a href="index.html">Home</a><i>|</i></li>
                  <li>PESANAN DITERIMA</li>
                </ul>
              </div>
          </div>
       <!--//w3_short-->
    </div>
</div>
  <div class="banner-bootom-w3-agileits">
    <div class="container">
    	<div class="col-md-12 single-right-left">
        <div class="alert alert-success">
                 <h2>TERIMAKASIH. PESANAN ANDA TELAH KAMI TERIMA</h2> 
        </div>


        <ul class="uli">
          <?php foreach ($data_pembayaran as $row) { ?>
            <li>
              <font style="vertical-align:inherit; ">NOMOR INVOICE</font>
              <div class="row">
              </div>
              <strong class="angka">
                <p class="baba">BABASTUDIO/<?= $row->pesanan_id; ?></p>
              </strong>
            </li>
            <li>
              <font style="vertical-align:inherit; ">NAMA PEMESAN</font>
              <div class="row">
              </div>
              <strong class="angka">
                 <p class="baba"><?= $row->customer_username; ?></p>
              </strong>
            </li>
            <li>
              <font style="vertical-align:inherit; ">TANGGAL PESANAN</font>
              <div class="row">
              </div>
              <strong class="angka">
                 <p class="baba">2018-12-12</p>
              </strong>
            </li>
            <li>
              <font style="vertical-align:inherit; ">TOTAL Pembayaran</font>
              <div class="row">
              </div>
              <strong class="angka">
                 <p class="baba">Rp. <?= $row->total ?></p>
              </strong>
            </li>
            <li>
              <font style="vertical-align:inherit; ">Batas Waktu Pembayaran</font>
              <div class="row">
              </div>
              <strong class="angka">
                 <p class="baba"><?= $row->bts_bayar ?></p>
              </strong>
            </li>

          <?php } ?>
            
        </ul>
      </div>
      <div class="row">
      </div>
      <div class="jumbotron">
        <div class="alert alert-info">
          <strong>SILAHKAN SELESAIKAN PEMBAYARAN ANDA DENGAN TRANSPER KE REKENING BERIKUT</strong><BR>
          <STRONG>NAMA BANK   : BCA</STRONG><BR>
          <STRONG>NO REKENING : 083890051601</STRONG>
        </div>
      
        <p><a class="btn btn-primary btn-lg" href="<?= base_url(); ?>Chekout/upload_bukti_pebayaran" role="button">UPLOAD BUKTI PEMBAYARAN</a></p>
        <p><a class="btn btn-primary btn-lg Print icon as a link" href="<?php echo base_url(); ?>Chekout/cetak_invoice" role="button" target="_BLANK"><i class="Print icon as a link">Cetak Invoice</i></a></p>
      </div>


    </div>
  </div>
  <style>
    .uli{list-style: none;}
    .uli li{float: left; margin-right:2em; text-transform: uppercase; font-size:15px; line-height: 2px;
             border-right:1px dashed #d3ced2; padding-right:2em; list-style: none; }
    .angka{text-transform: none; line-height:1.5em; text-align: center; padding-top: 30px; }
    .baba{text-align: center; padding-top: 30px;}
  </style>