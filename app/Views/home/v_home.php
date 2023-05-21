<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <div class="container" style="background-image: url('/assets/image/home/Background_atas.jpg'); background-repeat: no-repeat; background-position: center center; background-size: cover;">
        <nav class="navbar navbar-expand-lg navbar-light">
            <h4 id="DisplayClock" class="clock" onload="showTime()" style="color: white;"></h4>
            <!-- <time id="DisplayClock" class="clock"></time> -->
            <!-- <h4 style="color: white;"><?= date('d, m Y H:i:s') ?></h4> -->
            <div>
                <a href="/notifikasi"><img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/notification_putih.png" alt="SVG Happyku" width="50em" height="50em" style="color: white;" /></a>
            </div>
        </nav>

        <!-- Menu Navbar -->
        <br>
        <div class="container">
            <nav class="navbar navbar-dark navbar-expand border-top border-bottom border-left border-right d-md-none d-lg-none d-xl-none p-0" style="border-top-left-radius: 2rem !important; border-top-right-radius: 2rem !important; border-bottom-left-radius: 2rem !important; border-bottom-right-radius: 2rem !important; background: white;">
                <ul class="navbar-nav nav-justified w-100">
                    <li class="nav-item">
                        <a href="/jadwal_sholat_wajib" class="nav-link text-center">
                            <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/prayer-mat.png" alt="SVG Happyku" width="60em" height="60em" />
                            <!-- <span class="small d-block" style="color:#000000">Beranda</span> -->
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/dzikir" class="nav-link text-center">
                            <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/tasbih.png" alt="SVG Happyku" width="60em" height="60em" />
                            <!-- <span class="small d-block" style="color:#000000">Kutipan</span> -->
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/berita" class="nav-link text-center">
                            <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/dua.png" alt="SVG Happyku" width="60em" height="60em" />
                            <!-- <span class="small d-block" style="color:#000000">Berita</span> -->
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/home/menu_lainnya" class="nav-link text-center">
                            <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/more.png" alt="SVG Happyku" width="60em" height="60em" />
                            <!-- <span class="small d-block" style="color:#000000">Berita</span> -->
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>


</head>

<body>
    <div>
        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <!-- <div class="col-md-12 text-center">
                        <h2 class="heading-section mb-5">Event</h2>
                    </div> -->
                    <div class="col-md-12">
                        <div class="featured-carousel owl-carousel">
                            <div class="item">
                                <div class="work">
                                    <div class="img d-flex align-items-end justify-content-center" style="background-image: url(<?= base_url(); ?>/assets/assets-mobile/carousel-03/images/work-1.jpg);">
                                        <div class="text w-100">
                                            <span class="cat">Web Design</span>
                                            <h3><a href="#">Working Spaces for Startups Freelancer</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="work">
                                    <div class="img d-flex align-items-end justify-content-center" style="background-image: url(<?= base_url(); ?>/assets/assets-mobile/carousel-03/images/work-2.jpg);">
                                        <div class="text w-100">
                                            <span class="cat">Web Design</span>
                                            <h3><a href="#">Working Spaces for Startups Freelancer</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <div>
        <!-- <section class="ftco-section"> -->
        <div class="container">
            <div class="row">
                <div class="col-md-15 ">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a href="/berita" class="navbar-brand">
                            <h4 class="heading-section mb-0" style="color: #629C87;">Berita Terkini</h4>
                        </a>
                    </nav>
                </div>
                <div class="col-md-12">
                    <div class="featured-carousel owl-carousel">
                        <?php
                        $nomor = 1;
                        foreach ($getBeritaLandingPage as $gblp) :
                        ?>
                            <div class="card">
                                <img src="<?= base_url($gblp->gambar_berita); ?>" alt="Berita" style="width:100%">
                                <div class="container">
                                    <p><?= $gblp->judul_berita; ?></p>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <!-- </section> -->
    </div>

    <div class="wawasan_islami">
        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-15 ">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a href="/wawasan" class="navbar-brand">
                                <h4 class="heading-section mb-0" style="color: #629C87;">Wawasan Islam</h4>
                            </a>
                        </nav>
                    </div>
                    <div class="col-md-12">
                        <div class="featured-carousel owl-carousel">
                            <?php
                            $nomor = 1;
                            foreach ($getWawasanIslamiLandingPage as $gwil) :
                            ?>
                                <div class="item">
                                    <div class="work">
                                        <div class="img d-flex align-items-end justify-content-center" style="background-image: url(<?= base_url($gwil->gambar_wawasan_islami); ?>">
                                            <div class="text w-100">
                                                <span class="cat">Kategori</span>
                                                <h3><a href="#"><?= $gwil->judul_wawasan_islami; ?></a></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>

</html>