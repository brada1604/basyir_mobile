                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <h1 class="h3 mb-2 text-gray-800 text-center">Tambah Rencana Ibadah Harian</h1>
                    </div>
                    <div class="d-flex flex-column align-items-center mb-4">
                        <div class="text-black-400 fw-semibold fs-8">
                            bingung mau cari amalan apa?
                            <a href="/amalan_yaumi" class="link-primary fw-bold">
                                Klik disini
                            </a>
                        </div>
                    </div>
                    <form action="<?= base_url(); ?>/rencana_kegiatan/save" method="post" enctype="multipart/form-data">

                        <div class="row card-group-row">

                            <?php if (isset($validation)) { ?>
                                <div class="col-md-12">
                                    <?php foreach ($validation->getErrors() as $error) : ?>
                                        <div class="alert alert-warning" role="alert">
                                            <i class="mdi mdi-alert-outline me-2"></i>
                                            <?= esc($error) ?>
                                        </div>
                                    <?php endforeach ?>
                                </div>
                            <?php } ?>
                            <div class="col-md-12">
                                <div class="list-group list-group-flush">
                                    <!-- <div class="list-group-item p-3">
                                        <div class="row align-items-start">
                                            <div class="col-md-2 mb-8pt mb-md-0">
                                                <div class="media align-items-left">
                                                    <div class="d-flex flex-column media-body media-middle">
                                                        <span class="card-title">ID User</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col mb-8pt mb-md-0"> -->
                                                <input type="hidden" name="id_user" type="text" class="form-control" value="<?= $session->get('id') ?>" placeholder="<?= $session->get('name'); ?> - <?= $session->get('email'); ?>" readonly />
                                            <!-- </div>
                                        </div>
                                    </div> -->

                                    <!-- <div class="list-group-item p-3">
                                        <div class="row align-items-start">
                                            <div class="col-md-2 mb-8pt mb-md-0">
                                                <div class="media align-items-left">
                                                    <div class="d-flex flex-column media-body media-middle">
                                                        <span class="card-title">ID Amalan Yaumi</span>
                                                    </div>
                                                </div>
                                            </div> -->
                                            <!-- <div class="col mb-8pt mb-md-0"> -->
                                                <input type="hidden" name="id_amalan_yaumi" value="<?= $id_amalan_yaumi ?>" type="text" class="form-control" placeholder="Masukan ID Amalan Yaumi" readonly />
                                            <!-- </div>
                                        </div>
                                    </div> -->

                                    <div class="list-group-item p-3">
                                        <div class="row align-items-start">
                                            <div class="col-md-2 mb-8pt mb-md-0">
                                                <div class="media align-items-left">
                                                    <div class="d-flex flex-column media-body media-middle">
                                                        <span class="card-title">Amalan Yaumi</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col mb-8pt mb-md-0">
                                                <input name="judul_amalan_yaumi" value="<?= $judul_amalan_yaumi ?>" type="text" class="form-control" placeholder="Masukan ID Amalan Yaumi" readonly />
                                            </div>
                                        </div>
                                    </div>

                                    <?php if ($id_amalan_yaumi == 1): ?>   
                                        <div class="list-group-item p-3">
                                            <div class="row align-items-start">
                                                <div class="col-md-2 mb-8pt mb-md-0">
                                                    <div class="media align-items-left">
                                                        <div class="d-flex flex-column media-body media-middle">
                                                            <span class="card-title">Keterangan Kegiatan</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col mb-8pt mb-md-0">
                                                    <input name="keterangan_kegiatan" type="text" class="form-control" placeholder="Masukan rencana kegiatan ibadah kamu" required />
                                                </div>
                                            </div>
                                        </div>
                                    <?php endif ?>

                                    <div class="list-group-item p-3">
                                        <div class="row align-items-start">
                                            <div class="col-md-2 mb-8pt mb-md-0">
                                                <div class="media align-items-left">
                                                    <div class="d-flex flex-column media-body media-middle">
                                                        <span
                                                        class="card-title">Jadwal</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col mb-8pt mb-md-0">
                                                <input type="datetime-local" id="jadwal_notifikasi" name="jadwal_notifikasi" value="<?= old('jadwal_notifikasi') ?>" type="text" class="form-control" placeholder="Masukan Link Notifikasi" required />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col align-items-right">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                                <a href="http://localhost:8080/rencana_kegiatan" class="btn btn-secondary">
                                    <i class="bi bi-arrow-left btn-danger"></i> Kembali
                                </a>
                            </div>
                        </div>

                    </form>

                </div>
                <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->