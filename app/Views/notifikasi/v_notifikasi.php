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
			  		<?php foreach ($getNotifikasiByIdUserLogin as $row) :?>
			    	<tr>
			      		<th scope="row"><img src="<?= base_url();?>/assets/assets-mobile/icon-menu/notification.svg" alt="SVG Happyku" width="25em" height="25em"/></th>
			    	  	<td><a href="/notifikasi/read/<?= $row->id_target_notifikasi?>"><?= $row->pesan_notifikasi?></a></td>
			    	</tr>
			    	<?php endforeach; ?>
			    	

			  	</tbody>
			</table>

            
        </div>

    </div>

</body>