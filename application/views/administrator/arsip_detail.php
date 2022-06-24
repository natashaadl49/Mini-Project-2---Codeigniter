<div class="container-fluid">
    <div class="alert alert-success" role="alert">
        <i class="fas fa-eye"></i>
        <strong>Detail </strong>
    </div>
    <div class="card">
    <div class="card-body">
    <?php echo anchor('administrator/arsip','<div class="btn btn-sm btn-primary">Kembali</div>')
         ?>
    <!-- <?php echo anchor('administrator/arsip/print','<div class="btn btn-sm btn-info">Print</div>')
         ?> -->
    </div>
    </div>


    <div class="card">
    <div class="card-body">

    <table class="table">
    <?php foreach($detail as $dt) : ?>
        <tr>
        <td>NIM</td>
        <td><?php echo $dt->nim; ?></td>
        </tr>

        <tr>
        <td>Nama Lengkap</td>
        <td><?php echo $dt->nama; ?></td>
        </tr>

        <tr>
        <td>Jenis Surat</td>
        <td><?php echo $dt->kategori; ?></td>
        </tr>

        <tr>
        <td>Isi</td>
        <td><?php echo $dt->berkas; ?></td>
        </tr>

        <!-- <td> <a href="<?php echo $dt->filedoc; ?>" class="text-light font-weight-bold btn-sm btn-info">Unduh</a> </td>  -->

        <?php endforeach; ?>   
         </table>
    </div>
    </div>
    <br> <br>
</div>


