<?php

namespace App\Controllers;

use App\Models\NotifikasiModel;
use App\Controllers\BaseController;

class NotifikasiController extends BaseController
{
    public function index()
    {   
        $model = new NotifikasiModel;
        $data['title'] = 'Data Notifikasi';
        $data['getNotifikasi'] = $model->getNotifikasi();

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('notifikasi/v_notifikasi', $data);
        echo view('layout/v_footer');
    }
}
