<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/berita" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
        </nav>
        <div class="container" style="margin-bottom: 100px;">
            <div class="row">
                <div class="col-md-2 text-center">
                    <h2 class="heading-section mb-5  bold-text" style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">Detail Berita</h2>
                </div>
                <div class="col-md-6">
                    <!-- <div class="featured-carousel owl-carousel"> -->
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; ">
                        <div class="text w-100">
                            <?php foreach ($getBeritaByStatus as $gbbs) :?>
                            <h4 class="container text-center" style="font-family: 'Inter',Arial, sans-serif; font-weight: bold; color: #629C87;"><?= $gbbs->judul_berita; ?></h4>
                            <img src="<?= base_url($gbbs->gambar_berita); ?>" alt="gerhana" width="100%">

                            <h5 class="container" style="font-family: 'Inter',Arial, sans-serif; color: #629C87;">
                                <?= $gbbs->konten_berita; ?>
                            </h5>
                            <?php endforeach; ?>
                        </div>
                    </div>
                    <!-- </div> -->
                </div>
            </div>
        </div>
    </div>
</body>