<?php
	include('model.php');
    /*
	$idlocutor = "L000";
	$idprograma = "P000";
    */

	$model = new Model();
	//echo $model.getLocutor($idlocutor) .",". $model.getPrograma($idprograma);
    echo $model->getHorario();
?>