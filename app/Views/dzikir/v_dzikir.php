<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
	<div>
		<nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
			<a href="/" class="nav-link text-center">
				<img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
			</a>
		</nav>
		<div>
			<center>
				<h2>Dzikir</h2>
			</center>

			<head>
				<title>Space Clicker</title>

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

					<center><button type="button" onclick="hello()" class="btn btn-lg btn-secondary">
							<h1><a id="clicks" style="color:white;">0</a></h1>
						</button></center>

					<!-- <p>Clicks: <a id="clicks">0</a></p> -->
				</div>
			</body>
			<br>
			<br>
			<br>
			<table class="table">
				<tbody>

					<tr>
						<td style="font-size: 1.5em;">Istighfar</td>
						<td style="font-size: 1.7em; text-align: right;">
							<h2>أَسْتَغْفِرُ الله</h2>
						</td>
					</tr>
					<tr>
						<td style="font-size: 1.5em;">Tasbih</td>
						<td style="font-size: 1.7em; text-align: right;">
							<h2>سُبْحَانَ ٱللَّٰهِ</h2>
						</td>
					</tr>
					<tr>
						<td style="font-size: 1.5em;">Takbir</td>
						<td style="font-size: 1.7em; text-align: right;">
							<h2>ٱللَّٰهُ أَكْبَرُ</h2>
						</td>
					</tr>
					<tr>
						<td style="font-size: 1.5em;">Hamdallah</td>
						<td style="font-size: 1.7em; text-align: right;">
							<h2>اَلْحَمْدُ لِلهِ</h2>
						</td>
					</tr>
				</tbody>
			</table>
			<center><button type="button" onclick="reset()" class="btn btn-lg btn-danger">Reset</button></center>
			<br>
			<br>
			<br>
			<br>
		</div>

	</div>

</body>