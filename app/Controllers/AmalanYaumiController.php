<?php

namespace App\Controllers;

use App\Models\AmalanYaumiModel;
use App\Controllers\BaseController;

class AmalanYaumiController extends BaseController
{
    public function index()
    {
        $model = new AmalanYaumiModel;
        $data['session'] = session();
        $data['title'] = 'Data Amalan Yaumi';
        $data['getAmalanYaumiByStatus'] = $model->getAmalanYaumiByStatus();

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('amalan_yaumi/v_amalan_yaumi', $data);
        echo view('layout/v_footer');
    }
}
