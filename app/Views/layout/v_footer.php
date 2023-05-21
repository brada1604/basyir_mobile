        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

        <script src="<?= base_url();?>/assets/assets-mobile/carousel-03/js/jquery.min.js"></script>
        <script src="<?= base_url();?>/assets/assets-mobile/carousel-03/js/popper.js"></script>
        <script src="<?= base_url();?>/assets/assets-mobile/carousel-03/js/bootstrap.min.js"></script>
        <script src="<?= base_url();?>/assets/assets-mobile/carousel-03/js/owl.carousel.min.js"></script>
        <script src="<?= base_url();?>/assets/assets-mobile/carousel-03/js/main.js"></script>



        <script src="<?= base_url();?>/assets/assets-mobile/calendar-08/js/main.js"></script>

        <script>
            $('.dropdown-toggle').dropdown()
        </script>

        <script type="text/javascript">
            function showTime(){
                var date = new Date();
                var dd = date.getDate();
                var mm = date.getMonth()+1;
                var yyyy = date.getFullYear();
                var h = date.getDay();
                var m = date.getMinutes();
                var s = date.getSeconds();

                dd = (dd<10) ? "0" + dd : dd;
                mm = (mm<10) ? "0" + mm : mm;
                h = (h<10) ? "0" + h : h;
                m = (m<10) ? "0" + m : m;
                s = (s<10) ? "0" + s : s;

                var time = dd + "-" + mm + "-" + yyyy + " " + h + ":" + m + ":" + s ;

                document.getElementById("DisplayClock").innerText = time;
                document.getElementById("DisplayClock").textContent = time;

                setTimeout(showTime, 1000);
            }

            showTime();
        </script>
  
    </body>
</html>