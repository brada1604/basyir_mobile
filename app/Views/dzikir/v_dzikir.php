<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
	<div>
		<nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
			<a href="/" class="nav-link text-center">
				<img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
			</a>
			<button type="button" onclick="reset()" class="btn btn-lg btn-danger">Reset</button>
		</nav>
		<div>
			<section class="ftco-section">
				<div class="col-md-6">
					<div class="d-flex align-items-end justify-content-center" style="background-color: white; border-radius: 20px;">
						<div class="text w-100">
							<nav class=" navbar container">
								<tr>
									<td style="font-size: 1.5em;">Istighfar</td>
									<td style="font-size: 1.7em; text-align: right;">
										<h3>أَسْتَغْفِرُ الله</h3>
									</td>
								</tr>
							</nav>
							<nav class=" navbar container">
								<tr>
									<td style="font-size: 1.5em;">Tasbih</td>
									<td style="font-size: 1.7em; text-align: right;">
										<h3>سُبْحَانَ ٱللَّٰهِ</h3>
									</td>
								</tr>
							</nav>
							<nav class=" navbar container">
								<tr>
									<td style="font-size: 1.5em;">Takbir</td>
									<td style="font-size: 1.7em; text-align: right;">
										<h3>ٱللَّٰهُ أَكْبَرُ</h3>
									</td>
								</tr>
							</nav>
							<nav class=" navbar container">
								<tr>
									<td style="font-size: 1.5em;">Hamdallah</td>
									<td style="font-size: 1.7em; text-align: right;">
										<h3>اَلْحَمْدُ لِلهِ</h3>
									</td>
								</tr>
							</nav>
						</div>
					</div>
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>

				<head>
					<title>Space Clicker</title>
				</head>

				<body>
					<div class="container">
						<script type="text/javascript">
							var clicks = 0;

							function hello() {
								clicks += 1;
								document.getElementById("clicks").innerHTML = clicks;
								if (clicks === 33) {
									alert("Dzikir sudah mencapai 33");
								}
								if (clicks === 66) {
									alert("Dzikir sudah mencapai 66");
								}
								if (clicks === 99) {
									alert("Dzikir sudah mencapai 99");
									clicks = 0;
								}

							};

							function reset() {
								clicks = 0;
								document.getElementById("clicks").innerHTML = clicks;
							};
						</script>

						<center>
							<button type="button" onclick="hello()" class="btn btn-lg btn-secondary">
								<h1><a id="clicks" style="color:white;">0</a></h1>
							</button>
						</center>

						<!-- <p>Clicks: x<a id=" clicks">0</a></p> -->
					</div>
				</body>
				<br>
				<h5 class=" text-center" style="font-family: 'Inter',Arial, sans-serif; color: white;">Tekan Untuk Mulai Perhitungan</h5>
				<br>
				<br>
			</section>
		</div>

	</div>

</body>