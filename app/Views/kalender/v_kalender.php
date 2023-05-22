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
        	<center><h2>Kalender</h2></center>

          	<section class="ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="content w-100">
					    <div class="calendar-container">
					      <div class="calendar"> 
					        <div class="year-header"> 
					          <span class="left-button fa fa-chevron-left" id="prev"> </span> 
					          <span class="year" id="label"></span> 
					          <span class="right-button fa fa-chevron-right" id="next"> </span>
					        </div> 
					        <table class="months-table w-100"> 
					          <tbody>
					            <tr class="months-row">
					              <td class="month">Jan</td> 
					              <td class="month">Feb</td> 
					              <td class="month">Mar</td> 
					              <td class="month">Apr</td> 
					              <td class="month">May</td> 
					              <td class="month">Jun</td> 
					              <td class="month">Jul</td>
					              <td class="month">Aug</td> 
					              <td class="month">Sep</td> 
					              <td class="month">Oct</td>          
					              <td class="month">Nov</td>
					              <td class="month">Dec</td>
					            </tr>
					          </tbody>
					        </table> 
					        
					        <table class="days-table w-100"> 
					          <td class="day">Sun</td> 
					          <td class="day">Mon</td> 
					          <td class="day">Tue</td> 
					          <td class="day">Wed</td> 
					          <td class="day">Thu</td> 
					          <td class="day">Fri</td> 
					          <td class="day">Sat</td>
					        </table> 
					        <div class="frame"> 
					          <table class="dates-table w-100"> 
				              <tbody class="tbody">             
				              </tbody> 
					          </table>
					        </div> 
					        <button class="button" id="add-button">Tambah Kegiatan</button>
					      </div>
					    </div>
					    <div class="events-container">
					    </div>
					    <div class="dialog" id="dialog">
					        <h2 class="dialog-header"> Tambah Kegiatan Baru </h2>
					        <form class="form" id="form">
					          <div class="form-container" align="center">
					            <label class="form-label" id="valueFromMyButton" for="name">Nama Kegiatan</label>
					            <input class="input" type="text" id="name" maxlength="36">
					            <label class="form-label" id="valueFromMyButton" for="count">Number of people to invite</label>
					            <input class="input" type="number" id="count" min="0" max="1000000" maxlength="7">
					            <input type="button" value="Cancel" class="button" id="cancel-button">
					            <input type="button" value="OK" class="button button-white" id="ok-button">
					          </div>
					        </form>
					      </div>
					  </div>
					</div>
				</div>
			</div>
		</section>

			<br>
			<br>
			<br>
			<br>
        </div>

    </div>

</body>