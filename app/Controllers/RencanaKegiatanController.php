<?php

namespace App\Controllers;

use App\Models\DetailRencanaKegiatanModel;
use App\Models\RencanaKegiatanModel;
use App\Models\RekapKegiatanModel;
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
            $model_rekap_kegiatan = new RekapKegiatanModel();

            $data_cek_rekap = [
                'id_user' => $this->request->getVar('id_user'),
                'id_amalan_yaumi' => $this->request->getVar('id_amalan_yaumi')
            ];

            $cek_rekap = $model_rekap_kegiatan->getWhere($data_cek_rekap)->getResult();

            if ($cek_rekap) {
                $data_rekap = [
                    'total_belum_dilakukan' => $cek_rekap[0]->total_belum_dilakukan + 1
                ];

                $model_rekap_kegiatan->update($cek_rekap[0]->id_rekap_kegiatan, $data_rekap);
            }
            else {
                echo "insert";

                $data_rekap = [
                    'id_user' => $this->request->getVar('id_user'),
                    'id_amalan_yaumi' => $this->request->getVar('id_amalan_yaumi'),
                    'total_dilakukan' => 0,
                    'total_belum_dilakukan' => 1
                ];

                $model_rekap_kegiatan->save($data_rekap);
            }

            $data1 = [
                'id_user' => $this->request->getVar('id_user'),
                'id_amalan_yaumi' => $this->request->getVar('id_amalan_yaumi'),
                'keterangan_kegiatan' => $this->request->getVar('keterangan_kegiatan'),
            ];

            $id_amalan_yaumi = $this->request->getVar('id_amalan_yaumi');

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
            if ($id_amalan_yaumi == 1) {
                $data3 = [
                    'judul_notifikasi' => 'Yuk Lakukan Rencana Ibadahmu',
                    'pesan_notifikasi' => $this->request->getVar('keterangan_kegiatan'),
                    'link_tujuan_notifikasi' => base_url('/rencana_kegiatan')
                ];
            }
            else {
                $data3 = [
                    'judul_notifikasi' => 'Yuk Lakukan Rencana Ibadahmu',
                    'pesan_notifikasi' => $judul_amalan_yaumi,
                    'link_tujuan_notifikasi' => base_url('/rencana_kegiatan')
                ];
            }

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

            return redirect()->to('/onesignal/push/Yuk Lakukan Rencana Ibadahmu/'.$data3['pesan_notifikasi'].'/rencana_kegiatan');

            // return redirect()->to('/rencana_kegiatan');
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
        $model_detail_rencana_kegiatan = new DetailRencanaKegiatanModel;

        $id_detail_rencana_kegiatan = $id;
        $cek_detail_rencana_kegiatan = $model_detail_rencana_kegiatan->getWhere(['id_detail_rencana_kegiatan' => $id])->getResult();

        $status_detail_rencana_kegiatan = $cek_detail_rencana_kegiatan[0]->status_detail_rencana_kegiatan;

        $model_rencana_kegiatan = new RencanaKegiatanModel;
        $id_rencana_kegiatan = $cek_detail_rencana_kegiatan[0]->id_rencana_kegiatan;
        $cek_rencana_kegiatan = $model_rencana_kegiatan->getWhere(['id_rencana_kegiatan' => $id_rencana_kegiatan])->getResult();

        $model_rekap_kegiatan = new RekapKegiatanModel();

        $data_cek_rekap = [
            'id_user' => $cek_rencana_kegiatan[0]->id_user,
            'id_amalan_yaumi' => $cek_rencana_kegiatan[0]->id_amalan_yaumi
        ];

        $cek_rekap = $model_rekap_kegiatan->getWhere($data_cek_rekap)->getResult();

        if ($cek_rekap) {
            if ($status_detail_rencana_kegiatan == 1) { //belum dilakukan
                $data_rekap = [
                    'total_belum_dilakukan' => $cek_rekap[0]->total_belum_dilakukan - 1
                ];
            }
            else{
                $data_rekap = [
                    'total_dilakukan' => $cek_rekap[0]->total_dilakukan - 1
                ];
            }

            $model_rekap_kegiatan->update($cek_rekap[0]->id_rekap_kegiatan, $data_rekap);
        }

        $model_detail_rencana_kegiatan->delete($id);

        $model_rencana_kegiatan->delete($id_rencana_kegiatan);
        echo '<script>
                alert("Selamat! Berhasil Menghapus Data Rencana kegiatan");
                window.location="' . base_url('/rencana_kegiatan') . '"
            </script>';
    }

    public function done($id)
    {
        date_default_timezone_set('Asia/Jakarta');
        $model_detail_rencana_kegiatan = new DetailRencanaKegiatanModel;
        $id_detail_rencana_kegiatan = $id;
        $cek_detail_rencana_kegiatan = $model_detail_rencana_kegiatan->getWhere(['id_detail_rencana_kegiatan' => $id])->getResult();

        $model_rencana_kegiatan = new RencanaKegiatanModel;
        $id_rencana_kegiatan = $cek_detail_rencana_kegiatan[0]->id_rencana_kegiatan;
        $cek_rencana_kegiatan = $model_rencana_kegiatan->getWhere(['id_rencana_kegiatan' => $id_rencana_kegiatan])->getResult();


        $model_rekap_kegiatan = new RekapKegiatanModel();

        $data_cek_rekap = [
            'id_user' => $cek_rencana_kegiatan[0]->id_user,
            'id_amalan_yaumi' => $cek_rencana_kegiatan[0]->id_amalan_yaumi
        ];

        $cek_rekap = $model_rekap_kegiatan->getWhere($data_cek_rekap)->getResult();

        if ($cek_rekap) {
            $data_rekap = [
                'total_belum_dilakukan' => $cek_rekap[0]->total_belum_dilakukan - 1,
                'total_dilakukan' => $cek_rekap[0]->total_dilakukan + 1
            ];

            $model_rekap_kegiatan->update($cek_rekap[0]->id_rekap_kegiatan, $data_rekap);
        }

        $data = [
            'realisasi_jadwal' => date('Y-m-d H:i:s'),
            'status_detail_rencana_kegiatan' => 2
        ];

        $model_detail_rencana_kegiatan->update($id, $data);
        echo '<script>
                alert("Selamat! Berhasil Mengubah Data Rencana kegiatan");
                window.location="' . base_url('/rencana_kegiatan') . '"
            </script>';
    }
}
