<div class="container-fluid">

    <div class="alert alert-success" role="alert">
        <i class="fas fa-fw fa-plus"></i>
        <strong>Form Ajukan Surat</strong>
    </div>
    <div class="card">
    <div class="card-body">
    <form method="post" action="<?php echo base_url('user/surat/tambah_surat_aksi') ?>">

        <div class="form-group">
            <label>Tanggal</label>
            <input type="date" name="tanggal" placeholder="Masukan NIM Mahasiswa" class="form-control">
        </div>


        <div class="form-group">
            <label>NIM</label>
            <input type="hidden" name="id_arsip[]" class="form-control" value="<?php echo $id_arsip; ?>">
            <input type="text" name="nim" class="form-control" value="<?php echo $nim; ?>" readonly>
        </div>

        <div class="form-group">
            <label>NIM</label>
            <input type="hidden" name="id_arsip[]" class="form-control" value="<?php echo $id_arsip; ?>">
            <input type="text" name="nama" class="form-control" value="<?php echo $nama; ?>" readonly>
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
            <label>Alasan (Opsional)</label>
            <input type="text" name="berkas" class="form-control">
        </div>

        <div class="form-group">
            <input type="hidden" name="status" value="Perlu Tindakan">
        </div>

        <div class="form-group">
            <input type="hidden" name="filedoc" value="<?php echo base_url('user/surat/alert') ?>">
        </div>


        <button type="submit" class="btn btn-primary">Simpan</button>
        </div>
        </div>
    </form>
</div>