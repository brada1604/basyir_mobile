<body style="background-color: white;">
    <div class=" container" style="background-image: url('/assets/image/home/Background_atas.jpg'); background-repeat: no-repeat; background-position: center; background-size: auto; margin-top: -10%;">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="/" class="nav-link text-center" style="margin-top: 60px;">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
            <a href="/amalan_yaumi" style="margin-top: 60px; margin-right:-150px;">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/tambah.png" alt="SVG Happyku" width="30em" height="30em" style="color: white;" />
            </a>
            <a href="#" style="margin-top: 60px">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/edit.png" alt="SVG Happyku" width="30em" height="30em" style="color: white;" />
            </a>

        </nav>
        <div class="col-md-2 text-center">
            <h2 class="heading-section mb-5  bold-text" style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">List Kegiatan</h2>
        </div>
        <br>
        <br>
    </div>
    <table class="table">
        <tbody>
            <tr>
                <td><?= $session->get('name') ?> : </td>
                <td><?= $session->get('email') ?></td>
            </tr>
        </tbody>
    </table>

    <table class="table">
        <tbody>
            <?php $nomor = 1;
            foreach ($getRencanaKegiatanByIdUserLogin as $row) : ?>
                <tr>
                    <!-- <th scope="row"><?= $nomor++; ?></th> -->
                    <td><?= $row->judul_amalan_yaumi ?></td>
                    <td><?= $row->rencana_jadwal ?></td>
                    <td><?= $row->realisasi_jadwal ?></td>
                    <td>
                        <?php if ($row->status_detail_rencana_kegiatan == 1): ?>
                            <a class="hapus" class="btn btn-success" href="/rencana_kegiatan/done/<?= $row->id_detail_rencana_kegiatan; ?>"><button type="button" class="btn btn-success">Sudah Dilakukan</button></a>
                        <?php endif ?>
                    </td>
                    <td><a class="hapus" class="btn btn-danger" href="/rencana_kegiatan/delete/<?= $row->id_detail_rencana_kegiatan; ?>"><button type="button" class="btn btn-danger">Delete</button></a></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>