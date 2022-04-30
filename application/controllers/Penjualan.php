<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penjualan extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('Penjualan_model');
  }


  public function index()
  {
    $data['title'] = "Soal A | Test Kompas Gramedia";

    // Laporan Penjualan
    $data['penjualan'] = $this->Penjualan_model->allPenjualan();
    $data['total_terjual'] = $this->Penjualan_model->total_terjual();
    $data['total_sebelum_diskon'] = $this->Penjualan_model->total_sebelum_diskon();
    $data['total_setelah_diskon'] = $this->Penjualan_model->total_setelah_diskon();
    $data['berat_rata2'] = $this->Penjualan_model->berat_rata2();
    $data['best_seller'] = $this->Penjualan_model->best_seller();

    $this->load->view('soal_1', $data);
  }
}
