<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div class="container">
        <div class="row"> 
            <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
                <a href="/" class="nav-link text-center">
                    <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
                </a>
                <!-- <a href="/search">
                    <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/search.png" alt="SVG Happyku" width="40em" height="30em" style="color: white;" />
                </a> -->
            </nav>
            
            <div class="container">
                <div clas="row">
                        <br>
                        <div class="col-md-15">
                            <nav class="navbar navbar-expand-lg navbar-light">
                                <a href="/berita" class="navbar-brand">
                                    <h4 class="heading-section mb-0" style="color: white;">Berita Terkini</h4>
                                </a>
                            </nav>
                        </div>
                    <div id="carouselExampleControls" class="carousel slide d-flex justify-content-center" data-ride="carousel">
                        <div class="carousel-inner">
                            <?php $count = 0; ?>
                            <?php foreach ($getBeritaByStatus as $gblp) : ?>
                                <div class="carousel-item<?= $count === 0 ? ' active' : ''; ?>">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="card">
                                                <img src="<?= base_url($gblp->gambar_berita); ?>" class="card-img-top" alt="Berita">
                                                <div class="card-body">
                                                    <nav class="navbar navbar-dark navbar-expand d-md-none d-lg-none d-xl-none p-0">
                                                        <a href="/berita/detail_berita/<?= $gblp->id_berita; ?>" style="text-decoration: none; color: #000;">
                                                            <p class="card-title" style="color: #629C87;"><?= $gblp->judul_berita; ?></p>
                                                        </a>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php $count++; ?>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <?php foreach ($getKategoriBeritaForm as $gkbf) : ?>
            <div class="container" style="margin-bottom: 100px;">
                <br>
                <br>
                <br>
                <div class="row">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a href="/berita" class="navbar-brand">
                                <h4 class="heading-section mb-0" style="color: white;"><?= $gkbf->nama_kategori_berita; ?></h4>
                            </a>
                        </nav>
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <?php
                            $nomor = 1;
                            foreach ($getBeritaByStatus as $gbbs) :
                                ?>
                                <div class="carousel-item<?= $nomor === 1 ? ' active' : ''; ?>">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="card">
                                                <img src="<?= base_url($gbbs->gambar_berita); ?>" alt="Berita" style="width:100%">
                                                <div class="container">
                                                    <a href="/berita/detail_berita/<?= $gbbs->id_berita; ?>">
                                                        <p class=card-title><?= $gbbs->judul_berita; ?></p>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>


        </div>

    </div>

</body>