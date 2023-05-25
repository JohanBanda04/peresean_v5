<?php
$link1 = strtolower($this->uri->segment(1));
$link2 = strtolower($this->uri->segment(2));
$link3 = strtolower($this->uri->segment(3));
$link4 = strtolower($this->uri->segment(4));
$link5 = strtolower($this->uri->segment(5));

?>
<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li><a href="dashboard.html">Dashboard</a></li>
        <li class="active"><?php echo $judul_web; ?></li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header"> <small><?php echo $judul_web; ?></small></h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-12 -->
        <div class="col-md-12">
            <!-- begin panel -->
            <?php
            echo $this->session->flashdata('msg');
            $level 	= $this->session->userdata('level');
            $link3  = strtolower($this->uri->segment(3));
            ?>
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Daftar Raperda / Raperkada</h4>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12"><b>Filter</b></div>
                        <div class="col-md-3">
                            <select class="form-control default-select2" id="stt">
                                <option value="semua" <?php if('semua'==$link5){ ?> selected <?php }?> >- Semua -</option>
                                <option value="menunggu" <?php if('menunggu'==$link5){echo "selected";} ?> >Belum diproses</option>
                                <option value="proses" <?php if('proses'==$link5){echo "selected";} ?> >Draft sedang dibuat</option>
                                <option value="konfirmasi" <?php if('konfirmasi'==$link5){ ?> selected <?php } ?> >Menunggu koreksi</option>
                                <option value="selesai" <?php if('selesai'==$link5){echo "selected";} ?> >Selesai</option>
                            </select>
                        </div>
                        <div class="col-md-1">
                            <button class="btn btn-default" onclick="window.location.href='harmonisasi/v2/pemkab_lombok_timur/id/'+$('#stt').val();"><i class="fa fa-search"></i> Filter</button>
                        </div>
                        <div class="col-md-6"></div>
                        <div class="col-md-2">
                            <?php if ($level=='pelaksana'): ?>
                                <a href="<?php echo strtolower($this->uri->segment(1)); ?>/<?php echo strtolower($this->uri->segment(2)); ?>/t.html" class="btn btn-primary" style="float:right;">Tambah Bahan Berita</a>
                            <?php endif; ?>
                        </div>
                    </div>
                    <br>
                    <div class="table-responsive">
                        <table id="data-table" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th width="1%">No.</th>
                                <th width="45%">Judul</th>
                                <th>Status</th>
                                <th>Jenis</th>
                                <th width="15%" style="text-align: center">Aksi</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php
                            $no=1;
                            foreach ($query->result() as $baris):?>
                                <tr>
                                    <td><b><?php echo $no++; ?>.</b> </td>
                                    <td><?php echo $baris->nama_kegiatan; ?></td>
                                    <td><?php echo $this->Mcrud->cek_status_berita($baris->status); ?></td>
                                    <td><?php echo $baris->jenis_dokumen; ?></td>
                                    <td align="center">
                                        <a href="<?php echo base_url($baris->lamp_surat_undangan);?>"
                                           class="btn btn-info btn-xs" title="Download"
                                           download="">

                                            <i class="fa fa-download"></i>
                                        </a>
                                        <a href="<?php echo $link1; ?>/v/h/<?php echo hashids_encrypt($baris->id_berita); ?>/pemkab_lombok_timur"
                                           class="btn btn-danger btn-xs"
                                           title="Hapus Dokumen" onclick="return confirm('Anda yakin?');">
                                            <i class="fa fa-trash-o"></i>
                                        </a>

                                        <a href="<?php echo $link1; ?>/v/e/<?php echo hashids_encrypt($baris->id_berita); ?>/pemkab_lombok_timur"
                                           class="btn btn-success btn-xs" title="Edit">
                                            <i class="fa fa-edit"></i>
                                        </a>

                                    </td>
<!--                                    <td style="text-align: center">-->
<!--                                        <a href="--><?php //echo base_url($baris->lamp_surat_undangan);?><!--"-->
<!--                                           class="btn btn-info btn-xs" title="Detail"-->
<!--                                           download="">-->
<!---->
<!--                                            <i class="fa fa-download"></i>-->
<!--                                        </a>-->
<!--                                    </td>-->

                                </tr>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- end panel -->
        </div>
        <!-- end col-12 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->

<?php $this->load->view('users/berita/modal_konfirm'); ?>
