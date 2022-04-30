<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kurs extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
  }

  public function index()
  {
    $data['title'] = "Soal C | Test Kompas Gramedia";

    // kurs
    $urlAPI = 'https://api.exchangerate.host/latest';
    $ambilKurs = file_get_contents($urlAPI);
    $data['kurs'] = json_decode($ambilKurs);

    // get Date
    date_default_timezone_set('Asia/Jakarta');
    $data['timestamp'] = mdate('%d %M %Y %H:%i', time());

    $this->load->view('soal_3', $data);
  }
}
