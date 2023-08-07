<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Basyir Mobile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            
        <link rel="stylesheet" href="<?= base_url();?>/assets/assets-mobile/carousel-03/css/owl.carousel.min.css">
        <link rel="stylesheet" href="<?= base_url();?>/assets/assets-mobile/carousel-03/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="<?= base_url();?>/assets/assets-mobile/carousel-03/css/style.css">


    
        <link rel="stylesheet" href="<?= base_url();?>/assets/assets-mobile/calendar-08/css/style.css">
        <style>
            #loader {
                border: 12px solid #f3f3f3;
                border-radius: 50%;
                border-top: 12px solid #444444;
                width: 70px;
                height: 70px;
                animation: spin 1s linear infinite;
            }

            .center {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                margin: auto;
            }

            @keyframes spin {
                100% {
                    transform: rotate(360deg);
                }
            }
        </style>
    </head>

    <body>
        <div id="loader" class="center"></div>