<?php

class Surat_model extends CI_model
{
    public $table = 'arsip';
    public $id    = 'id_arsip';

    public function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    public function tampil_data()
    {
        return $this->db->get('arsip');
    }

    public function insert($data)
    {
        $this->db->insert($this->table, $data);
    }
}
