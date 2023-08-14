<%@page import="model.Pedido"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pedido</title>
<link rel="stylesheet" type="text/css" href="css/mis_estilos.css">
</head>
<body>
	<header class="header">
		<div class="logo-container">
			<a href="Index.jsp"> <img class="logo" src="imagenes/BRASA.jpeg"
				alt=" ">
			</a>
		</div>

		
		<div class="locations-container">
			<a href="locales.jsp"> LOCALES <img class="location-icon"
				src="imagenes/ubica.png" alt="">

			</a>
		</div>
		<div class="login-container">
    	<% if (session.getAttribute("u") != null) { %>
        	<div id="ingresado1">
	            <p> <strong> ${u.getNombre() } ${u.apellidoPat } ${u.apellidoMat }</strong></p>
	            <button class="nav-item active">
	                <a class="nav-link" href="crudUsu?btnAccion=logout"> Cerrar Sesión</a>
	            </button>
	            <span class="sr-only"></span>
        	</div>
    	<% } else { %>
	        <a href="login.jsp" id="ingreso1"> INGRESA O REGÍSTRATE 
	            <img class="login-icon" src="imagenes/user.png" alt="Ingresar o Registrarse">
	        </a>
    	<% } %>
		</div>

	</header>

	<div class="pedido-container">
		<div class="pedido-header">
			<h1 class="pedido-title">LISTA DE PEDIDOS</h1>
		</div>

		<table class="table">

			<tr>
				<th style="width: 5%; text-align: center;">Código</th>
				<th style="width: 15%; text-align: left;">Cliente</th>
				<th style="width: 15%; text-align: left;">Direccion Cliente</th>
				<th style="width: 15%; text-align: left;">Nombre Producto</th>
				<th style="width: 5%; text-align: center;">Cantidad</th>
				<th style="width: 5%; text-align: right;">Precio</th>
				<th style="width: 10%; text-align: right;">Subtotal</th>
				<th style="width: 10%; text-align: center;">Estado</th>
				<th style="width: 5%; text-align: center;">Accion</th>
			</tr>

			<%
			ArrayList<Pedido> listado = (ArrayList<Pedido>) request.getAttribute("listado");

			if (listado != null) {
				for (Pedido p : listado) {
			%>
			<tr>
				<td style="text-align: center;"><%=p.getIdPed()%></td>
				<td><%=p.getNombreCliente()%></td>
				<td><%=p.getDireccionCliente()%></td>
				<td><%=p.getNombreProducto()%></td>
				<td style="text-align: center;"><%=p.getCantidad()%></td>
				<td style="text-align: right;"><%=p.getPrecio()%></td>
				<td style="text-align: right;"><%=p.getSubtotal()%></td>
				<td style="text-align: center;"><%=p.getEstadoPedido()%></td>
				<td>
				<% if(!(p.getEstadoPedido().equals("ENTREGADO"))){ %>
					<div class="buttons">
						<a href="pedido?accion=cambiar&id=<%=p.getIdPed()%>">
							<button class="buy-button">CAMBIAR A ENTREGADO</button>
						</a>
					</div>
					<%} %>
				</td>
			</tr>
			<%
			}
			}
			%>

		</table>

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