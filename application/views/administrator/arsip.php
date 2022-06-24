<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/bootstrap.css' ?>">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
<div class="container-fluid">

     <div class="alert alert-success" role="alert">
        <i class="fas fa-envelope"></i>
        <strong>Daftar Surat Masuk </strong>
    </div> 
    <?php echo $this->session->flashdata('pesan') ?>
    <?php echo anchor('administrator/arsip/tambah_arsip', '
    <button class="btn btn-sm btn-primary mb-3"><i class="fas fa-plus fa-sm"></i> Tambah Data</button>') ?>
    
     <div class="card">
    <div class="card-body">
     <table class="table table-sm" id="example">
  <thead class="thead-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tanggal</th>
      <th scope="col">NIM</th>
	    <th scope="col">Nama</th>
      <th scope="col">Kategori</th>
      <!-- <th scope="col">Isi</th> -->
      <th scope="col">Status</th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <?php 
        $no = 1;
        foreach($arsip as $ars) : ?>
        <tr>
            <td><?php echo $no++; ?></td>
            <td><?php echo $ars->tanggal ?></td>
            <td><?php echo $ars->nim ?></td>
            <td><?php echo $ars->nama ?></td>
            <td><?php echo $ars->kategori ?></td>
            <td><?php echo $ars->status ?></td>
            <td width="20px"><?php echo anchor('administrator/arsip/detail/' . $ars->id_arsip, '<div class="btn btn-sm btn-primary"><i class="fa fa-eye"></i></div>') ?></td>
            <td width="20px"><?php echo anchor('administrator/arsip/delete/' . $ars->id_arsip, '<div class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></div>') ?></td>
            <td width="20px"><?php echo anchor('administrator/arsip/update/' . $ars->id_arsip, '<div class="btn btn-sm btn-warning"><i class="fa fa-edit"></i></div>') ?></td>
      </th></tr>
      <?php endforeach; ?>
</tbody>
  </table>
  </div>
</div>

</div>
</div>