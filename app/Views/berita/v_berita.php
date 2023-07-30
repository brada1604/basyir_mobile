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
            
            <div class="container-sm">
                <br>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a href="/berita" class="navbar-brand">
                        <h4 class="heading-section mb-0" style="color: white;">Berita Terkini</h4>
                    </a>
                </nav>
                <div id="carouselExampleControls" class="carousel slide d-flex justify-content-center" data-ride="carousel">
                    <div class="carousel-inner" style="border-radius: 10px; padding: 12px;">
                        <?php $count = 0; ?>
                        <?php foreach ($getBeritaByStatus as $gblp) : ?>
                            <div class="carousel-item<?= $count === 0 ? ' active' : ''; ?>">
                                <div class="row h-100">
                                    <div class="col-md-12">
                                        <div class="card h-10 shadow" style="border-radius: 10px; padding: 3px;">
                                            <img src="<?= base_url($gblp->gambar_berita); ?>" class="card-img-top img-fluid card-image " alt="Berita" style="width: 350px; height: 100px">
                                            <div class="card-body">
                                                <nav class="navbar navbar-dark navbar-expand d-md-none d-lg-none d-xl-none p-0">
                                                    <a href="/berita/detail_berita/<?= $gblp->id_berita; ?>" style="text-decoration: none; color: #000;">
                                                        <p class="card-title d-line" style="color: #629C87;"><?= $gblp->judul_berita; ?></p>
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


   <div class="container" style="margin-bottom: 100px;">
    <?php foreach ($getKategoriBeritaForm as $gkbf) : ?>
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="/berita" class="navbar-brand">
                <br>
                <h4 class="heading-section mb-0" style="color: white;"><?= $gkbf->nama_kategori_berita; ?></h4>
            </a>
        </nav>
        <div id="carouselExampleControls" class="carousel slide d-flex" data-ride="carousel">
            <div class="carousel-inner" style="border-radius: 10px; padding: 12px;">
                <?php
                $nomor = 0; // Initialize $nomor to 0
                foreach ($getBeritaByStatus as $gbbs) :
                ?>
                    <div class="carousel-item<?= $nomor === 0 ? ' active' : ''; ?>" style="height: 200px;">
                        <div class="row h-100">
                            <div class="col-sm-12">
                                <div class="card h-100 shadow" style="border-radius: 10px; padding: 3px;">
                                    <img src="<?= base_url($gbbs->gambar_berita); ?>" alt="Berita" class="card-img-top img-fluid card-image" style="width: 350px; height: 100px;">
                                    <div class="card-body">
                                        <nav class="navbar navbar-dark navbar-expand d-md-none d-lg-none d-xl-none p-0">
                                            <a href="/berita/detail_berita/<?= $gbbs->id_berita; ?>" class="text-decoration-none text-dark">
                                                <p class="card-title d-inline" style="color: #629C87;"><?= $gbbs->judul_berita; ?></p>
                                            </a>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
                    $nomor++; // Increment $nomor to show the next carousel item
                endforeach;
                ?>
            </div>
        </div>
    <?php endforeach; ?>
</div>

    </div>
</body>