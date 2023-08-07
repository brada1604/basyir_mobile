<?php
date_default_timezone_set('Asia/Jakarta');
?>
<script>
    document.onreadystatechange = function () {
        if (document.readyState !== "complete") {
            document.querySelector(
                "body").style.visibility = "hidden";
            document.querySelector(
                "#loader").style.visibility = "visible";
        } else {
            document.querySelector(
                "#loader").style.display = "none";
            document.querySelector(
                "body").style.visibility = "visible";
        }
    };
</script>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script src="<?= base_url(); ?>/assets/assets-mobile/carousel-03/js/jquery.min.js"></script>
<script src="<?= base_url(); ?>/assets/assets-mobile/carousel-03/js/popper.js"></script>
<script src="<?= base_url(); ?>/assets/assets-mobile/carousel-03/js/bootstrap.min.js"></script>
<script src="<?= base_url(); ?>/assets/assets-mobile/carousel-03/js/owl.carousel.min.js"></script>
<script src="<?= base_url(); ?>/assets/assets-mobile/carousel-03/js/main.js"></script>



<script src="<?= base_url(); ?>/assets/assets-mobile/calendar-08/js/main.js"></script>

<script>
    $('.dropdown-toggle').dropdown()
</script>

<script type="text/javascript">
    function showDate() {
        var date = new Date();
        var dd = date.getDate();
        var mm = date.getMonth() + 1;
        var hariIndonesia = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
        var hari = hariIndonesia[date.getDay()];

        dd = (dd < 10) ? "0" + dd : dd;

        var bulanIndonesia = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
        var bulan = bulanIndonesia[date.getMonth()];

        mm = (mm < 10) ? "0" + mm : mm;

        var tanggal = hari + ",\n" + (dd < 10 ? "0" + dd : dd) + " " + bulan;

        document.getElementById("DisplayDate").innerText = tanggal;
        document.getElementById("DisplayDate").textContent = tanggal;
    }
    showDate();
</script>

<script type="text/javascript">
    function showTime() {
        var date = new Date();
        var h = date.getHours();
        var m = date.getMinutes();
        var s = date.getSeconds();

        h = (h < 10) ? "0" + h : h;
        m = (m < 10) ? "0" + m : m;

        var waktu = h + ":" + m + " WIB";

        document.getElementById("DisplayClock").innerText = waktu;
        document.getElementById("DisplayClock").textContent = waktu;

        setTimeout(showTime, 1000);
    }

    showTime();
</script>

<p id="CountdownTimer"></p>

<script type="text/javascript">
    function countDownPrayerTime() {
        // Menggunakan API Kemenag RI untuk mendapatkan jadwal shalat
        var apiURL = "https://api.banghasan.com/sholat/format/json/jadwal/kota/667/tanggal/";
        fetch(apiURL)
            .then(response => response.json())
            .then(data => {
                var jadwalShalat = data.jadwal.data;

                // Ambil waktu shalat yang diperlukan dari jadwal shalat
                var prayerTime = jadwalShalat[0].waktu; // Misalnya, mengambil waktu shalat pertama

                // Konversi waktu shalat menjadi objek Date
                var prayerDateTime = new Date(prayerTime);
                var currentDateTime = new Date();

                // Hitung selisih waktu antara waktu shalat dan waktu sekarang
                var timeDiff = prayerDateTime.getTime() - currentDateTime.getTime();
                if (timeDiff <= 0) {
                    // Waktu shalat sudah berlalu, lakukan tindakan sesuai kebutuhan
                    return;
                }

                // Hitung jam, menit, dan detik yang tersisa
                var hours = Math.floor(timeDiff / (1000 * 60 * 60));
                var minutes = Math.floor((timeDiff % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((timeDiff % (1000 * 60)) / 1000);

                // Format waktu dengan menambahkan leading zero jika diperlukan
                var formattedTime = (hours < 10 ? "0" + hours : hours) + ":" +
                    (minutes < 10 ? "0" + minutes : minutes) + ":" +
                    (seconds < 10 ? "0" + seconds : seconds) + " Waktu Shalat";

                // Tampilkan waktu countdown pada elemen dengan ID "CountdownTimer"
                document.getElementById("CountdownTimer").innerText = formattedTime;
                document.getElementById("CountdownTimer").textContent = formattedTime;

                // Update countdown setiap satu detik
                setTimeout(countDownPrayerTime, 1000);
            })
            .catch(error => {
                console.log(error);
            });
    }

    countDownPrayerTime();
</script>



</body>

</html>