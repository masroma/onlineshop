
 <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <a href="<?= base_url(); ?>AdminMain/addproduk" class="btn btn-primary" style="margin-bottom:20px; ">Tambah Data Produk</a>
                <tr>
                  <th>No</th>
                  <th>Gambar Produk</th>
                  <th>Nama Produk</th>
                  <th>Harga Produk</th>
                  <th>Deskripsi Produk</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                <?php $no=1; ?>
                <?php foreach($produk as $row) { ?>
                <tr>
                  <td><?= $no; ?></td>
                  <td>
                    <img src="<?php echo base_url(); ?>asset/images/<?php echo $row["tshirt_image"]; ?>" width="70" height="70" />
                  </td>
                  <td> <?= $row["tshirt_name"] ?> </td>
                  <td>Rp. <?= $row["tshirt_price"] ?> </td>

                  <td width="30%">Rp. <?=  substr($row["product_description"],0,200); ?> </td>
                  <td>
                    <a href="<?php echo base_url(); ?>AdminMain/adietprodukk/<?php echo $row["id"]; ?>" class="btn btn-primary btn-xs" title="Edit">Edit</a>
                
                    <a onClick="javascript: return confirm('Are you sure to Delete Data');" href="<?PHP echo base_url(); ?>AdminMain/hapus/<?php echo $row["id"]; ?>" class="btn btn-primary btn-xs" title="Delete" onclick="return confirm('apakah anda yakin data ber id=<?php //ubah ?> ingin dihapus ?') ">Hapus</a>
                  </td>
                </tr>
               <?php $no++ ?>
             <?php } ?>
               
              </table>


