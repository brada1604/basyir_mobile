<?php
date_default_timezone_set('Asia/Jakarta');
?>
<?php
$jam = date('H:i'); // Tanggal hari ini
$jam_sekarang = date('H'); // Tanggal hari ini
$menit_sekarang = date('i'); // Tanggal hari ini
// echo '<br>jam sekarang '.$jam_sekarang;
// echo '<br>menit sekarang '.$menit_sekarang;
// echo '<br>Imsak '.$pengingat_imsak;
// echo '<br>Subuh '.$pengingat_subuh;
// echo '<br>Dzuhur '.$pengingat_dzuhur;
// echo '<br>Ashar '.$pengingat_ashar;
// echo '<br>Magrib '.$pengingat_maghrib;
// echo '<br>Isya '.$pengingat_isya;

if ($jam <= $pengingat_imsak) {
    // echo 'mendekati Imsak';
    $solat_yang_tampil = 'Imsak';
    $waktu_solat_yang_tampil = $pengingat_imsak;
    $selisih = strtotime($pengingat_imsak) - strtotime($jam);
    $selisih_jam   = floor($selisih / (60 * 60));
    $selisih_menit = $selisih - ($selisih_jam * (60 * 60));

    // echo '<br>'.$selisih_jam;
    // echo '<br>'.floor( $selisih_menit / 60 );
} elseif ($jam <= $pengingat_subuh) {
    // echo 'mendekati Subuh';
    $solat_yang_tampil = 'Subuh';
    $waktu_solat_yang_tampil = $pengingat_subuh;
    $selisih = strtotime($pengingat_subuh) - strtotime($jam);
    $selisih_jam   = floor($selisih / (60 * 60));
    $selisih_menit = $selisih - ($selisih_jam * (60 * 60));

    // echo '<br>'.$selisih_jam;
    // echo '<br>'.floor( $selisih_menit / 60 );
} elseif ($jam <= $pengingat_dzuhur) {
    // echo 'mendekati Dzuhur';
    $solat_yang_tampil = 'Dzuhur';
    $waktu_solat_yang_tampil = $pengingat_dzuhur;
    $selisih = strtotime($pengingat_dzuhur) - strtotime($jam);
    $selisih_jam   = floor($selisih / (60 * 60));
    $selisih_menit = $selisih - ($selisih_jam * (60 * 60));

    // echo '<br>'.$selisih_jam;
    // echo '<br>'.floor( $selisih_menit / 60 );
} elseif ($jam <= $pengingat_ashar) {
    // echo 'mendekati Ashar';
    $solat_yang_tampil = 'Ashar';
    $waktu_solat_yang_tampil = $pengingat_ashar;
    $selisih = strtotime($pengingat_ashar) - strtotime($jam);
    $selisih_jam   = floor($selisih / (60 * 60));
    $selisih_menit = $selisih - ($selisih_jam * (60 * 60));

    // echo '<br>'.$selisih_jam;
    // echo '<br>'.floor( $selisih_menit / 60 );
} elseif ($jam <= $pengingat_maghrib) {
    // echo 'mendekati Magrib';
    $solat_yang_tampil = 'Maghrib';
    $waktu_solat_yang_tampil = $pengingat_maghrib;
    $selisih = strtotime($pengingat_maghrib) - strtotime($jam);
    $selisih_jam   = floor($selisih / (60 * 60));
    $selisih_menit = $selisih - ($selisih_jam * (60 * 60));

    // echo '<br>'.$selisih_jam;
    // echo '<br>'.floor( $selisih_menit / 60 );
} elseif ($jam <= $pengingat_isya) {
    // echo 'mendekati Isya';
    $solat_yang_tampil = 'Isya';
    $waktu_solat_yang_tampil = $pengingat_isya;
    $selisih = strtotime($pengingat_isya) - strtotime($jam);
    $selisih_jam   = floor($selisih / (60 * 60));
    $selisih_menit = $selisih - ($selisih_jam * (60 * 60));

    // echo '<br>'.$selisih_jam;
    // echo '<br>'.floor( $selisih_menit / 60 );
}
else{
    $solat_yang_tampil = 'Imsak';
    $waktu_solat_yang_tampil = $pengingat_imsak;
    $selisih_jam   = '0';
    $selisih_menit = '0';
}




// echo "<br>--------------------------------------<br>";
// echo $solat_yang_tampil.'<br>';
// echo $waktu_solat_yang_tampil.'<br>';
// echo '<br>'.$selisih_jam;
// echo '<br>'.floor( $selisih_menit / 60 );


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>

