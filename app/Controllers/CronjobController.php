<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\DetailRencanaKegiatanModel;
use App\Models\RencanaKegiatanModel;
use App\Models\RekapKegiatanModel;
use App\Models\AmalanYaumiModel;
use App\Models\NotifikasiModel;
use App\Models\TargetNotifikasiModel;

class CronjobController extends BaseController
{
    public function index()
    {
        $data['session'] = session();
        $model_DetailRencanaKegiatanModel = new DetailRencanaKegiatanModel;
        $model_RencanaKegiatanModel = new RencanaKegiatanModel;
        $model_RekapKegiatanModel = new RekapKegiatanModel;
        $model_AmalanYaumiModel = new AmalanYaumiModel;
        $model_NotifikasiModel = new NotifikasiModel;
        $model_TargetNotifikasiModel = new TargetNotifikasiModel;

        $CheckPerencanaanIbadahForJob = $model_RencanaKegiatanModel->CheckPerencanaanIbadahForJob();

        foreach ($CheckPerencanaanIbadahForJob as $row) {
            echo $row->id_detail_rencana_kegiatan.'-';
            echo $row->keterangan_kegiatan.'-';
            echo $row->judul_amalan_yaumi.'-';
            echo $row->rencana_jadwal.'-';
            echo $row->is_reminder.'-';
            echo "<br>";

            $data = [
                'is_reminder' => 1
            ];

            $model_DetailRencanaKegiatanModel->update($row->id_detail_rencana_kegiatan, $data);
            
            
            $headings = "Yuk Lakukan Rencana Ibadahmu";
            if ($row->keterangan_kegiatan) {
                $content = $row->keterangan_kegiatan;
            }
            else {
                $content = $row->judul_amalan_yaumi;
            }

            $content = array(
                "en" => $content // Change this to your desired notification message
            );

            $headings = array(
                "en" => $headings
            );

            $fields = array(
                'app_id' => '1ab33eb7-d6a4-49f6-ad9e-44f65aead8fd', // Replace with your OneSignal App ID
                'included_segments' => array('All'),
                'data' => array("foo" => "bar"), // Optional additional data
                'contents' => $content,
                'headings' => $headings
            );

            $fields = json_encode($fields);
            $url = 'https://onesignal.com/api/v1/notifications';
            $headers = array(
                'Content-Type: application/json; charset=utf-8',
                'Authorization: Basic ZmRlMjk5N2MtNjEwOS00YTI4LThiMjEtZjI1YzdlNGIxMTdm' // Replace with your OneSignal REST API Key
            );

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HEADER, false);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

            $result = curl_exec($ch);
            curl_close($ch);
        }

        // var_dump($CheckPerencanaanIbadahForJob);
        // die();
    }
}
