<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/bootstrap.css' ?>">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">

<div class="container-fluid">
    <div class="alert alert-success" role="alert">
        <i class="fas fa-fw fa-university"></i>
        <strong>Pengajuan Surat</strong>
    </div>
    <center class=mb-4>
        <legend class="mt-3"><strong>List Surat</strong></legend>
        <table>

            <tr>
                <td><strong>NIM</strong></td>
                <td>&nbsp;: <?php echo $nim ?></td>
            </tr>

            <tr>
                <td><strong>Nama Lengkap</strong></td>
                <td>&nbsp;: <?php echo $nama ?></td>
            </tr>

        </table>
    </center>
    <?php echo anchor('user/surat/tambah_surat/' . $nim, '<button class="btn btn-sm btn-primary 
    mb-3"><i class="fas fa-plus fa-sm">
    </i> Ajukan Surat</button>') ?>
    <div class="card">
    <div class="card-body">
    <table class="table table-sm" id="example">
    <thead class="thead-light">
        <tr>
            <th scope="col">NO</th>
            <th scope="col">TANGGAL</th>
            <th scope="col">KATEGORI</th>
            <th scope="col">FILE</th>
            <th scope="col">STATUS</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $no = 1;
        foreach ($surat_data as $srt) : ?>
            <tr>
                <td width="20px"><?php echo $no++ ?> </td>
                <td><?php echo $srt->tanggal; ?></td>
                <td><?php echo $srt->kategori; ?></td>
                <td> <a href="<?php echo $srt->filedoc; ?>" class="text-light font-weight-bold btn-sm btn-info">Unduh</a> </td> 
                <td><?php echo $srt->status; ?></td>
                </th> </tr>
        <?php endforeach; ?>
        </tbody>
  </table>
  </div>
</div>
</div>
</div>


</div>