<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class KalenderController extends BaseController
{
    public function index()
    {   
        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('kalender/v_kalender');
        echo view('layout/v_footer');
    }
}
