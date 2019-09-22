<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<div class="banner-bootom-w3-agileits">
              
                <section class="content content_content" style="width: 70%; margin: auto;">
                <?php foreach ($data_pembayaran as $row) { ?>
                    <section class="invoice">
                        <!-- title row -->
                        <div class="row">
                            <div class="col-xs-12">
                                <h2 class="page-header">
                                    <i class="fa fa-globe"></i>BABASTUDIO.
                                    <small class="pull-right">Date: <?php echo $row->tgl_pesan; ?></small>
                                </h2>
                            </div><!-- /.col -->
                        </div>
                        <!-- info row -->
                        <div class="row invoice-info">
                            <div class="col-sm-4 invoice-col">
                                From
                                <address>
                                    <strong>
                                        Babastudio
                                    </strong>
                                </address>
                            </div><!-- /.col -->
                            <div class="col-sm-4 invoice-col">
                                To
                                <address>
                                    <strong>
                                      <?php echo $row->customer_username; ?>                          
                                    </strong>
                                    
                                   
                            </div><!-- /.col -->
                            <div class="col-sm-4 invoice-col">
                                <b>Invoice: BABASTUDIO/<?= $row->pesanan_id; ?></b><br>
                                <br>
                                <b>Order ID:</b><?= $row->order_id; ?><br>
                                
                            </div><!-- /.col -->
                        </div><!-- /.row -->

                        <!-- Table row -->
                        <div class="row">
                            <div class="col-xs-12 table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Total Belanja</th>
                                            <th>Nama Produk</th>
                                            <th>Tanggal Pesan</th>
                                            <th>Bts Pembayaran</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        
                                        <tr>
                                            <td>Rp.<?= number_format($row->total),",",".";   ?></td>
                                            <td><?= $row->tshirt_name; ?></td>
                                            <td><?=  $row->tgl_pesan; ?></td>
                                            <td><?= $row->bts_bayar; ?></td>
                                           
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!-- /.col -->
                        </div><!-- /.row -->

                        <div class="row">
                            <!-- accepted payments column -->
                            <div class="col-md-12">
                                <p class="lead">Untuk Pembayaran silahkan Transper kerekening berikut</p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            
                                            
                                            <tr>
                                                <th>Bca : 085757575757</th>
                                                <td>Bni : 7748438438438</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div><!-- /.col -->
                        </div><!-- /.row -->

                        <!-- this row will not appear when printing -->
                        <div class="row no-print">
                            <div class="col-xs-12">
                                <a href="" class="btn btn-success"><i class="glyphicon glyphicon-print"></i> Print</a>
                               
                            </div>
                        </div>
                    </section>
                </section>
                 <?php } ?>
            <script>
                window.print();
            </script>