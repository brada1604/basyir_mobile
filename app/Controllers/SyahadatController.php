<?php

namespace App\Controllers;

use App\Controllers\BaseController;
// use App\Models\SyahadatModel;

class SyahadatController extends BaseController
{
    public function index()
    {
        // $model = new SyahadatModel();
        $data['title'] = 'Data Syahadat';

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('syahadat/v_syahadat', $data);
        echo view('layout/v_footer');
    }
}