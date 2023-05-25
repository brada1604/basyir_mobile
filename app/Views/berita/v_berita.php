<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
            <!-- <a href="/search">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/search.png" alt="SVG Happyku" width="40em" height="30em" style="color: white;" />
            </a> -->
        </nav>
        <div>
            <!-- <section class="ftco-section"> -->
            <div class="container">
                <div class="row">
                    <div class="col-md-15 ">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a href="/berita" class="navbar-brand">
                                <h4 class="heading-section mb-0" style="color: white;">Berita Terkini</h4>
                            </a>
                        </nav>
                    </div>
                    <div class="col-md-12">
                        <div class="featured-carousel owl-carousel">
                            <?php
                            $nomor = 1;
                            foreach ($getBeritaByStatus as $row) :
                            ?>

                                <div class="card">
                                    <img src="<?= base_url($row->gambar_berita); ?>" alt="Berita" style="width:100%">
                                    <div class="container">
                                        <a href="/berita/detail_berita/<?= $row->id_berita; ?>">
                                            <p><?= $row->judul_berita; ?></p>
                                        </a>
                                    </div>
                                </div>

                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>

            <?php foreach ($getKategoriBeritaForm as $gkbf) : ?>
                <!-- </section> -->
                <!-- <section class="ftco-section"> -->
                <div class="container">
                    <div class="row">
                        <div class="col-md-15 ">
                            <nav class="navbar navbar-expand-lg navbar-light">
                                <a href="/berita" class="navbar-brand">
                                    <h4 class="heading-section mb-0" style="color: white;"><?= $gkbf->nama_kategori_berita; ?></h4>
                                </a>
                            </nav>
                        </div>
                        <div class="col-md-12">
                            <div class="featured-carousel owl-carousel">
                                <?php
                                $nomor = 1;
                                foreach ($getBeritaByStatus as $gbbs) :
                                ?>
                                    <div class="card">
                                        <img src="<?= base_url($gbbs->gambar_berita); ?>" alt="Berita" style="width:100%">
                                        <div class="container">
                                            <a href="/berita/detail_berita/<?= $gbbs->id_berita; ?>">
                                                <p><?= $gbbs->judul_berita; ?></p>
                                            </a>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- </section> -->
            <?php endforeach; ?>


        </div>

    </div>

</body>