<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-2 text-center">
                    <h2 class="heading-section mb-5  bold-text" style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">Pengaturan</h2>
                </div>
                <div class="col-md-6">
                    <div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px; height: 550px; margin-bottom: 100px;">
                        <div class="text w-100">
                            <nav class=" navbar container">
                                <h5 style="font-family: 'Inter',Arial, sans-serif; color: #629C87;">Aktifkan Notifikasi</h5>
                                <a href="/pengaktifan">
                                    <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/next.png" alt="SVG Happyku" width="25em" height="25em" />
                                </a>
                            </nav>
                            <br>
                            <nav class=" navbar container">
                                <h5 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom: 10%;">Izinkan Untuk Melakukan <br> Broadcast Email</h5>
                                <a href="/broadcast">
                                    <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/next.png" alt="SVG Happyku" width="25em" height="25em" style="margin-bottom: 55%;" />
                                </a>
                            </nav>
                            <nav class=" navbar container">
                                <?php if (!empty($session->get('name'))) : ?>
                                    <a href="/logout">
                                        <h5 style="font-family: 'Inter',Arial, sans-serif; color: red; margin-bottom: 515%">Logout</h5>
                                    </a>
                                <?php else : ?>
                                    <a href="/login">
                                        <h5 style="font-family: 'Inter',Arial, sans-serif; color: #629C87; margin-bottom: 515%">Login</h5>
                                    </a>
                                <?php endif ?>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>