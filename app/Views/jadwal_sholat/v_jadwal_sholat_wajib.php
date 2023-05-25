<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
            <a href="/waktu_sholat_sunnah" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/next.png" alt="SVG Happyku" width="30em" height="30em" style="margin-bottom: 10px" />
            </a>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-2 text-center">
                    <h2 class="heading-section mb-5  bold-text" style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">Solat Wajib</h2>
                </div>
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 30px">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;">Subuh (Fajr)</h4>
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_subuh; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;">Dzuhur</h4>
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_dzuhur; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;">Ashar</h4>
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_ashar; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;">Maghrib</h4>
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_maghrib; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;">Isya</h4>
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_isya; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
            </div>
        </div>
    </div>
</body>