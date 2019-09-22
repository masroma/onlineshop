 <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  
                  <th>username</th>
                  <th hidden>id_admin</th>
                  <th hidden>password</th>
                  
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach ($admin1 as $key) { ?>
                <tr>
                  
                  <td><?php echo $key["username"]; ?></td>
                  <td hidden><?php echo $key["id_admin"] ?></td>
                  <!-- <td><img src ="<?php echo base_url(); ?>img/<?php echo $key["images"] ?>" style="width: 229px;"></td> -->
                  
                  <td hidden><?php echo $key["level_berita"]?></td>
                  <td><a class="btn btn-danger btn-sm" href="<?php echo base_url(); ?>Admin/deleteDataAdmin/<?php echo $key['id_admin']; ?>" ><i class="fa fa-trash"></i> Hapus</a>
                    <a class="btn btn-success btn-sm" href="<?php echo base_url(); ?>Admin/editDataAdmin/<?php echo $key['id_admin']; ?>" ><i class="fa fa-pencil-square-o" ></i> Edit</a>
                  </td>
                </tr>
              <?php } ?>
                
                </tfoot>
              </table>