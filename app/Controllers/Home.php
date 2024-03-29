<?php

namespace App\Controllers;

use App\Models\BeritaModel;
use App\Models\WawasanIslamiModel;
use App\Models\KutipanModel;

class Home extends BaseController
{
    public function index()
    {
        // Ambil Berita
        $model_berita = new BeritaModel;
        $data['getBeritaLandingPage'] = $model_berita->getBeritaLandingPage();
        // Ambil Berita - End

        // Ambil Wawasan Islami
        $model_wawasan_islami = new WawasanIslamiModel;
        $data['getWawasanIslamiLandingPage'] = $model_wawasan_islami->getWawasanIslamiLandingPage();
        // Ambil Wawasan Islami - End

        // Ambil Kutipan
        $model_kutipan = new KutipanModel;
        $data['getKutipanLandingPage'] = $model_kutipan->getKutipanLandingPage();
        // Ambil Kutipan - End

        // Setting API Jadwal Solat
        $today = date('Y-m-d'); // Tanggal hari ini
        $id_kota = 770; // KOTA BANDUNG

        $url = 'https://api.banghasan.com/sholat/format/json/jadwal/kota/' . $id_kota . '/tanggal/' . $today; // URL API eksternal yang ingin diambil datanya

        // var_dump($url);
        // die();

        $ch = curl_init(); // Inisialisasi CURL
        curl_setopt($ch, CURLOPT_URL, $url); // Set URL yang ingin diambil
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // Aktifkan opsi untuk mengembalikan hasil sebagai string

        $response = curl_exec($ch); // Eksekusi permintaan HTTP
        curl_close($ch); // Tutup koneksi CURL

        $data_jadwal = json_decode($response); // proses decode JSON

        $data['pengingat_imsak'] = $data_jadwal->jadwal->data->imsak;
        $data['pengingat_subuh'] = $data_jadwal->jadwal->data->subuh;
        $data['pengingat_dzuhur'] = $data_jadwal->jadwal->data->dzuhur;
        $data['pengingat_ashar'] = $data_jadwal->jadwal->data->ashar;
        $data['pengingat_maghrib'] = $data_jadwal->jadwal->data->maghrib;
        $data['pengingat_isya'] = $data_jadwal->jadwal->data->isya;
        // Setting API Jadwal Solat - End

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('home/v_home', $data);
        echo view('layout/v_footer');
    }

    public function index2()
    {
        $nama = $this->request->getVar('nama');


        // Setting API id Kota
        $url_3 = 'https://api.banghasan.com/sholat/format/json/kota/nama/' . str_replace(" ", "%20", $nama); // URL API eksternal yang ingin diambil datanya

        $ch_3 = curl_init(); // Inisialisasi CURL
        curl_setopt($ch_3, CURLOPT_URL, $url_3); // Set URL yang ingin diambil
        curl_setopt($ch_3, CURLOPT_RETURNTRANSFER, true); // Aktifkan opsi untuk mengembalikan hasil sebagai string

        $response_3 = curl_exec($ch_3); // Eksekusi permintaan HTTP
        curl_close($ch_3); // Tutup koneksi CURL

        $data_id_kota = json_decode($response_3); // proses decode JSON

        $id = $data_id_kota->kota[0]->id;
        $nama = $data_id_kota->kota[0]->nama;


        $model_berita = new BeritaModel;
        $model_wawasan_islami = new WawasanIslamiModel;

        $data['getBeritaLandingPage'] = $model_berita->getBeritaLandingPage();
        $data['getWawasanIslamiLandingPage'] = $model_wawasan_islami->getWawasanIslamiLandingPage();

        // Setting API Jadwal Solat
        $today = date('Y-m-d');
        $id_kota = $id; // Kota bandung
        $data['nama_kota'] = $nama;

        $url = 'https://api.banghasan.com/sholat/format/json/jadwal/kota/' . $id_kota . '/tanggal/' . $today; // URL API eksternal yang ingin diambil datanya

        $ch = curl_init(); // Inisialisasi CURL
        curl_setopt($ch, CURLOPT_URL, $url); // Set URL yang ingin diambil
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // Aktifkan opsi untuk mengembalikan hasil sebagai string

        $response = curl_exec($ch); // Eksekusi permintaan HTTP
        curl_close($ch); // Tutup koneksi CURL

        $data_jadwal = json_decode($response); // proses decode JSON

        $data['pengingat_imsak'] = $data_jadwal->jadwal->data->imsak;
        $data['pengingat_subuh'] = $data_jadwal->jadwal->data->subuh;
        $data['pengingat_dzuhur'] = $data_jadwal->jadwal->data->dzuhur;
        $data['pengingat_ashar'] = $data_jadwal->jadwal->data->ashar;
        $data['pengingat_maghrib'] = $data_jadwal->jadwal->data->maghrib;
        $data['pengingat_isya'] = $data_jadwal->jadwal->data->isya;
        // Setting API - End

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
        return view('welcome', $data);
    }

    public function index3()
    {
        $data['nama_kota'] = 'KOTA SURABAYA';
        $model_berita = new BeritaModel;
        $model_wawasan_islami = new WawasanIslamiModel;

        $data['getBeritaLandingPage'] = $model_berita->getBeritaLandingPage();
        $data['getWawasanIslamiLandingPage'] = $model_wawasan_islami->getWawasanIslamiLandingPage();

        // Setting API Jadwal Solat
        $today = date('Y-m-d');
        $id_kota = 770; // Kota bandung

        $url = 'https://api.banghasan.com/sholat/format/json/jadwal/kota/' . $id_kota . '/tanggal/' . $today; // URL API eksternal yang ingin diambil datanya

        $ch = curl_init(); // Inisialisasi CURL
        curl_setopt($ch, CURLOPT_URL, $url); // Set URL yang ingin diambil
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // Aktifkan opsi untuk mengembalikan hasil sebagai string

        $response = curl_exec($ch); // Eksekusi permintaan HTTP
        curl_close($ch); // Tutup koneksi CURL

        $data_jadwal = json_decode($response); // proses decode JSON

        $data['pengingat_imsak'] = $data_jadwal->jadwal->data->imsak;
        $data['pengingat_subuh'] = $data_jadwal->jadwal->data->subuh;
        $data['pengingat_dzuhur'] = $data_jadwal->jadwal->data->dzuhur;
        $data['pengingat_ashar'] = $data_jadwal->jadwal->data->ashar;
        $data['pengingat_maghrib'] = $data_jadwal->jadwal->data->maghrib;
        $data['pengingat_isya'] = $data_jadwal->jadwal->data->isya;
        // Setting API - End

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
        return view('layout/v_header');
        return view('layout/v_buttom_navbar');
        return view('home/v_home', $data);
        return view('layout/v_footer');
    }
}
