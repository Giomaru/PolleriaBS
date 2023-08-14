<%@page import="model.Producto"%>
<%@page import="mantenimiento.GestionProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mantenimiento Productos</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/mis_estilos.css">
<style type="text/css"></style>

<style>
.center-container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	text-align: rigth;
}
</style>
</head>

<body>
	<header class="header">
		<div class="logo-container">
			<a href="Index.jsp"> <img class="logo" src="imagenes/BRASA.jpeg"
				alt=" ">
			</a>
		</div>

		<div class="search-container">
			<input type="text" class="search" placeholder="Buscar Producto">
		</div>
		<div class="locations-container">
			<a href="locales.jsp"> LOCALES <img class="location-icon"
				src="imagenes/ubica.png" alt="">
			</a>
		</div>
		<div class="login-container">
			<a href="login.jsp"> INGRESA O REGÍSTRATE <img class="login-icon"
				src="imagenes/user.png" alt="Ingresar o Registrarse">
			</a>
		</div>
		<div class="cart-container">
			<a href="CanastaCompras.jsp"> <img class="cart-icon" id="r5"
				src="imagenes/CAR2.png" alt="Carrito de Compras">
			</a>
		</div>
	</header>


	<div class="center-container">
		<div class="formulariologin">

			<main class="container1">

				<section class="container1" style="width: 65%; float: left;">

					<h1>Mantenimiento de Carta</h1>
					<br>

					<!-- Formulario -->
					<form action="crudProductos" method="post">
						<div class="form-group">
							<label for="inputCodigo">Código del Producto:</label> <input
								name="txtCodigo" value="${p.idprod }" class="form-control"
								id="inputCodigo" placeholder="Ingrese Código">
						</div>

						<div class="form-group">
							<label for="inputNombreProd">Nombre del Producto:</label> <input
								name="txtNombre" value="${p.nombreprod }" class="form-control"
								id="inputNombreProd"
								placeholder="Ingrese el nombre del producto">
						</div>

						<div class="form-group">
							<label for="inputDescripcion">Descripción:</label> <input
								name="txtDescripcion" value="${p.descripcion }"
								class="form-control" id="inputDescripcion"
								placeholder="Ingrese la descripción del producto">
						</div>

						<div class="form-group col-md-6">
							<label for="inputEstado">Categoría:</label> <select
								name="cboCategoria" class="form-control"
								id="exampleFormControlSelect1">
								<option value='-1'>Seleccione</option>
								<option value='1'>Brasas</option>
								<option value='2'>Parrillas</option>
								<option value='3'>Fusión Criolla</option>
								<option value='4'>Broaster</option>
								<option value='5'>Hamburguesas</option>
								<option value='6'>Ensaladas</option>
								<option value='7'>Desayunos</option>
							</select>
						</div>


						<div class="form-group col-md-6">
							<label for="inputPrecio">Precio:</label> <input type="number"
								name="txtPrecio" value="${p.precio }" class="form-control"
								id="inputPrecio" placeholder="0.00" min="0" step="0.01">
						</div>

						<div class="form-group col-md-6">
							<label for="inputEstado">Estado:</label> <select name="cboEstado"
								class="form-control" id="exampleFormControlSelect1">
								<option value='-1'>Seleccione</option>
								<option value='1'>Activo</option>
								<option value='2'>Eliminado</option>
							</select>
						</div>

						<br>

						<button type="submit" name="btnAccion" value="registrar"
							class="btn btn-primary">Registrar</button>
						<button type="submit" name="btnAccion" value="actualizar"
							class="btn btn-primary">Actualizar</button>
						<button type="submit" name="btnAccion" value="eliminar"
							class="btn btn-danger">Eliminar</button>
						<button type="submit" name="btnAccion" value="listado"
							class="btn btn-warning">Listado</button>


					</form>
					<br> ${mensaje }
				</section>

				<tr>
					<table class="table">

						<tr>
							<th>Código del Producto</th>
							<th>Nombre del Producto</th>
							<th>Descripción</th>
							<th>Categoria</th>
							<th>Precio</th>
						</tr>

						<%
						GestionProducto gp = new GestionProducto();
						ArrayList<Producto> listado = gp.listado();

						if (listado != null) {
							for (Producto p : listado) {
						%>
						<tr>
							<td><%=p.getIdprod()%></td>
							<td><%=p.getNombreprod()%></td>
							<td><%=p.getDescripcion()%></td>
							<td><%=p.getCategoriaid()%></td>
							<td><%=p.getPrecio()%></td>
						</tr>
						<%
						}
						}
						%>

					</table>
			</main>
		</div>

	</div>

	<div class="regreso3">
		<a href="Menuadministrador.jsp">
			<button class="view-more-button">REGRESAR</button>
		</a>
	</div>

	<footer class="footer">
		<div class="disclaimer-bar">
			<p class="disclaimer-text">DISFRUTA DEL MEJOR POLLO A LA BRASA
				CUANDO GUSTES</p>
		</div>
		<div class="footer-container">
			<div class="logofooter">
				<a href="Index.jsp"> <img class="logofooter"
					src="imagenes/BRASA.png" alt=" ">
				</a>
			</div>
			<div class="contact-bar">
				<p class="contact-text">CONTÁCTANOS</p>
				<p class="contact-info">Atención Delivery: Lima 12:00 pm. a
					10:00 pm.</p>
				<p class="contact-info">Central Lima: (01) 500 2551</p>
				<p class="contact-info">Email:
					atencionalcliente@brasasysabor.com.pe</p>
			</div>
		</div>

		<p>
			SÍGUENOS EN<br />
		</p>
		<div class="redes">
			<a href="https://www.facebook.com/" target="_blank"><img id="r1"
				src="imagenes/fb.png" alt="" /></a> <a
				href="https://www.instagram.com/" target="_blank"><img id="r2"
				src="imagenes/ig.png" alt="" /></a> <a href="https://www.twitter.com/"
				target="_blank"><img id="r3" src="imagenes/tw.png" alt="" /></a> <a
				href="https://www.youtube.com/" target="_blank"><img id="r4"
				src="imagenes/yt.png" alt="" /></a>
		</div>
		<p>
			© 2023 BrasasySabor.com.pe - Todos los derechos reservados</br>
		</p>
	</footer>
</body>
</html>
<script src="js/carrusel.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

