<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class NotifikasiController extends BaseController
{
    public function index()
    {   
        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('notifikasi/v_notifikasi');
        echo view('layout/v_footer');
    }
}
