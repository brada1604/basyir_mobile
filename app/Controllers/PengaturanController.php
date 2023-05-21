<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\PengaturanModel;

class PengaturanController extends BaseController
{
    public function index()
    {
        $model = new PengaturanModel();
        $data['title'] = 'Data Rencana Kegiatan';
        // $data['getPengaturan'] = $model->getPengaturanLandingPage();

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('pengaturan/v_pengaturan', $data);
        echo view('layout/v_footer');
    }
}
