<%@page import="model.Producto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Detalle Producto</title>
<link rel="stylesheet" type="text/css" href="css/mis_estilos.css">
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

	<section class="products-section">

		<%
		Producto prod = (Producto) request.getAttribute("pro");
		%>

		<!-- Aquí irá la sección de productos -->
		<div class="cuadros3carta">
			<br>
			<!-- Ejemplo de un producto -->
			<div class="cuadrocarta3">

				<img class="imagenproducto3" id="pollo15"
					src="imagenes/1-4 POLLO.jpg" alt="producto">
				<div class="cuadrito3">
					<h2 class="nombre3"><%=prod.getNombreprod()%></h2>
					<p class="descripcion3"><%=prod.getDescripcion()%></p>
					<br>
					<h3 class="precio3" id="precio1">
						S/ <span id="precio"><%=prod.getPrecio()%></span>
					</h3>
					<br>

					<form action="pedido" method="post">
						<div>
							<p>Cantidad:</p>
							<button class="buttons3" id="decrement" type="button">-</button>
							<input class="cant3" type="text" id="quantity" value="1" name="cantidad">
							<button class="buttons3" id="increment" type="button">+</button>
						</div>
						<p>
							SubTotal: S/. <span id="subtotal"><%=prod.getPrecio()%></span>
						</p>
						<br>
						<div>
							<label>Nombre completo de la persona que recibe el pedido</label>
							<input class="input-text" type="text" id="cliente" name="nombreCliente">
						</div>
						<br>
						<div>
							<label>Dirección de la persona que recibe el pedido</label> <input
								class="input-text" type="text" id="direccionCliente" name="direccionCliente">
						</div>
						
						<input type="hidden" name="idProducto" value="<%=prod.getIdprod()%>">
						<input type="hidden" name="precioProducto" value="<%=prod.getPrecio()%>">
						
						<div class="buttons3">
							<button class="buy-button" type="submit" name="accion" value="regPedido">SOLICITAR
								PEDIDO</button>
						</div>
						<br>
					</form>
				</div>
			</div>

			<!-- Se modifica de acuerdo al producto selecionado -->
		</div>

	</section>

	<div class="regreso2" style="margin-top: 6rem;">
		<a href="Index.jsp">
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
<script src="js/carrusel.js"></script>
</html>


