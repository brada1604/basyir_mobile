<?php

namespace App\Models;

use CodeIgniter\Model;

class RencanaKegiatanModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'tbl_rencana_kegiatan';
    protected $primaryKey       = 'id_rencana_kegiatan';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['id_rencana_kegiatan','id_user', 'id_amalan_yaumi','status_rencana_kegiatan', 'keterangan_kegiatan'];

    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    public function getRencanaKegiatan($id = false)
    {
        $id_user = session()->get('role');
        if ($id === false) {
            // return $this->findAll();

            // Manual atau Query Builder
            $query = $this->db->query("SELECT * FROM tbl_rencana_kegiatan");
            return $query->getResult(); // return berupa array objek

        } else {
            // return $this->getWhere(['id' => $id]);

            // Manual atau Query Builder
            $query = $this->db->query("SELECT * FROM tbl_rencana_kegiatan where id_rencana_kegiatan = '$id' ");
            return $query->getResult(); // return berupa array objek
        }
    }

    public function getRencanaKegiatanByIdUser($id = false)
    {
        $id_user = session()->get('id');
        if ($id === false) {
            // return $this->findAll();

            // Manual atau Query Builder
            $query = $this->db->query("SELECT * FROM tbl_rencana_kegiatan as a inner join tbl_amalan_yaumi as b on a.id_amalan_yaumi = b.id_amalan_yaumi where a.id_user='$id_user' ");
            return $query->getResult(); // return berupa array objek

        } else {
            // return $this->getWhere(['id' => $id]);

            // Manual atau Query Builder
            $query = $this->db->query("SELECT * FROM tbl_rencana_kegiatan as a inner join tbl_amalan_yaumi as b on a.id_amalan_yaumi = b.id_amalan_yaumi where a.id_user='$id_user' AND a.id_rencana_kegiatan = '$id' ");
            return $query->getResult(); // return berupa array objek
        }
    }

    public function getRencanaKegiatanByIdUserLogin(){
        $id_user = session()->get('id');
        $query = $this->db->query("SELECT tbl_detail_rencana_kegiatan.id_detail_rencana_kegiatan, tbl_rencana_kegiatan.id_amalan_yaumi, tbl_rencana_kegiatan.keterangan_kegiatan, tbl_detail_rencana_kegiatan.status_detail_rencana_kegiatan, tbl_amalan_yaumi.judul_amalan_yaumi, tbl_rencana_kegiatan.id_user, tbl_detail_rencana_kegiatan.rencana_jadwal, tbl_detail_rencana_kegiatan.realisasi_jadwal FROM tbl_rencana_kegiatan INNER JOIN tbl_detail_rencana_kegiatan ON tbl_detail_rencana_kegiatan.id_rencana_kegiatan = tbl_rencana_kegiatan.id_rencana_kegiatan INNER JOIN tbl_amalan_yaumi ON tbl_rencana_kegiatan.id_amalan_yaumi = tbl_amalan_yaumi.id_amalan_yaumi WHERE tbl_rencana_kegiatan.id_user = '$id_user' AND tbl_rencana_kegiatan.status_rencana_kegiatan = '1' ORDER BY tbl_detail_rencana_kegiatan.status_detail_rencana_kegiatan ASC ");
            return $query->getResult(); // return berupa array objek
    }

    public function CheckPerencanaanIbadahForJob(){
        $query = $this->db->query("SELECT b.keterangan_kegiatan, c.judul_amalan_yaumi, a.* FROM tbl_detail_rencana_kegiatan AS a INNER JOIN tbl_rencana_kegiatan AS b ON a.id_rencana_kegiatan = b.id_rencana_kegiatan  INNER JOIN tbl_amalan_yaumi AS c on b.id_amalan_yaumi = c.id_amalan_yaumi WHERE a.is_reminder = '0'  AND a.rencana_jadwal <= concat( CURRENT_DATE, ' ', CURRENT_TIME )");
        return $query->getResult(); // return berupa array objek
    }
}