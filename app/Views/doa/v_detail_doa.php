<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
	<div>
		<nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
			<a href="/doa_harian" class="nav-link text-center">
				<img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
			</a>
			<a href="/search">
				<img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/search.png" alt="SVG Happyku" width="40em" height="30em" style="color: white;" />
			</a>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-md-2 text-center">
					<h2 class="heading-section mb-5  bold-text" style="font-family: 'Inter',Arial, sans-serif; color: white; font-weight: bold;">Do'a Harian</h2>
					<?php foreach ($getDoaByStatus as $row1) : ?>
						<center>
							<h5 style="font-family: 'Inter',Arial, sans-serif; color: white"><?= $row1->judul_doa ?></h5>
						</center>
					<?php endforeach; ?>
				</div>
				<div class="col-md-6">
					<div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px;">
						<div class="text w-100">
							<table class="table">
								<tbody>
									<?php $nomor = 1;
									foreach ($getDoaDetailByStatus as $row) : ?>
										<tr>
											<td style="text-align: right;">
												<h1><?= $row->konten_doa ?></h1>
											</td>
										</tr>

										<tr>
											<td>
												<h5><?= $row->konten_latin_doa ?></h5>
											</td>
										</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>