<body style="background-color: #ffff;">
<div class="container" style="background-image: url('/assets/image/home/Background_atas.jpg'); background-repeat: no-repeat; background-position: center; margin-top: -3%">
    <nav class="navbar navbar-expand-lg">
        <a href="/kalender">
            <h5 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">
                <p id="DisplayDate" onload="showDate()" style="margin-top: 15%"></p>
                <p id="DisplayClock" class="clock" onload="showTime()" style="margin-top: -15%"></p>
            </h5>
        </a>
        <div>
            <a href="/notifikasi">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/notification_putih.png" alt="SVG Happyku" width="40em" height="40em" style="color: white;" />
            </a>
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
                    <a href="/doa_harian" class="nav-link text-center">
                        <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/dua.png" alt="SVG Happyku" width="60em" height="60em" />
                        <!-- <span class="small d-block" style="color:#000000">Berita</span> -->
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/menu_lainnya" class="nav-link text-center">
                        <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/more.png" alt="SVG Happyku" width="60em" height="60em" />
                        <!-- <span class="small d-block" style="color:#000000">Berita</span> -->
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>



    <div class="container">
        <br>
        <br>
        <div class="container d-flex justify-content-center">
            <div class="row">
                <div id="carouselExampleControls" class="carousel slide d-flex justify-content-center" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="col-md-12">
                            <!-- Card 1 -->
                                <div class="card shadow" style="background-image: url('/assets/image/Background.png'); border-radius: 20px; width: 18rem;">
                                    <nav class="navbar navbar-dark navbar-expand d-md-none d-lg-none d-xl-none p-0">
                                        <div class="text w-100">
                                            <a href="/jadwal_sholat_wajib">
                                                <h5 class="container card-title" style="font-family: 'Inter',Arial, sans-serif; font-weight: bold; color: #ffff; ">Waktu Sholat</h5>
                                                <h6 class="container card-text" style="font-family: 'Inter',Arial, sans-serif; font-weight: bold; color: #ffff; "><?= $solat_yang_tampil ?> <?= $waktu_solat_yang_tampil ?><br> <?= $selisih_jam ?>:<?= floor($selisih_menit / 60) ?> Tersisa</h6>
                                            </a>
                                        </div>
                                        <img src="/assets/assets-mobile/icon-menu/adzan.png" alt="orang adzan" height="100px">
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="col-md-12">
                                <!-- Card 2 -->
                                <?php foreach ($getKutipanLandingPage as $gklp) : ?>
                                    <div class=" d-flex align-items-end justify-content-center shadow" style="background-image: url('/assets/image/Background.png'); border-radius: 20px; ">
                                        <div class="text w-100">
                                            <h4 class="container" style="font-family: 'Inter',Arial, sans-serif; font-weight: bold; color: #ffff; "><?= $gklp->sumber_kutipan; ?></h4>
                                            <h5 class="container" style="font-family: 'Inter',Arial, sans-serif; color: #ffff;"><?= $gklp->deskripsi_kutipan; ?></h5>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-sm">
        <br>
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="/berita" class="navbar-brand">
                <h4 class="heading-section mb-0" style="color: #629C87;">Berita Terkini</h4>
            </a>
        </nav>
        <div id="carouselExampleControls" class="carousel slide d-flex justify-content-center" data-ride="carousel">
            <div class="carousel-inner" style="border-radius: 10px; padding: 12px;">
                <?php $count = 0; ?>
                <?php foreach ($getBeritaLandingPage as $gblp) : ?>
                    <div class="carousel-item<?= $count === 0 ? ' active' : ''; ?>" style="height: 200px;">
                    <div class="row h-100">
                        <div class="col-sm-12">
                            <div class="card h-10 shadow" style="border-radius: 10px; padding: 3px;">
                                <img src="<?= base_url($gblp->gambar_berita); ?>" class="card-img-top img-fluid card-image" alt="Berita" style="width: 350px; height: 100px">
                                <div class="card-body">
                                    <nav class="navbar navbar-dark navbar-expand d-md-none d-lg-none d-xl-none p-0">
                                        <a href="/berita/detail_berita/<?= $gblp->id_berita; ?>" class="text-decoration-none text-dark">
                                            <p class="card-title d-inline" style="color: #629C87;"><?= $gblp->judul_berita; ?></p>
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


    <div class="container" style="margin-bottom: 100px;">
        <br>
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="/wawasan_islami" class="navbar-brand">
                <h4 class="heading-section mb-0" style="color: #629C87;">Wawasan Islami</h4>
            </a>
        </nav>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <?php
                $nomor = 1;
                foreach ($getWawasanIslamiLandingPage as $gwil) :
                ?>
                    <div class="carousel-item<?= $nomor === 1 ? ' active' : ''; ?>">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="item">
                                    <div class="work">
                                        <div class="img d-flex align-items-end justify-content-center" style="background-image: url(<?= base_url($gwil->gambar_wawasan_islami); ?>);">
                                            <div class="text w-100">
                                                <span class="cat"><?= $gwil->nama_kategori_wawasan_islami; ?></span>
                                                <h3><a href="/wawasan_islami/detail_wawasan_islami/<?= $gwil->id_wawasan_islami; ?>">
                                                    <p><?= $gwil->judul_wawasan_islami; ?></p>
                                                </a></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    $nomor++;
                endforeach;
                ?>
            </div>
        </div>
    </div>
</body>


</html>