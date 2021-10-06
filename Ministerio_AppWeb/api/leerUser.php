
<?php

require_once "Conexion.php";

class Datos extends Conexion 

{
	public function createUsuario($tabla) {

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (usuario, password, role, mail) VALUES (:usuario, :password, :role, :mail)"); 

		//variables de apoyo
		$usuario = "erika"; 
		$password = "4321";
		$role = "administrador"; 
		$mail = "erika@gmail.com"; 

		$stmt->bindParam(":usuario", $usuario, PDO::PARAM_STR);
		$stmt->bindParam(":password", $password, PDO::PARAM_STR);
		$stmt->bindParam(":role", $role, PDO::PARAM_STR);
		$stmt->bindParam(":mail", $mail, PDO::PARAM_STR);


		if ($stmt->execute()) {
			echo "registro exitoso"; 
		}else{
			echo "no se pudo hacer el registro"; 
		}
	}

//=======================================================================================================================================
	public function readUsuariosModel($tabla) {
		$stmt = Conexion::conectar()->prepare("SELECT id, usuario, password, role, mail FROM $tabla"); 
		$stmt->execute(); 

		$stmt->bindColumn("id", $id); 
		$stmt->bindColumn("usuario", $usuario);
		$stmt->bindColumn("password", $password);
		$stmt->bindColumn("role", $role);
		$stmt->bindColumn("mail", $mail);

		$usuarios = array(); 

		//verificar
		echo '
		<table>
		<tr>
		<td><strong>id</strong></td>
		<td><strong>usuarios</strong></td>
		<td><strong>password</strong></td>
		<td><strong>role</strong></td>
		<td><strong>mail</strong></td>
		';

		while ($fila = $stmt->fetch(PDO::FETCH_BOUND)) {
			$user = array(); 
			$user["id"] = utf8_encode($id);
			$user["usuario"] = utf8_encode($usuario);
			$user["password"] = utf8_encode($password);
			$user["role"] = utf8_encode($role);
			$user["mail"] = utf8_encode($mail);

			array_push($usuarios, $user);

        echo'
        <tr>
        <td>'.$user['id'].'</td>
        <td>'.$user['usuario'].'</td>
        <td>'.$user['password'].'</td>
        <td>'.$user['role'].'</td>
        <td>'.$user['mail'].'</td>
        ';
		}

		echo '</table>';

		return $usuarios;
	} 

//=======================================================================================================================================
	public function loginUsuarioModel($tabla) {
		$stmt = Conexion::conectar()->prepare("SELECT id, usuario, password, role, mail FROM $tabla WHERE mail = :mail AND password = :password"); 

		$mail = "erika@gmail.com";
		$password = "4321";

		$stmt->bindParam(":mail", $mail);
		$stmt->bindParam(":password", $password);

		$stmt->execute();

		$stmt->bindColumn("id", $id);
		$stmt->bindColumn("usuario", $usuario);
		$stmt->bindColumn("password", $password);
		$stmt->bindColumn("role", $role);
		$stmt->bindColumn("mail", $mail); 

		//verificar
		echo '
		<table>
		<tr>
		<td><strong>id</strong></td>
		<td><strong>usuarios</strong></td>
		<td><strong>password</strong></td>
		<td><strong>role</strong></td>
		<td><strong>mail</strong></td>
		';

		while ($fila = $stmt->fetch(PDO::FETCH_BOUND)) {
			$user = array(); 
			$user["id"] = utf8_encode($id);
			$user["usuario"] = utf8_encode($usuario);
			$user["password"] = utf8_encode($password);
			$user["role"] = utf8_encode($role);
			$user["mail"] = utf8_encode($mail);

			//array_push($usuarios, $user);

        echo'
        <tr>
        <td>'.$user['id'].'</td>
        <td>'.$user['usuario'].'</td>
        <td>'.$user['password'].'</td>
        <td>'.$user['role'].'</td>
        <td>'.$user['mail'].'</td>
        ';
		}

		if (!empty($user)) {
			return $user; 
		}else{
			return false;
		}
	}
	//nuevo codigo para CRUD
	//crear titulo
	//=======================================================================================================================================
	public function createCategoriaModel($tabla) {
		
		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (titulo) VALUES (:titulo)"); 

		//variables de apoyo
		$titulo = "ARTESANIAS"; 

		$stmt->bindParam(":titulo",$titulo, PDO::PARAM_STR);

		if ($stmt->execute()) {
			echo "registro exitoso"; 
		}else{
			echo "no se pudo hacer el registro"; 
		}
	}
	

//=======================================================================================================================================
	public function readCategoriaModel($tabla) {
		//codigo read user

		$stmt = Conexion::conectar()->prepare("SELECT id, titulo FROM $tabla"); 
		$stmt->execute(); 

		$stmt->bindColumn("id", $id); 
		$stmt->bindColumn("titulo", $titulo);
	

		$categorias = array(); 

		//verificar
		echo '
		<table>
		<tr>
		<td><strong>id</strong></td>
		<td><strong>titulo</strong></td>
		';

		while ($fila = $stmt->fetch(PDO::FETCH_BOUND)) {
			$cat = array(); 
			$cat["id"] = utf8_encode($id);
			$cat["titulo"] = utf8_encode($titulo);
			
			array_push($categorias, $cat);

        echo'
        <tr>
        <td>'.$cat['id'].'</td>
        <td>'.$cat['titulo'].'</td>
        ';
		}

		echo '</table>';

		return $categorias;
	}

//=======================================================================================================================================
	public function updateCategoriaModel($tabla) {
		//codigo actualizar data
		$stmt = Conexion::conectar()->prepare("UPDATE $tabla set titulo = :titulo WHERE id = :id"); 

		//variables de apoyo
		$id =5;
		$titulo = "CÁMARAS"; 

		$stmt->bindParam(":titulo",$titulo, PDO::PARAM_STR);
		$stmt->bindParam(":id",$id, PDO::PARAM_STR);

		if ($stmt->execute()) {
			echo "Edicion exitoso"; 
		}else{
			echo "no se pudo hacer la Edicion"; 
		}
	}
	
//=======================================================================================================================================
	public function deleteCategoriaModel($id, $tabla) {
		//codigo eliminar categoria
		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id"); 
		$stmt->bindParam(":id", $id, PDO::PARAM_INT); 

		if ($stmt->execute()) {
			echo "categoria eliminada correctamente"; 
		}else{
			echo "la categoria no pudo ser eliminada"; 
		}

	}

//=======================================================================================================================================
	public function createVentasModel($tabla) {
		//ventas creadas
		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (usuario, producto, imagen, costo, fecha) VALUES (:usuario, :producto, :imagen, :costo, :fecha)"); 

		//variables de apoyo
		$usuario = "10"; 
		$producto = "cambio Total";
		$imagen = "imagen.jpg";
		$costo = "125689"; 
		$fecha = "2018-05-19 00:22:01"; 

		$stmt->bindParam(":usuario", $usuario, PDO::PARAM_STR);
		$stmt->bindParam(":producto", $producto, PDO::PARAM_STR);
		$stmt->bindParam(":imagen", $imagen, PDO::PARAM_STR);
		$stmt->bindParam(":costo", $costo, PDO::PARAM_STR);
		$stmt->bindParam(":fecha", $fecha, PDO::PARAM_STR);


		if ($stmt->execute()) {
			echo "venta Realizada"; 
		}else{
			echo "no se pudo hacer la venta"; 
		}
	}

//=======================================================================================================================================
	public function readVentasModel($tabla) {
		//ventas vistas
		$stmt = Conexion::conectar()->prepare("SELECT V.id, U.usuario, V.producto, V.imagen, V.fecha FROM $tabla V INNER JOIN usuarios U ON V.usuario = U.id ORDER BY V.fecha"); 
		$stmt->execute(); 

		$stmt->bindColumn("id", $id); 
		$stmt->bindColumn("usuario", $usuario);
		$stmt->bindColumn("producto", $producto);
		$stmt->bindColumn("imagen", $imagen);
		$stmt->bindColumn("fecha", $fecha);

		$ventas = array(); 

		//verificar
		echo '
		<table>
		<tr>
		<td><strong>id</strong></td>
		<td><strong>usuarios</strong></td>
		<td><strong>producto</strong></td>
		<td><strong>imagen</strong></td>
		<td><strong>fecha</strong></td>
		';

		while ($fila = $stmt->fetch(PDO::FETCH_BOUND)) {
			$ven = array(); 
			$ven["id"] = utf8_encode($id);
			$ven["usuario"] = utf8_encode($usuario);
			$ven["producto"] = utf8_encode($producto);
			$ven["imagen"] = utf8_encode($imagen);
			$ven["fecha"] = utf8_encode($fecha);

			array_push($ventas, $ven);

        echo'
        <tr>
        <td>'.$ven['id'].'</td>
        <td>'.$ven['usuario'].'</td>
        <td>'.$ven['producto'].'</td>
        <td>'.$ven['imagen'].'</td>
        <td>'.$ven['fecha'].'</td>
        ';
		}

		echo '</table>';

		return $ventas;

	}

//=======================================================================================================================================
	public function readVentasEspecificas($usuario, $tabla) {
		//ventas visitas especificas

		$stmt = Conexion::conectar()->prepare("SELECT V.id, U.usuario, V.producto, V.imagen, V.fecha FROM $tabla V INNER JOIN usuarios U ON V.usuario = U.id WHERE U.id = $usuario ORDER BY V.fecha"); 
		$stmt->execute(); 

		$stmt->bindColumn("id", $id); 
		$stmt->bindColumn("usuario", $usuario);
		$stmt->bindColumn("producto", $producto);
		$stmt->bindColumn("imagen", $imagen);
		$stmt->bindColumn("fecha", $fecha);

		$ventas = array(); 

		//verificar
		echo '
		<table>
		<tr>
		<td><strong>id</strong></td>
		<td><strong>usuarios</strong></td>
		<td><strong>producto</strong></td>
		<td><strong>imagen</strong></td>
		<td><strong>fecha</strong></td>
		';

		while ($fila = $stmt->fetch(PDO::FETCH_BOUND)) {
			$ven = array(); 
			$ven["id"] = utf8_encode($id);
			$ven["usuario"] = utf8_encode($usuario);
			$ven["producto"] = utf8_encode($producto);
			$ven["imagen"] = utf8_encode($imagen);
			$ven["fecha"] = utf8_encode($fecha);

			array_push($ventas, $ven);

        echo'
        <tr>
        <td>'.$ven['id'].'</td>
        <td>'.$ven['usuario'].'</td>
        <td>'.$ven['producto'].'</td>
        <td>'.$ven['imagen'].'</td>
        <td>'.$ven['fecha'].'</td>
        ';
		}

		echo '</table>';

		return $ventas;
	}

//=======================================================
	public function readProductosModel($tabla) {
		$stmt = Conexion::conectar()->prepare("SELECT id, titulo, descripcion, contenido, imagen, precio, calificacion, categoria FROM $tabla");
		$stmt->execute(); 

		$stmt->bindColumn("id", $id); 
		$stmt->bindColumn("titulo", $titulo);
		$stmt->bindColumn("descripcion", $descripcion);
		$stmt->bindColumn("contenido", $contenido);
		$stmt->bindColumn("imagen", $imagen);
		$stmt->bindColumn("precio", $precio);
		$stmt->bindColumn("calificacion", $calificacion);
		$stmt->bindColumn("categoria", $categoria);

		$productos = array();

		//verificar
		echo '
		<table>
		<tr>
		<td><strong>id</strong></td>
		<td><strong>titulo</strong></td>
		<td><strong>descripcion</strong></td>
		<td><strong>contenido</strong></td>
		<td><strong>imagen</strong></td>
		<td><strong>precio</strong></td>
		<td><strong>calificacion</strong></td>
		<td><strong>categoria</strong></td>
		';

		while($fila = $stmt->fetch(PDO::FETCH_BOUND)){
			$pro = array();
			$pro['id'] = utf8_encode($id);
			$pro['titulo'] = utf8_encode($titulo);
			$pro['descripcion'] = utf8_encode($descripcion);
			$pro['contenido'] = utf8_encode($contenido);
			$pro['imagen'] = utf8_encode($imagen);
			$pro['precio'] = utf8_encode($precio);
			$pro['calificacion'] = utf8_encode($calificacion);
			$pro['categoria'] = utf8_encode($categoria);

			array_push($productos, $pro); 

			echo'
        <tr>
        <td>'.$pro['id'].'</td>
        <td>'.$pro['titulo'].'</td>
        <td>'.$pro['descripcion'].'</td>
        <td>'.$pro['contenido'].'</td>
        <td>'.$pro['imagen'].'</td>
        <td>'.$pro['precio'].'</td>
        <td>'.$pro['calificacion'].'</td>
        <td>'.$pro['categoria'].'</td>
        ';
		}

		echo '</table>';

		return $productos;
	}

	public function deleteProductoModel($id, $tabla) {
		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id"); 
		$stmt->bindParam(":id", $id, PDO::PARAM_INT);

		if ($stmt->execute()) {
			echo "producto eliminado"; 
		}else{
			"el producto no pudo ser eliminado";
		}
	}
}

$obj = new Datos(); 
$obj->deleteProductoModel(20,"productos");   
  
?>