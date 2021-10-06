<?php
class Conexion
{
	public function conectar() {
		$localhost = "localhost"; 
		$database = "virtual_comerce"; 
		$user = "root"; 
		$password = "";

		$link = new PDO("mysql:host=$localhost;dbname=$database",$user, $password);

		return $link; 
	}
}

/*
$obj = new Conexion(); 
$obj->conectar();
*/

?>