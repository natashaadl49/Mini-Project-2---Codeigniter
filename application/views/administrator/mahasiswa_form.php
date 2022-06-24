<div class="container-fluid">
    <div class="alert alert-success" role="alert">
        <i class="fas fa-user-graduate"></i>
        <strong>Form Input Mahasiswa </strong>
    </div>

    <?php echo form_open_multipart('administrator/mahasiswa/tambah_mahasiswa_aksi') ?>
    <div class="form-group">
        <label>NIM</label>
        <input type="text" name="nim" class="form-control">
    </div>

    <div class="form-group">
        <label>Nama Lengkap</label>
        <input type="text" name="nama" class="form-control">
    </div>

    <div class="form-group">
        <label>Alamat</label>
        <input type="text" name="alamat" class="form-control">
    </div>

    <div class="form-group">
        <label>Telepon</label>
        <input type="text" name="telepon" class="form-control">
    </div>

    <button type="submit" class="btn btn-primary mb-5 mt-3">Simpan</button>

</div>