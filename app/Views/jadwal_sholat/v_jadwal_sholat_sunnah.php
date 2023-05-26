    <body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
        <div>
            <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
                <a href="/jadwal_sholat_wajib" class="nav-link text-center">
                    <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
                </a>
            </nav>
            <div class="container">
                <div class="row">
                    <div class="col-md-2 text-center">
                        <h4 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">
                            <p id="DisplayClock" class="clock" onload="showTime()" style="margin-top: 0%"></p>
                        </h4>
                        <h5 style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">
                            <p id="DisplayDate" onload="showDate()" style="margin-top: -7%"></p>
                        </h5>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 100px">
                            <div class="text w-100">
                                <nav class=" navbar container">
                                    <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Dhuha</h4>
                                    <a href="/waktu_sholat_sunnah/dhuha" class="nav-link text-center">
                                        <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/next.png" alt="SVG Happyku" width="30em" height="30em" style="margin-bottom: 10px" />
                                    </a>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!--  -->
                    <div class="col-md-6">
                        <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px">
                            <div class="text w-100">
                                <nav class=" navbar container">
                                    <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Rawatib</h4>
                                    <a href="/waktu_sholat_sunnah/rawatib" class="nav-link text-center">
                                        <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/next.png" alt="SVG Happyku" width="30em" height="30em" height="30em" style="margin-bottom: 10px" />
                                    </a>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!--  -->
                    <div class="col-md-6">
                        <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 80px; margin-top: 20px">
                            <div class="text w-100">
                                <nav class=" navbar container">
                                    <h4 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom:15px; font-weight: bold;">Tahajud</h4>
                                    <a href="/waktu_sholat_sunnah/tahajud" class="nav-link text-center">
                                        <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/next.png" alt="SVG Happyku" width="30em" height="30em" height="30em" style="margin-bottom: 10px" />
                                    </a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>