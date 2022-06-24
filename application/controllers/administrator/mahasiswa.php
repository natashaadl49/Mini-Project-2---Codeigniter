<?php

class Mahasiswa extends CI_Controller
{
    public function index()
    {
        $data['mahasiswa'] = $this->mahasiswa_model->tampil_data('mahasiswa')
            ->result();
        $this->load->view('templates_administrator/header');
        $this->load->view('templates_administrator/sidebar');
        $this->load->view('administrator/mahasiswa', $data);
        $this->load->view('templates_administrator/footer');
    }

    public function tambah_mahasiswa()
    {
        $this->load->view('templates_administrator/header');
        $this->load->view('templates_administrator/sidebar');
        $this->load->view('administrator/mahasiswa_form');
        $this->load->view('templates_administrator/footer');
    }

    public function tambah_mahasiswa_aksi()
    {
        $nim = $this->input->post('nim');
        $nama = $this->input->post('nama');
        $alamat = $this->input->post('alamat');
        $telepon = $this->input->post('telepon');

        $data = array(
            'nim' => $nim,
            'nama' => $nama,
            'alamat' => $alamat,
            'telepon' => $telepon
        );
        $this->mahasiswa_model->insert_data($data, 'mahasiswa');
        redirect('administrator/mahasiswa');
    }

    function delete($id)
    {
        $where = array('id' => $id);
        $this->mahasiswa_model->delete_data($where, 'mahasiswa');
        redirect('administrator/mahasiswa');
    }
}
