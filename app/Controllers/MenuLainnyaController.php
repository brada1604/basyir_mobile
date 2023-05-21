<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MenuLainnyaModel;

class MenuLainnyaController extends BaseController
{
    public function index()
    {
        $model = new MenuLainnyaModel();
        // $data['session'] = session();
        $data['title'] = 'Data Menu Lainnya';
        // $data['getKutipan'] = $model->getKutipan();

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('menu/v_menu_lainnya', $data);
        echo view('layout/v_footer');
    }
}
