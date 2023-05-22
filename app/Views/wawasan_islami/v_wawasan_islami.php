<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
            <a href="/search">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/search.png" alt="SVG Happyku" width="40em" height="30em" style="color: white;" />
            </a>
        </nav>
        <div>
            <?php foreach ($getKategoriWawasanIslamiForm as $gkwif) :?>
            <!-- </section> -->
            <section class="ftco-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-15 ">
                            <nav class="navbar navbar-expand-lg navbar-light">
                                <a href="/wawasan_islami" class="navbar-brand">
                                    <h4 class="heading-section mb-0" style="color: white;"><?= $gkwif->nama_kategori_wawasan_islami; ?></h4>
                                </a>
                            </nav>
                        </div>
                        <div class="col-md-12">
                            <div class="featured-carousel owl-carousel">
                                <?php
                                    $nomor = 1;
                                    foreach ($getWawasanIslamiByStatus as $gwibs) :
                                ?>
                                        <div class="card">
                                            <img src="<?= base_url($gwibs->gambar_wawasan_islami); ?>" alt="WawasanIslami" style="width:100%">
                                            <div class="container">
                                                <a href="/wawasan_islami/detail_wawasan_islami/<?= $gwibs->id_wawasan_islami; ?>"><p><?= $gwibs->judul_wawasan_islami; ?></p></a>
                                            </div>
                                        </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <?php endforeach; ?>

            
        </div>

    </div>

</body>