<div class="container-fluid">
    <div class="alert alert-success" role="alert">
        <i class="fa fa-user-graduate"></i>
        <strong>Daftar Mahasiswa </strong>
    </div>
    <?php echo anchor('administrator/mahasiswa/tambah_mahasiswa', '
    <button class="btn btn-sm btn-primary mb-3"><i class="fas fa-plus fa-sm"></i> Tambah Data</button>') ?>
    <div class="card">
    <div class="card-body">
    <table class="table table-bordered">
        <tr>
            <th scope="col">No</th>
            <th scope="col">NIM</th>
            <th scope="col">Nama lengkap</th>
            <th scope="col">Alamat</th>
            <th scope="col">Telepon</th>
            <th colspan="4">Aksi</th>
        </tr>

        <?php
        $no = 1;
        foreach ($mahasiswa as $mhs) :
        ?>
            <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $mhs->nim ?></td>
                <td><?php echo $mhs->nama ?></td>
                <td><?php echo $mhs->alamat ?></td>
                <td><?php echo $mhs->telepon ?></td>
                <td width="20px"><?php echo anchor('administrator/mahasiswa/delete/' . $mhs->id, '<div class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></div>') ?></td>

</div>
</td>




</tr>
<?php endforeach; ?>
</div>
</div>
</div>
</div>
</div>