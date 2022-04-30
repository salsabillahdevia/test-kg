<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penjualan_model extends CI_Model
{
  public function allPenjualan()
  {
    return $this->db->get('penjualan_buku')->result_array();
  }

  public function total_terjual()
  {
    $this->db->select_sum('jumlah');
    return $this->db->get('penjualan_buku')->row_array();
  }

  public function total_sebelum_diskon()
  {
    return $this->db->select_sum('(harga * jumlah)', 'total')->from('penjualan_buku')->get()->row_array();
  }

  public function total_setelah_diskon()
  {
    $this->db->select_sum('harga_setelah_diskon');
    return $this->db->get('penjualan_buku')->row_array();
  }

  public function berat_rata2()
  {
    // $this->db->select_avg('berat');
    // return $this->db->get('penjualan_buku')->row_array();
    return $this->db->select_avg('(berat * jumlah)', 'total')->from('penjualan_buku')->get()->row_array();
  }

  public function best_seller()
  {
    $this->db->select('judul, SUM(jumlah) AS total');
    $this->db->group_by('judul');
    $this->db->order_by('total', 'desc');
    $this->db->limit(5);
    return $this->db->get('penjualan_buku')->result_array();
  }
}
