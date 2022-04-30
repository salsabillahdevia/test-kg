<?php
defined('BASEPATH') or exit('No direct script access allowed');

class SwitchCase extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
  }

  public function index()
  {
    $data['title'] = "Soal 4 | Test Kompas Gramedia";

    $this->load->view('soal_4', $data);
  }
}
