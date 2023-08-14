<%@page import="model.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carta</title>
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
	<nav class="navbarra">
		<ul>
			<li><a href="#" onclick="mostrarSeccion('promociones')"> <img
					class="categoriacat" id="promociones1" src="imagenes/VAR1.png"
					alt="barra de categorias">
			</a></li>
			<li><a href="#" onclick="mostrarSeccion('brasa')"> <img
					class="categoriacat" id="brasa1" src="imagenes/VAR2.png"
					alt="barra de categorias">
			</a></li>
			<li><a href="#" onclick="mostrarSeccion('parrillas')"> <img
					class="categoriacat" id="parrillas1" src="imagenes/VAR3.png"
					alt="barra de categorias">
			</a></li>
			<li><a href="#" onclick="mostrarSeccion('fcriolla')"> <img
					class="categoriacat" id="fcriolla1" src="imagenes/VAR4.png"
					alt="barra de categorias">
			</a></li>
			<li><a href="#" onclick="mostrarSeccion('broaster')"> <img
					class="categoriacat" id="broaster1" src="imagenes/VAR5.png"
					alt="barra de categorias">
			</a></li>
			<li><a href="#" onclick="mostrarSeccion('hamburguesas')"> <img
					class="categoriacat" id="hamburguesas1" src="imagenes/VAR6.png"
					alt="barra de categorias">
			</a></li>
			<li><a href="#" onclick="mostrarSeccion('ensaladas')"> <img
					class="categoriacat" id="ensaladas1" src="imagenes/VAR7.png"
					alt="barra de categorias">
			</a></li>
			<li><a href="#" onclick="mostrarSeccion('desayunos')"> <img
					class="categoriacat" id="desayunos1" src="imagenes/VAR8.png"
					alt="barra de categorias">
			</a></li>
		</ul>
	</nav>

	<section class="section-promociones" id="promociones">
		<!-- Aquí irá la sección de productos -->
		<div class="card-container">
			<br>
			<%
			
			ArrayList<Producto> listado = (ArrayList<Producto>) request.getAttribute("listado");

			if (listado != null) {
				for (Producto p : listado) {
			%>
			<div class="card">
				<img class="imagenproducto" id="pollo15" src="productos/PRO9.jpg"
					alt="promociones">
				<h2 class="nombre"><%=p.getNombreprod()%></h2>
				<p class="descripcion"><%=p.getDescripcion()%></p>
				<br>
				<h3 class="precio">S/ <%=p.getPrecio()%></h3>
				<div class="buttons">
					<a href="crudProductos?btnAccion=buscarPorId&id=<%=p.getIdprod()%>">
						<button class="buy-button">COMPRAR</button>
					</a>
				</div>
				<br>
			</div>

			<%
			}
			}
			%>

		</div>

	</section>
	
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
