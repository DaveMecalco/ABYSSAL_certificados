<?php
    require_once("../config/conexion.php");
    require_once("../models/Usuario.php");

    $usuario = new usuario();

    switch($_GET["op"]){
        case "listar_cursos":
            $datos=$usuario->get_cuursos_x_usuario($_POST["usu_id"]);
            $data= Array();
            foreach($datos as $row){
                $sub_array = array();
                $sub_array[] = $row["cur_nom"];
                $sub_array[] = $row["cur_fechi"];
                $sub_array[] = $row["cur_fechf"];
                $sub_array[] = $row["inst_nom"]." ".$row["inst_app"];
                
                $data[] = $sub_array;
            }
            $results=array(
                "sEcho"=>1,
                "iTotalRecords"=>count($data),
                "iTotalDisplayRecords"=>count($data),
                "aaData"=>$data);
            echo json_encode($results);
        break;
    }
?>