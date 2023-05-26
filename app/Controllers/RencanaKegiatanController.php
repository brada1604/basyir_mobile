<?php

namespace App\Controllers;

use App\Models\DetailRencanaKegiatanModel;
use App\Models\RencanaKegiatanModel;
use App\Models\AmalanYaumiModel;
use App\Models\NotifikasiModel;
use App\Models\TargetNotifikasiModel;
use App\Controllers\BaseController;

class RencanaKegiatanController extends BaseController
{
    public function index()
    {
        $data['session'] = session();
        $model = new RencanaKegiatanModel;
        $data['title'] = 'Data Rencana Kegiatan';
        $data['getRencanaKegiatanByIdUserLogin'] = $model->getRencanaKegiatanByIdUserLogin();

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('rencana_kegiatan/v_rencana_kegiatan', $data);
        echo view('layout/v_footer');
    }

    public function index2()
    {
        $model = new RencanaKegiatanModel;
        $data['session'] = session();
        $data['title'] = 'Data Rencana Kegiatan';
        $data['getRencanaKegiatan'] = $model->getRencanaKegiatan();

        echo view('layout/v_header', $data);
        echo view('layout/v_sidebar');
        echo view('layout/v_navbar');
        echo view('rencana_kegiatan/index', $data);
        echo view('layout/v_footer');
    }

    public function add($id)
    {
        $data['session'] = session();
        $model = new RencanaKegiatanModel;
        $model_amalan_yaumi = new AmalanYaumiModel;
        $data['title'] = 'Data Rencana Kegiatan';
        $data['getRencanaKegiatan'] = $model->getRencanaKegiatan();
        $data_amalan_yaumi = $model_amalan_yaumi->getAmalanYaumi($id);

        $data['judul_amalan_yaumi'] = $data_amalan_yaumi[0]->judul_amalan_yaumi;
        $data['id_amalan_yaumi'] = $id;

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('rencana_kegiatan/add', $data);
        echo view('layout/v_footer');
    }

    public function save()
    {
        $judul_amalan_yaumi = $this->request->getVar('judul_amalan_yaumi');

        $data['session'] = session();
        $rules = [
            'id_user' => 'required',
            'id_amalan_yaumi' => 'required',
        ];

        if ($this->validate($rules)) {
            // RENCANA KEGIATAN
            $model_rencana_kegiatan = new RencanaKegiatanModel();

            $data1 = [
                'id_user' => $this->request->getVar('id_user'),
                'id_amalan_yaumi' => $this->request->getVar('id_amalan_yaumi'),
            ];

            $model_rencana_kegiatan->save($data1);

            $jadwal_notifikasi = $this->request->getVar('jadwal_notifikasi');

            $id_rencana_kegiatan_last = $model_rencana_kegiatan->insertID();
  
            // DETAIL RENCANA KEGIATAN
            $arr = str_split($jadwal_notifikasi, 1);

            $tahun = $arr[0].$arr[1].$arr[2].$arr[3];
            $bulan = $arr[5].$arr[6];
            $tanggal =  $arr[8].$arr[9];
            $jam = $arr[11].$arr[12];
            $menit = $arr[14].$arr[15];
            $detik = '00';

            $waktu = $tahun.'-'.$bulan.'-'.$tanggal.' '.$jam.':'.$menit.':'.$detik;

            $model_detail_rencana_kegiatan = new DetailRencanaKegiatanModel();

            $data2 = [
                'id_rencana_kegiatan' => $id_rencana_kegiatan_last,
                'rencana_jadwal' => $waktu,
            ];

            $model_detail_rencana_kegiatan->save($data2);

            // NOTIFIKASI
            $model_notifikasi_model = new NotifikasiModel();
            $data3 = [
                'judul_notifikasi' => 'Yuk Lakukan Rencana Ibadahmu',
                'pesan_notifikasi' => $judul_amalan_yaumi,
                'link_tujuan_notifikasi' => base_url('/rencana_kegiatan')
            ];

            $model_notifikasi_model->save($data3);
            $id_notifikasi_last = $model_notifikasi_model->insertID();

            // TARGET MODIFIKASI
            $model_target_notifikasi = new TargetNotifikasiModel;
            $data4 = [
                'id_notifikasi' => $id_notifikasi_last,
                'id_user' => $this->request->getVar('id_user'),
                'jadwal_notifikasi' => $waktu
            ];
            $model_target_notifikasi->save($data4);



            return redirect()->to('/rencana_kegiatan');
        } else {
            $data['validation'] = $this->validator;
            $data['title'] = 'Data Rencana Kegiatan';

            echo view('layout/v_header');
            echo view('layout/v_buttom_navbar');
            echo view('rencana_kegiatan/add', $data);
            echo view('layout/v_footer');
        }
    }

    public function edit($id)
    {
        $model = new RencanaKegiatanModel();
        $data['title'] = 'Data Rencana Kegiatan - Edit';
        $data['getRencanaKegiatan'] = $model->getRencanaKegiatan($id);

        echo view('layout/v_header');
        echo view('layout/v_buttom_navbar');
        echo view('rencana_kegiatan/edit', $data);
        echo view('layout/v_footer');
    }

    public function update()
    {
        $data['session'] = session();
        $rules = [
            'id_rencana_kegiatan' => 'required',
            'id_user' => 'required',
            'id_amalan_yaumi' => 'required'
        ];

        if ($this->validate($rules)) {
            $model = new RencanaKegiatanModel();
            $id_rencana_kegiatan = $this->request->getVar('id_rencana_kegiatan');

            $data = [
                'id_rencana_kegiatan' => $this->request->getVar('id_rencana_kegiatan'),
                'id_user' => $this->request->getVar('id_user'),
                'id_amalan_yaumi' => $this->request->getVar('id_amalan_yaumi'),
            ];

            $model->update($id_rencana_kegiatan, $data);

            echo '<script>
                    alert("Selamat! Berhasil Mengubah Data Kutipan");
                    window.location="' . base_url('rencana_kegiatan_master') . '"
                </script>';
        } else {
            $data['validation'] = $this->validator;
            $data['title'] = 'Data Rencana Kegiatan';

            echo view('layout/v_header', $data);
            echo view('layout/v_navbar');
            echo view('rencana_kegiatan/add', $data);
            echo view('layout/v_footer');
        }
    }

    public function delete($id)
    {
        $model = new DetailRencanaKegiatanModel;
        $model->delete($id);
        echo '<script>
                alert("Selamat! Berhasil Menghapus Data Rencana kegiatan");
                window.location="' . base_url('/rencana_kegiatan') . '"
            </script>';
    }

    public function done($id)
    {
        $model = new DetailRencanaKegiatanModel;
        $data = [
            'realisasi_jadwal' => date('Y-m-d H:i:s'),
            'status_detail_rencana_kegiatan' => 2
        ];

        $model->update($id, $data);
        echo '<script>
                alert("Selamat! Berhasil Mengubah Data Rencana kegiatan");
                window.location="' . base_url('/rencana_kegiatan') . '"
            </script>';
    }
}
