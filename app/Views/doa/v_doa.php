<body style="background-image: url('/assets/image/Background.png');  background-position: center; background-size: cover;">
    <div>
        <nav class=" navbar navbar-expand-lg navbar-light" style="margin-top: 20px;">
            <a href="/" class="nav-link text-center">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/Back.png" alt="SVG Happyku" width="30em" height="30em" />
            </a>
            <a href="/search">
                <img src="<?= base_url(); ?>/assets/assets-mobile/icon-menu/search.png" alt="SVG Happyku" width="40em" height="30em" style="color: white;" />
            </a>
        </nav>
        <div>
          	<table class="table">
			  	<tbody>
			  		<?php $nomor = 1; foreach ($getDoaByStatus as $row) :?>
			    	<tr>
			      		<th scope="row"><?= $nomor++;?></th>
			    	  	<td><a href="/doa_harian/detail_doa_harian/<?= $row->id_doa?>" style="color: black;"><?= $row->judul_doa?></a></td>
			    	  	<td style="text-align: right;"><?= $row->ringkasan_doa?></td>
			    	</tr>
			    	<?php endforeach; ?>
			  	</tbody>
			</table> 
			<br>
			<br>
			<br>
			<br>
        </div>

    </div>

</body>