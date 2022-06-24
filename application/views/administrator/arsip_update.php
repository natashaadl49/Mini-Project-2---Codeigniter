<div class="container-fluid">

    <div class="alert alert-success" role="alert">
        <i class="fas fa-fw fa-university"></i>
        <strong>Tindakan</strong>
    </div>
    <div class="card">
    <div class="card-body">

    <table class="table">
    <?php foreach($arsip as $ars) : ?>
        <tr>
        <td>NIM</td>
        <td><?php echo $ars->nim; ?></td>
        </tr>

        <tr>
        <td>Nama Lengkap</td>
        <td><?php echo $ars->nama; ?></td>
        </tr>

        <tr>
        <td>Jenis Surat</td>
        <td><?php echo $ars->kategori; ?></td>
        </tr>

        <?php endforeach; ?>   
         </table>

    <?php foreach ($arsip as $ars) : ?>
        <form method="post" action="<?php echo base_url('administrator/arsip/update_aksi') ?> ">
            <div class="form-group">
            <label>Aksi</label>
                <input type="hidden" name="id_arsip" value="<?php echo $ars->id_arsip ?>">
                <br>
                <select name="status" class="form-control">
                    <option value=""> --Pilih Tindakan-- </option>
                    <?php foreach ($status as $sta) : ?>
                        <option value="<?php echo $sta->status ?>">
                            <?php echo $sta->status; ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <!-- <div class="form-group">
            <label>File Link Word</label>
            <input type="hidden" name="filedoc" class="form-control" value="<?php echo $ars->filedoc ?>">
            <?php echo form_error('filedoc','<div class="text-danger small ml-3">', '</div>') ?>
        </div> -->

        <div class="form-group">
        <label>File Link Word</label>
        <select name="filedoc" class="form-control">
        <option value=""> --Pilih File Surat (PDF)-- </option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Keterangan Mahasiswa</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Pengantar</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Observasi (Studi Pendahuluan)</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Penelitian</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Observasi Tugas Mata Kuliah</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Permohonan Izin Tempat</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Keterangan Lulus</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Izin Kunjungan</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Ucapan Terimakasih</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Permohonan Ahli</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Surat Rekomendasi Kampus Mengajar</option>
        <option value="https://1drv.ms/b/s!AmsRsSNC-r3igQQ5n1S5FwRJQJxP?e...">Pengajuan Lembar Pengesahan Laporan Kampus Mengajar </option>
    </select>
  </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
</div>

</form>

<?php endforeach; ?>

</div>
</div>
</div>