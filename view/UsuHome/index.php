<?php
  require_once("../../config/conexion.php");
  if(isset($_SESSION["usu_id"])){
?>
<!DOCTYPE html>
<html lang="es">
  <head>
      <?php require_once("../html/MainHead.php"); ?>
    <title>Home</title>
  </head>

  <body>

    <?php require_once("../html/MainMenu.php"); ?>
    <?php require_once("../html/MainHeader.php"); ?>

    <!--Main Página -->
    <div class="br-mainpanel">
      <div class="br-pageheader pd-y-15 pd-l-20">
        <nav class="breadcrumb pd-0 mg-0 tx-12">
          <a class="breadcrumb-item" href="#">Home </a>
        </nav>
      </div>
      <div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
        <h4 class="tx-gray-800 mg-b-5"> Home </h4>
        <p class="mg-b-0">Aquí ira el contenido de tablas y certificados para descargar para descargar </p>
      </div>

      <div class="br-pagebody">



      </div>
    </div>

    <?php require_once("../html/MainJs.php"); ?>
  </body>
</html>
<?php
  }else{
    header("Location:".Conectar::ruta()."/view/404/index.php");
  }
?>