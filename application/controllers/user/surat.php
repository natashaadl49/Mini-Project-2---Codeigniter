<?php

class Surat extends CI_Controller
{
    public function index()
    {
        $data = array(
            'nim'           => set_value('nim')
        );
        $this->load->view('templates_user/header');
        $this->load->view('templates_user/sidebar');
        $this->load->view('user/surat', $data);
        $this->load->view('templates_user/footer');
    }

    public function surat_aksi()
    {
        $nim = $this->input->post('nim');
        $data = array(
            'nim' => $nim,
            'nama' => $this->mahasiswa_model->get_by_id($nim)->nama
        );
        $dataSurat = array(
            'surat_data'        => $this->baca_surat($nim),
            'nim'               => $nim,
            'nama'  => $this->mahasiswa_model->get_by_id($nim)
                ->nama
        );
        $this->load->view('templates_user/header');
        $this->load->view('templates_user/sidebar');
        $this->load->view('user/surat_list', $dataSurat);
        $this->load->view('templates_user/footer');
    }

    public function baca_surat($nim)
    {
        $this->db->select('a.id_arsip,
        a.tanggal,
        a.nim,
        a.nama,
        a.kategori,
        a.filedoc,
        a.status');
        $this->db->from('arsip as a');
        $this->db->where('a.nim', $nim);
        $surat = $this->db->get()->result();
        return $surat;
    }

    public function tambah_surat($nim)
    {
        $data = array(
            'id_arsip'        => set_value('id_arsip'),
            'nama'  => $this->mahasiswa_model->get_by_id($nim)
                ->nama,
            'nim'           => $nim,
        );
        $this->load->view('templates_user/header');
        $this->load->view('templates_user/sidebar');
        $this->load->view('user/surat_form', $data);
        $this->load->view('templates_user/footer');
    }
    public function tambah_surat_aksi()
    {
        $tanggal = $this->input->post('tanggal');
        $nim = $this->input->post('nim');
        $nama = $this->input->post('nama');
        $id_kategori = $this->input->post('kategori');
        $berkas = $this->input->post('berkas');
        $filedoc = $this->input->post('filedoc');
        $status = $this->input->post('status');
        


        $data = array(
            'tanggal' => $tanggal,
            'nim' => $nim,
            'nama' => $nama,
            'kategori' => $id_kategori,
            'berkas' => $berkas,
            'filedoc' => $filedoc,
            'status' => $status,

        );
        $this->surat_model->insert($data, 'arsip');
        redirect('user/surat');
    }

    public function alert()
    {
        $this->load->view('templates_user/header');
        $this->load->view('templates_user/sidebar');
        $this->load->view('user/alert');
        $this->load->view('templates_user/footer');
    }
}
