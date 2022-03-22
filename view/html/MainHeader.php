<?php require_once("../html/MainHeader.php"); ?>
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
              <span class="logged-name hidden-md-down"></span><?php echo $_SESSION["usu_nom"]." ".$_SESSION["usu_app"]?></span>
              <img src="http://via.placeholder.com/64x64" class="wd-32 rounded-circle" alt="">
              <span class="square-10 bg-success"></span>
            </a>

            <input type="hidden" index="usu_idx" value="<?php echo $_SESSION["usu_id"] ?>"> <!-- usu_id del usuario -->

            <div class="dropdown-menu dropdown-menu-header wd-200">
              <ul class="list-unstyled user-profile-nav">
                <li><a href="../UsuPerfil/"><i class="icon ion-ios-gear"></i> Perfil </a></li>
                <li><a href="../html/Logout.php"><i class="icon ion-power"></i> Cerrar Sesion </a></li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>