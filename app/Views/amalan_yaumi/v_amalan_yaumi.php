<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/menu_lainnya" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-2 text-center">
                    <h2 class="heading-section mb-5  bold-text" style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">Amalan Yaumi</h2>
                </div>
                <div class="col-md-6">
                    <div class="featured-carousel owl-carousel">
                        <?php foreach ($getAmalanYaumiByStatus as $row) : ?>
                            <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px;">
                                <div class="text w-100">
                                    <h4 class="container" style="font-family: 'Inter',Arial, sans-serif; color: #629C87; font-weight: bold;"><a href="/rencana_kegiatan/add/<?= $row->id_amalan_yaumi ?>"><?= $row->judul_amalan_yaumi ?></a></h4>
                                    <h5 class="container" style="font-family: 'Inter',Arial, sans-serif; color: #629C87;"><?= $row->konten_amalan_yaumi ?></h5>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h6 class="text-center" style="font-family: 'Inter',Arial, sans-serif; color: white; margin-top: 20px;">Geser Untuk Lihat Lainnya</h6>
</body>