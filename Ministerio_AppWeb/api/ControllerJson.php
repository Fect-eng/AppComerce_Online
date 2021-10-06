<?php

require_once "ModeloJson.php"; 


class ControllerJson 

{
	public function createUsuarioController($usuario, $password, $role, $mail) {

		$datosController = array("usuario"=>$usuario, 
		"password"=>$password, 
		"role"=>$role,
		"mail"=>$mail); 

		$respuesta = Datos::createUsuario($datosController,"usuarios");
		return $respuesta; 
	}
}

$obj = new ControllerJson(); 
$obj->createUsuarioController("skywoker", "9888", "cliente", "iker@gmail.com");

?>