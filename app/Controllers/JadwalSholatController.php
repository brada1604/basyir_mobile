<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class JadwalSholatController extends BaseController
{
    public function jadwal_sholat_wajib()
    {
        // API JADWAL SHOLAT WAJIB
        $data['nama_kota'] = 'KOTA BANDUNG'; // Default Kota

        // Setting API Jadwal Solat
        $today = date('Y-m-d'); // Tanggal hari ini
        $id_kota = 703; // KOTA BANDUNG

        $url = 'https://api.banghasan.com/sholat/format/json/jadwal/kota/' . $id_kota . '/tanggal/' . $today; // URL API eksternal yang ingin diambil datanya

        // var_dump($url);
        // die();

        $ch = curl_init(); // Inisialisasi CURL
        curl_setopt($ch, CURLOPT_URL, $url); // Set URL yang ingin diambil
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // Aktifkan opsi untuk mengembalikan hasil sebagai string

        $response = curl_exec($ch); // Eksekusi permintaan HTTP
        curl_close($ch); // Tutup koneksi CURL

        $data_jadwal = json_decode($response); // proses decode JSONssf

        $data['pengingat_imsak'] = $data_jadwal->jadwal->data->imsak;
        $data['pengingat_subuh'] = $data_jadwal->jadwal->data->subuh;
        $data['pengingat_dzuhur'] = $data_jadwal->jadwal->data->dzuhur;
        $data['pengingat_ashar'] = $data_jadwal->jadwal->data->ashar;
        $data['pengingat_maghrib'] = $data_jadwal->jadwal->data->maghrib;
        $data['pengingat_isya'] = $data_jadwal->jadwal->data->isya;
        // Setting API Jadwal Solat - End

        // Setting API Kota
        $url_2 = 'https://api.banghasan.com/sholat/format/json/kota'; // URL API eksternal yang ingin diambil datanya

        $ch_2 = curl_init(); // Inisialisasi CURL
        curl_setopt($ch_2, CURLOPT_URL, $url_2); // Set URL yang ingin diambil
        curl_setopt($ch_2, CURLOPT_RETURNTRANSFER, true); // Aktifkan opsi untuk mengembalikan hasil sebagai string

        $response_2 = curl_exec($ch_2); // Eksekusi permintaan HTTP
        curl_close($ch_2); // Tutup koneksi CURL

        $data_kota = json_decode($response_2); // proses decode JSON

        $data['kota'] = $data_kota->kota;
        // Setting API Kota - End

        // API JADWAL SHOLAT WAJIB - END
        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('jadwal_sholat/v_jadwal_sholat_wajib', $data);
        echo view('layout/v_footer');
    }

    public function sholat_sunnah()
    {

        $data['session'] = session();
        $data['title'] = 'Sholat Sunnah';

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('jadwal_sholat/v_jadwal_sholat_sunnah', $data);
        echo view('layout/v_footer');
    }

    public function dhuha()
    {

        $data['session'] = session();
        $data['title'] = 'Sholat Sunnah';

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('jadwal_sholat/v_dhuha', $data);
        echo view('layout/v_footer');
    }

    public function rawatib()
    {

        $data['session'] = session();
        $data['title'] = 'Sholat Sunnah';

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('jadwal_sholat/v_rawatib', $data);
        echo view('layout/v_footer');
    }

    public function tahajud()
    {

        $data['session'] = session();
        $data['title'] = 'Sholat Sunnah';

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('jadwal_sholat/v_tahajud', $data);
        echo view('layout/v_footer');
    }
}
