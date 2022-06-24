<div class="container-fluid">

    <div class="alert alert-success" role="alert">
        <i class="fas fa-envelope"></i>
        <strong>Form Masuk Ajukan Surat </strong>
    </div>
    <div class="card">
    <div class="card-body">
    <form method="post" action="<?php echo base_url('user/surat/surat_aksi') ?>">
        <div class="form-group">
            <label>NIM Mahasiswa</label>
            <input type="text" name="nim" placeholder="Masukan NIM Mahasiswa" class="form-control">
            <?php echo form_error('nim', '<div class="text-danger small ml-2">', '<div>') ?>
        </div>
        <button type="submit" class="btn btn-primary">Proses</button>
</div>
</div>
</div>
</form>
</div>