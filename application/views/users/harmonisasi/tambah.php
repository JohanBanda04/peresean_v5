<!-- Main content -->
<div class="content-wrapper">
  <!-- Content area -->
  <div class="content">

    <!-- Dashboard content -->
    <div class="row">
      <div class="col-md-2"></div>
      <div class="col-md-8">
        <div class="panel panel-inverse">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title"><?php echo $judul_web; ?></h4>
            </div>
            <div class="panel-body">
                <?php
                echo $this->session->flashdata('msg');
                $link4 = strtolower($this->uri->segment(4));
                ?>
                <form class="form-horizontal" action="" data-parsley-validate="true" method="post" enctype="multipart/form-data">
                  <style>
                    #wajib_isi{color:red;}
                  </style>

                  <h4>Informasi Raperda</h4>
                    <div class="form-group">
                      <label class="col-lg-12">Judul <b id='wajib_isi'>*</b></label>
                      <div class="col-lg-12">
                        <input type="text" name="nama_kegiatan" class="form-control" value="" placeholder="Nama Kegiatan.." required>
                      </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-12">Jenis<b id='wajib_isi'>*</b></label>
                        <div class="col-lg-12">
                            <select class="form-control default-select2" name="jenis_dokumen" selected="<?php echo $query->level; ?>" required>
                                <option value="">- Pilih -</option>
                                <option value="raperda">Raperda</option>
                                <option value="raperkada">Raperkada</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-12">Zona<b id='wajib_isi'>*</b></label>
                        <div class="col-lg-12">
                            <select class="form-control default-select2" name="zona_dokumen" selected="<?php echo $query->level; ?>" required>
                                <option value="">- Pilih -</option>
                                <option value="pemprov_ntb">Pemprov NTB</option>
                                <option value="pemkot_mataram">Pemkot Mataram</option>
                                <option value="pemkot_bima">Pemkot Bima</option>
                                <option value="pemkab_sumbawa_barat">Pemkab Sumbawa Barat</option>
                                <option value="pemkab_sumbawa">Pemkab Sumbawa</option>
                                <option value="pemkab_lombok_utara">Pemkab Lombok Utara</option>
                                <option value="pemkab_lombok_timur">Pemkab Lombok Timur</option>
                                <option value="pemkab_lombok_tengah">Pemkab Lombok Tengah</option>
                                <option value="pemkab_lombok_barat">Pemkab Lombok Barat</option>
                                <option value="pemkab_dompu">Pemkab Dompu</option>
                                <option value="pemkab_bima">Pemkab Bima</option>
                            </select>
                        </div>
                    </div>



                    <div class="form-group">
                      <label class="col-lg-12">Dokumen Hasil Harmonisasi</label>
                      <div class="col-lg-12">
                        <input  type="file" name="lamp_surat_undangan" class="form-control" required>
                      </div>
                    </div>

                  <hr>



                  <!--<a href="<?php /*echo strtolower($this->uri->segment(1)); */?>/<?php /*echo strtolower($this->uri->segment(2)); */?>.html"
                     class="btn btn-default">
                      << Kembali
                  </a>-->
                  <button type="submit" name="btnsimpan" class="btn btn-primary" style="float:right;">Kirim</button>
                </form>
            </div>

        </div>
      </div>
    </div>
    <!-- /dashboard content -->
