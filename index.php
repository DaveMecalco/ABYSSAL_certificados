<?php
  require_once("config/conexion.php");
  if(isset($_POST["enviar"]) and $_POST["enviar"]=="si"){
    require_once("models/Usuario.php");
    /* Inicializando Clase */
    $usuario = new Usuario();
    $usuario->login();
  }  
?>

<!-- sdsdfsdfsdfsdfsd -->

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="twitter:site" content="@themepixels">
    <meta name="twitter:creator" content="@themepixels">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Bracket">
    <meta name="twitter:description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="twitter:image" content="http://themepixels.me/bracket/img/bracket-social.png">
    <meta property="og:url" content="http://themepixels.me/bracket">
    <meta property="og:title" content="Bracket">
    <meta property="og:description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta property="og:image" content="http://themepixels.me/bracket/img/bracket-social.png">
    <meta property="og:image:secure_url" content="http://themepixels.me/bracket/img/bracket-social.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="600">
    <meta name="description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="author" content="ThemePixels">
    <link href="public/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="public/lib/Ionicons/css/ionicons.css" rel="stylesheet">
    <link href="public/lib/select2/css/select2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="public/css/bracket.css">
    
    <title>ABYSSAL</title>
  </head>

  <body>

    <div class="d-flex align-items-center justify-content-center bg-br-primary ht-100v">
      <form action="" method="post">
      <div class="login-wrapper wd-300 wd-xs-400 pd-25 pd-xs-40 bg-white rounded shadow-base">
        <div class="signin-logo tx-center tx-28 tx-bold tx-inverse"><span class="tx-normal">[</span>ABYSSAL CONSULTACY<span class="tx-normal">]</span></div>
        <div class="tx-center mg-b-40">Sistema de Certificados y Diplomas</div>
        <div class="form-group">
          <input type="text" id="usu_correo" name="usu_correo" class="form-control" placeholder="Correo electronico">
        </div>
        <div class="form-group">
          <input type="password" id="usu_pass" name="usu_pass" class="form-control" placeholder="Password">
        </div>
        <input type="hidden" name="enviar" class="form-control" value="si">
        <button type="submit" class="btn btn-info btn-block">Ingresar</button>
      </div>
      </form><!-- login-wrapper -->
    </div><!-- d-flex -->

    <script src="public/lib/jquery/jquery.js"></script>
    <script src="public/lib/popper.js/popper.js"></script>
    <script src="public/lib/bootstrap/bootstrap.js"></script>
    <script src="public/lib/select2/js/select2.min.js"></script>
  
  </body>
</html>