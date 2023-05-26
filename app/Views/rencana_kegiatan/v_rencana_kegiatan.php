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

    <tr>
        <h4 class="container" style="font-family: 'Inter',Arial, sans-serif; color: #629C87;">
            <?= $session->get('name') ?> : 
            &nbsp <?= $session->get('email') ?>
        </h4>
    </tr>
    <?php $nomor = 1;
    foreach ($getRencanaKegiatanByIdUserLogin as $row) : ?>
        <div class="col-md-6">
            <div class=" d-flex align-items-end justify-content-center" style="background-image: url('/assets/image/Background.png'); border-radius: 20px; ">
                <div class="text-center w-100">
                    <h4 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;"><?= $row->judul_amalan_yaumi ?><h4>
                        <h6 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;"><?= $row->rencana_jadwal ?></h6>
                        <h6 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;"><?= $row->realisasi_jadwal ?></h6>
                        <nav class="navbar-item">
                            <h6><?php if ($row->status_detail_rencana_kegiatan == 1): ?>
                            <a class="hapus" class="btn btn-success" href="/rencana_kegiatan/done/<?= $row->id_detail_rencana_kegiatan; ?>">
                                <button type="button" class="btn btn-success">Sudah Dilakukan</button>
                            </a>
                        <?php endif ?>
                        <a class="hapus" class="btn btn-danger" href="/rencana_kegiatan/delete/<?= $row->id_detail_rencana_kegiatan; ?>">
                            <button type="button" class="btn btn-danger">Delete</button>
                        </a>
                    </h6>
                </nav>
            </div>
        </div>
    </div>
    <br>
    <?php endforeach; ?>s


</body>