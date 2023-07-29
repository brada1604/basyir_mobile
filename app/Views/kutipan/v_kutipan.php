<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
            <div>
                <a href="/notifikasi"><img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/notification_putih.png" alt="SVG Happyku" width="35em" height="35em" style="color: white;" /></a>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-2 text-center">
                    <h2 class="heading-section mb-5 bold-text" style="font-family: 'Inter', Arial, sans-serif; color: white; font-weight: bold;">Kutipan</h2>
                </div>
                <div id="carouselExampleControls" class="carousel slide d-flex justify-content-center" data-ride="carousel">
                    <div class="carousel-inner">
                        <?php $isFirst = true; ?>
                        <?php foreach ($getKutipanByStatus as $row) : ?>
                            <div class="carousel-item <?= $isFirst ? 'active' : ''; ?>">
                                <div class="col-md-6">
                                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px;">
                                        <div class="text w-100">
                                            <h4 class="container" style="font-family: 'Inter', Arial, sans-serif; font-weight: bold; color: #629C87;"><?= $row->sumber_kutipan; ?></h4>
                                            <h5 class="container" style="font-family: 'Inter', Arial, sans-serif; color: #629C87;"><?= $row->deskripsi_kutipan; ?></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php $isFirst = false; ?>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <h6 class="text-center" style="font-family: 'Inter',Arial, sans-serif; color: white; margin-top: 20px;">Geser Untuk Lihat Lainnya</h6>
    <nav class="navbar" style="margin-top: 150px;">
        <div>
            <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/buku_kiri.png" alt="Buku Kiri" width="195em" height="180em" style="margin-left: -17px; " />
        </div>
        <div>
            <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/buku_kanan.png" alt="Buku Kanan" width="165em" height="175em" style="margin-right: -17px;" />
        </div>
    </nav>
</body>