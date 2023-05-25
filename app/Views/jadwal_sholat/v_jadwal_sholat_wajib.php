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
                    <h2 class="heading-section mb-5  bold-text" style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">Bandung</h2>
                    <h2 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">
                        <p id="DisplayClock" class="clock" onload="showTime()" style="margin-top: -17%"></p>
                    </h2>
                    <h5 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">
                        <p id="DisplayDate" onload="showDate()" style="margin-top: -7%"></p>
                    </h5>
                </div>
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 30px">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Imsak</h4>
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_imsak; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Subuh (Fajr)</h4>
                                <img src="/assets/assets-mobile/icon-menu/sunrise.png" alt="sunrise" width="30em" height="30em" style="margin-top:-7%; margin-left:20%;" />
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
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Dzuhur</h4>
                                <img src="/assets/assets-mobile/icon-menu/sun1.png" alt="sunrise" width="30em" height="30em" style="margin-top:-7%; margin-left:38%;" />
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
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Ashar</h4>
                                <img src="/assets/assets-mobile/icon-menu/sun2.png" alt="sunrise" width="37em" height=37em" style="margin-top:-7%; margin-left:40%;" />
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
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Maghrib</h4>
                                <img src="/assets/assets-mobile/icon-menu/sunset.png" alt="sunrise" width="40em" height="40em" style="margin-top:-7%; margin-left:31%;" />
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_maghrib; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px;">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Isya</h4>
                                <img src="/assets/assets-mobile/icon-menu/night.png" alt="sunrise" width="35em" height="35em" style="margin-top:-7%; margin-left:50%;" />
                                <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px;"><?= $pengingat_isya; ?></h4>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div style="margin-top: 10%;">
                    <h1>
                        <p>.</p>
                    </h1>
                </div>
            </div>
        </div>
    </div>
</body>