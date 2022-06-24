<?php

class Arsip_model extends CI_Model

{
    public function tampil_data($table)
    {
        return $this->db->get($table);
    }

    public function delete($where,$table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public $table = 'arsip';
    public $id = 'id';



    public function insert_data($data, $table)
    {
        $this->db->insert($table, $data);
    }

    // public $table = 'arsip';

    // function delete_data($where, $table)
    // {
    //     $this->db->where($where);
    //     $this->db->delete($table);
    // }

    public function edit_data($where, $table)
    {
        return $this->db->get_where($table, $where);
    }
    public function update_data($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }

    public function ambil_id_arsip($id)
    {
        $hasil = $this->db->where('id_arsip', $id)->get('arsip');
        if ($hasil->num_rows() > 0) {
            return $hasil->result();
        } else {
            return false;
        }
    }

    function total_rows() {
        return $this->db->get('arsip')->num_rows();
      }

      
}
