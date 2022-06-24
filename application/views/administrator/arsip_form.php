<div class="container-fluid">
    <div class="alert alert-success" role="alert">
        <i class="fas fa-user-graduate"></i>
        <strong>Form Input Arsip </strong>
    </div>

    <?php echo form_open_multipart('administrator/arsip/tambah_arsip_aksi') ?>
    <div class="form-group">
        <label>Tanggal</label>
        <input type="date" name="tanggal" class="form-control">

    </div>

    <div class="form-group">
        <label>Nomor Induk Mahasiswa</label>
        <input type="text" name="nim" class="form-control">

    </div>

    <div class="form-group">
        <label>Nama Mahasiswa</label>
        <input type="text" name="nama" class="form-control">

    </div>

    <div class="form-group">
        <label>Jenis Surat</label>
        <select name="kategori" class="form-control">
            <option value="">-- Pilih Kategori --</option>
            <option>Surat Keterangan Mahasiswa</option>
            <option>Surat Pengantar</option>
            <option>Surat Observasi (Studi Pendahuluan)</option>
            <option>Surat Penelitian</option>
            <option>Surat Observasi Tugas Mata Kuliah</option>
            <option>Surat Permohonan Izin Tempat</option>
            <option>Surat Keterangan Lulus</option>
            <option>Surat Izin Kunjungan</option>
            <option>Surat Ucapan Terimakasih</option>
            <option>Surat Permohonan Ahli</option>
            <option>Surat Rekomendasi Kampus Mengajar</option>
            <option>Pengajuan Lembar Pengesahan Laporan Kampus Mengajar </option>
        </select>
    </div>

    <div class="form-group">
        <label>Isi</label>
        <input type="text" name="berkas" class="form-control">

    </div>

    <div class="form-group">
        <input type="hidden" name="status" value="Perlu Tindakan">
    </div>
    <button type="submit" class="btn btn-primary mb-5 mt-3">Simpan</button>

    <?php form_close(); ?>

</div>