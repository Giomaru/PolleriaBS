<%-- importamos nuestra libreria de etiquetas --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pollería Brasas y Sazón</title>
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
				
				<p>
					Ud se ha identificado como : <strong> ${u.getNombre() }
						${u.apellidoPat } ${u.apellidoMat } ${u.tipo }</strong>
				</p>

				<button class="nav-item active">
					<a class="nav-link" href="crudUsu?btnAccion=logout">
						<button class="btn btn-danger">Cerrar Sesión</button> <span
						class="sr-only"></span>
					</a>
				</button>
			</a>
		</div>
		<div class="cart-container">
			<a href="CanastaCompras.jsp"> <img class="cart-icon" id="r5"
				src="imagenes/CAR2.png" alt="Carrito de Compras">
			</a>
		</div>
	</header>
	<div>
		<nav class="navbar">
				
					<ul>
						<li><a href="Carta.jsp">CARTA</a></li>
						<li><a href="Carta.jsp">PROMOCIONES</a></li>
						<li><a href="nosotros.jsp">SOBRE NOSOTROS</a></li>
					</ul>
		
		</nav>
	</div>

	<section class="panel">
		<img class="panel-image" id="imgcab" src="imagenes/IMG8.jpg"
			alt="Panel de Imagen">
	</section>
	<section class="products-section">
		<!-- Aquí irá la sección de productos -->
		<h1 class="indexh1s">NUESTROS POLLOS</h1>
		<div class="cuadros2">

			<div class="cuadro3">

				<img class="pollo1" id="pollo14" src="imagenes/1-4 POLLO.jpg"
					alt="producto">
				<h2 class="texto4">1/4 De Pollo a la Brasa</h2>
				<p>Nuestro tradicional 1/4 de pollo acompañado de abundantes
					papas fritas y ensalada personal</p>
				<br>
				<h2 class="texto4">S/.24.90</h2>
				<div class="buttons">
					<a href="DetalleProducto.jsp">
						<button class="buy-button">COMPRAR</button>
					</a>
				</div>
				<br>
			</div>

			<div class="cuadro3">

				<img class="pollo1" id="pollo14"
					src="imagenes/1-4 POLLO A LO POBRE.jpg" alt="producto">
				<h2 class="texto4">1/4 De Pollo a lo Pobre</h2>
				<p>1/4 Pollo a la brasa + huevo frito + porción de plátano frito
					+ abundantes papas fritas + ensalada de lechuga, tomate y pepino.</p>
				<br>
				<h2 class="texto4">S/.28.90</h2>
				<div class="buttons">
					<a href="DetalleProducto.jsp">
						<button class="buy-buttons">COMPRAR</button>
					</a>
				</div>
				<br>
			</div>

			<div class="cuadro3">

				<img class="pollo1" id="pollo14"
					src="imagenes/1-4 POLLO ANTICUCHERO.jpg" alt="producto">
				<h2 class="texto4">1/4 De Pollo Anticuchero</h2>
				<p>1/4 Pollo a la brasa + anticucho + abundantes papas fritas +
					ensalada de lechuga, tomate y pepino.</p>
				<br>
				<h2 class="texto4">S/.30.90</h2>
				<div class="buttons">
					<a href="DetalleProducto.jsp">
						<button class="buy-button">COMPRAR</button>
					</a>
				</div>
				<br>
			</div>

		</div>
	</section>

	<div class="buttons">
		<a href="Carta.jsp">
			<button class="view-more-button">VER MÁS</button>
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