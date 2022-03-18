<!DOCTYPE html>
<html lang="es">
  <head>
      <?php require_once("../html/MainHead.php"); ?>
    <title>Home</title>
  </head>

  <body>

    <!-- Titulo de la Empresa -->
    <div class="br-logo"><a href=""><span>[</span>ABYSSAL<span>]</span></a></div>

    <!--Barra de Navegación Opciones Izquierda -->
    <div class="br-sideleft overflow-y-auto">
      <label class="sidebar-label pd-x-15 mg-t-20">Navecación</label>
      <div class="br-sideleft-menu">
        <a href="index.html" class="br-menu-link">

          <!-- Elementos menu -->
          <div class="br-menu-item">
            <i class="menu-item-icon icon ion-ios-home-outline tx-22"></i>
            <span class="menu-item-label">Inicio</span>
          </div>
        </a>
        <a href="#" class="br-menu-link">
          <div class="br-menu-item">
            <i class="menu-item-icon icon ion-ios-bookmarks-outline tx-20"></i>
            <span class="menu-item-label">Mis Cursos</span>
          </div>
        </a>
        <a href="#" class="br-menu-link">
          <div class="br-menu-item">
            <i class="menu-item-icon icon ion-ios-gear-outline tx-24"></i>
            <span class="menu-item-label">Perfil</span>
          </div>
        </a>
      </div>
    </div>

    <!--Barra de Navegación Perfil-->
    <div class="br-header">
      <div class="br-header-left">
        <div class="navicon-left hidden-md-down"><a id="btnLeftMenu" href=""><i class="icon ion-navicon-round"></i></a></div>
        <div class="navicon-left hidden-lg-up"><a id="btnLeftMenuMobile" href=""><i class="icon ion-navicon-round"></i></a></div>
        <div class="input-group hidden-xs-down wd-170 transition">
          <input id="searchbox" type="text" class="form-control" placeholder="Search">
          <span class="input-group-btn">
            <button class="btn btn-secondary" type="button"><i class="fa fa-search"></i></button>
          </span>
        </div>
      </div><
          <div class="dropdown">
            <a href="" class="nav-link nav-link-profile" data-toggle="dropdown">
              <span class="logged-name hidden-md-down">David Mecalco</span>
              <img src="http://via.placeholder.com/64x64" class="wd-32 rounded-circle" alt="">
              <span class="square-10 bg-success"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-header wd-200">
              <ul class="list-unstyled user-profile-nav">
                <li><a href=""><i class="icon ion-ios-person"></i> Editar perfil </a></li>
                <li><a href=""><i class="icon ion-ios-gear"></i> Configuración </a></li>
                <li><a href=""><i class="icon ion-ios-download"></i> Diplomas </a></li>
                <li><a href=""><i class="icon ion-ios-star"></i> Favoritos </a></li>
                <li><a href=""><i class="icon ion-ios-folder"></i> Cursos </a></li>
                <li><a href=""><i class="icon ion-power"></i> Salir </a></li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>


    <!--Main Página -->
    <div class="br-mainpanel">
      <div class="br-pageheader pd-y-15 pd-l-20">
        <nav class="breadcrumb pd-0 mg-0 tx-12">
          <a class="breadcrumb-item" href="index.html">Home </a>
          <span class="breadcrumb-item active"> Certificados </span>
        </nav>
      </div><!-- br-pageheader -->
      <div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
        <h4 class="tx-gray-800 mg-b-5"> Página principal </h4>
        <p class="mg-b-0">Aquí ira el contenido de tablas y certificados para descargar para descargar </p>
      </div>

      <div class="br-pagebody">
      </div>
    </div>

    <?php require_once("../html/MainJs.php"); ?>
  </body>
</html>
