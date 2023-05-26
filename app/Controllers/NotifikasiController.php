<?php

namespace App\Controllers;

use App\Models\NotifikasiModel;
use App\Models\TargetNotifikasiModel;
use App\Controllers\BaseController;

class NotifikasiController extends BaseController
{
    public function index()
    {   
        $model_target_notifikasi = new TargetNotifikasiModel;
        $data['title'] = 'Data Notifikasi';
        $data['getNotifikasiByIdUserLogin'] = $model_target_notifikasi->getNotifikasiByIdUserLoginMobile();

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('notifikasi/v_notifikasi', $data);
        echo view('layout/v_footer');
    }

    public function read($id)
    {
        $model = new TargetNotifikasiModel();
        $id_target_notifikasi = $id;

        $data = [
            'jenis_notifikasi' => '2'
        ];

        $model->update($id_target_notifikasi, $data);

        return redirect()->to(base_url($_SERVER['HTTP_REFERER']));
    }
}
