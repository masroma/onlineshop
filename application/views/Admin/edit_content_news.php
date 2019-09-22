            <div class="box-header with-border">
              <h3 class="box-title">EDIT FORM NEWS</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <?php if(isset($detail)) { ?>
            <form action="<?php echo base_url(); ?>Admin/editNewsSubmit" method="post" enctype="multipart/form-data" role="form">

              <input type="hidden" name="id_news" value="<?php echo $detail->id_news; ?>">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Title Berita</label>
                  <input type="text" class="form-control" name="title" id="exampleInputtext1" placeholder="Enter Title" value="<?php echo $detail->title; ?>">
                </div>
                
                <div class="form-group">
                  <label>Desription</label>
                  <textarea class="form-control" rows="3" name="description" placeholder="Enter Desription"><?php echo $detail->description ?></textarea>
                </div>

               <!--  <div class="form-group">
                  <label for="exampleInputPassword1">createdate</label>
                  <input type="date" class="form-control" name="createdate" id="exampleInputtext1" placeholder="Enter date" value="<?php echo $detail->createdate; ?>">
                </div> -->


                <div class="form-group">
                  <label for="exampleInputFile">File input Gambar</label><br>
                  <img src="<?php echo base_url(); ?>img/<?php echo $detail->images; ?>" width="200" height="200">
                  <input type="hidden" name="gambar_old" value="<?php echo $detail->images; ?>">
                  <br>
                  <input type="file" name="gambar" id="exampleInputFile">

                  <p class="help-block">Example block-level help text here.</p>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox"> Are you sure to edit?
                  </label>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
            <?php } ?>