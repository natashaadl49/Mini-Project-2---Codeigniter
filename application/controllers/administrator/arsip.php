<?php

class Arsip extends CI_Controller
{
    public function index()
    {
        $data['arsip'] = $this->arsip_model
        ->tampil_data('arsip')->result();

        $this->load->view('templates_administrator/header');
        $this->load->view('templates_administrator/sidebar');
        $this->load->view('administrator/arsip',$data);
        $this->load->view('templates_administrator/footer');
    }

    function delete($id_arsip)
    {
        $where = array('id_arsip' => $id_arsip);
        $this->arsip_model->delete($where, 'arsip');
        redirect('administrator/arsip');
    }

    public function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    public function tambah_arsip()
    {
        $this->load->view('templates_administrator/header');
        $this->load->view('templates_administrator/sidebar');
        $this->load->view('administrator/arsip_form');
        $this->load->view('templates_administrator/footer');
    }

    public function tambah_arsip_aksi()
    {

        $tanggal = $this->input->post('tanggal');
        $nim = $this->input->post('nim');
        $nama = $this->input->post('nama');
        $kategori = $this->input->post('kategori');
        $berkas = $this->input->post('berkas');
        $status = $this->input->post('status');
        

        $data = array(
            'tanggal' => $tanggal,
            'nim' => $nim,
            'nama' => $nama,
            'kategori' => $kategori,
            'berkas' => $berkas,
            'status' => $status
           

        );
        $this->arsip_model->insert_data($data, 'arsip');
        redirect('administrator/arsip');
    }

    

    function update($id_arsip)
    {
        $where = array('id_arsip' => $id_arsip);
        $data['arsip'] = $this->arsip_model->edit_data($where, 'arsip')->result();
        $data['status'] = $this->arsip_model->tampil_data('status')->result();
        $this->load->view('templates_administrator/header');
        $this->load->view('templates_administrator/sidebar');
        $this->load->view('administrator/arsip_update', $data);
        $this->load->view('templates_administrator/footer');
    }

    public function update_aksi()
    {
        $id = $this->input->post('id_arsip');
        $status = $this->input->post('status');
        $filedoc = $this->input->post('filedoc');

        $data = array(
            'status' => $status,
            'filedoc' => $filedoc
        );

        $where = array(
            'id_arsip' => $id
        );
        $this->arsip_model->update_data($where, $data, 'arsip');
        redirect('administrator/arsip');
    }

    public function detail($id)
    {
        $data['detail'] = $this->arsip_model->ambil_id_arsip($id);
        $this->load->view('templates_administrator/header');
        $this->load->view('templates_administrator/sidebar');
        $this->load->view('administrator/arsip_detail', $data);
        $this->load->view('templates_administrator/footer');
    }
}
