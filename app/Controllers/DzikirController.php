<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class DzikirController extends BaseController
{
    public function index()
    {   
        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('dzikir/v_dzikir');
        echo view('layout/v_footer');
    }
}
