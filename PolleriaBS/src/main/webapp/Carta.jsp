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
	<nav class="navbarra">
        <ul>
            <li><a href="#" onclick="mostrarSeccion('promociones')">
            <img class="categoriacat" id="promociones1" src="imagenes/VAR1.png" alt="barra de categorias">
            </a></li>
            <li><a href="#" onclick="mostrarSeccion('brasa')">
            <img class="categoriacat" id="brasa1" src="imagenes/VAR2.png" alt="barra de categorias">
            </a></li>
            <li><a href="#" onclick="mostrarSeccion('parrillas')">
            <img class="categoriacat" id="parrillas1" src="imagenes/VAR3.png" alt="barra de categorias">
            </a></li>
            <li><a href="#" onclick="mostrarSeccion('fcriolla')">
            <img class="categoriacat" id="fcriolla1" src="imagenes/VAR4.png" alt="barra de categorias">
            </a></li>
            <li><a href="#" onclick="mostrarSeccion('broaster')">
            <img class="categoriacat" id="broaster1" src="imagenes/VAR5.png" alt="barra de categorias">
            </a></li>
            <li><a href="#" onclick="mostrarSeccion('hamburguesas')">
            <img class="categoriacat" id="hamburguesas1" src="imagenes/VAR6.png" alt="barra de categorias">
            </a></li>
            <li><a href="#" onclick="mostrarSeccion('ensaladas')">
            <img class="categoriacat" id="ensaladas1" src="imagenes/VAR7.png" alt="barra de categorias">
            </a></li>
            <li><a href="#" onclick="mostrarSeccion('desayunos')">
            <img class="categoriacat" id="desayunos1" src="imagenes/VAR8.png" alt="barra de categorias">
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
	
	<section class="section-brasa" id="brasa">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo01" src="productos/PRO1.jpg" alt="brasa">
        <h2 class="nombre">1/4 De Pollo a la Brasa</h2>
        <p class="descripcion">Nuestro tradicional 1/4 de pollo acompañado de abundantes papas fritas y ensalada personal</p>
        
        <h3 class="precio"id="precio1">S/.<span id="precio01">24.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo02" src="productos/PRO2.jpg" alt="brasa">
        <h2 class="nombre">1/4 A lo Pobre</h2>
        <p class="descripcion">1/4 Pollo a la brasa + huevo frito + porción de plátano frito + papas fritas + ensalada de lechuga, tomate y pepino.</p>
        
        <h3 class="precio"id="precio1">S/.<span id="precio02">28.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo03" src="productos/PRO3.jpg" alt="brasa">
        <h2 class="nombre">1/4 Salchibrasa</h2>
        <p class="descripcion">¡Especialidad de la casa! 🚨🚨🚨 1/4 De pollo a la brasa + trozos de hot dog + abundantes papas fritas + ensalada personal</p>
       
        <h3 class="precio"id="precio1">S/.<span id="precio03">28.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo04" src="productos/PRO4.jpg" alt="brasa">
        <h2 class="nombre">1/4 Anticuchero</h2>
        <p class="descripcion">1/4 Pollo a la brasa + anticucho + abundantes papas fritas + ensalada de lechuga, tomate y pepino.</p>
        
        <h3 class="precio"id="precio1">S/.<span id="precio04">30.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo05" src="productos/PRO5.jpg" alt="brasa">
        <h2 class="nombre">1/4 Choricero</h2>
        <p class="descripcion">1/4 Pollo a la brasa + chorizo + abundantes papas fritas + ensalada de lechuga, tomate y pepino.</p>
        
        <h3 class="precio"id="precio1">S/.<span id="precio05">30.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo06" src="productos/PRO6.jpg" alt="brasa">
        <h2 class="nombre">1/4 Carretillero</h2>
        <p class="descripcion">1/4 Pollo a la brasa + mollejitas + abundantes papas fritas + ensalada de lechuga, tomate y pepino.</p>
        
        <h3 class="precio"id="precio1">S/.<span id="precio06">32.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo07" src="productos/PRO7.jpg" alt="brasa">
        <h2 class="nombre">1/4 Tequeñero</h2>
        <p class="descripcion">1/4 Pollo a la brasa + 04 tequeños + abundantes papas fritas + ensalada de lechuga, tomate y pepino.</p>
       
        <h3 class="precio"id="precio1">S/.<span id="precio07">29.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo08" src="productos/PRO8.jpg" alt="brasa">
        <h2 class="nombre">1/4 Chaufileña</h2>
        <p class="descripcion">1/4 Pollo a la brasa + papas fritas + chaufa de hot dog personal.</p>
       
        <h3 class="precio"id="precio1">S/.<span id="precio08">27.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	</section>
	
	<section class="section-parrillas" id="parrillas">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo13" src="productos/PRO13.jpg" alt="parrillas">
        <h2 class="nombre">Mollejas</h2>
        <p class="descripcion">acompañado de crocantes papas fritas y ensalada personal</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio13">21.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo14" src="productos/PRO14.jpg" alt="parrillas">
        <h2 class="nombre">Anticuchos</h2>
        <p class="descripcion">Anticuchos acompañados de papas fritas y ensalada personal</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio14">28.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo15" src="productos/PRO15.jpg" alt="parrillas">
        <h2 class="nombre">Pechuga A La Parrilla</h2>
        <p class="descripcion">Acompañada de crocantes papas fritas y ensalada personal</p>
 
        <h3 class="precio"id="precio1">S/.<span id="precio15">29.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo16" src="productos/PRO16.jpg" alt="parrillas">
        <h2 class="nombre">Chuleta A La Parrilla</h2>
        <p class="descripcion">Chuleta de cerdo acompañada de crocantes papas fritas y ensalada personal</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio16">29.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo17" src="productos/PRO17.jpg" alt="parrillas">
        <h2 class="nombre">Bife</h2>
        <p class="descripcion">acompañada de papas fritas y ensalada personal</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio17">41.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo18" src="productos/PRO18.jpg" alt="parrillas">
        <h2 class="nombre">Parrilla Para 2</h2>
        <p class="descripcion">1/4 de pollo a la brasa, chorizo parrillero, hot dog, 2 palitos de anticucho, chuleta, crocantes papas fritas y ensalada mediana</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio18">68.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo19" src="productos/PRO19.jpg" alt="parrillas">
        <h2 class="nombre">Parrilla Familiar</h2>
        <p class="descripcion">1/4 de pollo, bife, chorizo parrillero, chuleta o pechuga, hot dog, 2 palitos de anticuchos acompañado de papas fritas y ensalada</p>
 
        <h3 class="precio"id="precio1">S/.<span id="precio19">93.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo20" src="productos/PRO20.jpg" alt="parrillas">
        <h2 class="nombre">Parrilla Brasas y Sazón</h2>
        <p class="descripcion">1/2 pollo a la brasa, 2 palitos de anticucho, chuleta, mollejitas, filete de pierna, lomo fino, churrasco, 2 chorizos, 2 hot dog, papas fritas, ensalada familiar y 1.5L. de limonada</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio20">119.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	</section>
	
	<section class="section-fcriolla" id="fcriolla">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo21" src="productos/PRO21.jpg" alt="fcriolla">
        <h2 class="nombre">POLLO SALTADO A LO POBRE</h2>
        <p class="descripcion">POLLO SALTADO, 1 HUEVO FRITO, 1 PLATANO FRITO</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio21">32.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo22" src="productos/PRO22.jpg" alt="fcriolla">
        <h2 class="nombre">LOMO SALTADO</h2>
        <p class="descripcion">LOMO SALTADO + PAPAS FRITAS + ARROZ </p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio22">33.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo23" src="productos/PRO23.jpg" alt="fcriolla">
        <h2 class="nombre">POLLO SALTADO</h2>
        <p class="descripcion">POLLO SALTADO - PAPA AMARILLA</p>
 
        <h3 class="precio"id="precio1">S/.<span id="precio23">29.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo24" src="productos/PRO24.jpg" alt="fcriolla">
        <h2 class="nombre">TALLARIN DE CARNE</h2>
        <p class="descripcion">TALLARIN DE CARNE</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio16">33.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo25" src="productos/PRO25.jpg" alt="fcriolla">
        <h2 class="nombre">CHAUFA DE CARNE</h2>
        <p class="descripcion">CHAUFA DE CARNE</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio25">33.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo26" src="productos/PRO26.jpg" alt="fcriolla">
        <h2 class="nombre">CHAUFA DE POLLO</h2>
        <p class="descripcion">CHAUFA DE POLLO</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio26">29.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	</section>
    
    <section class="section-broaster" id="broaster">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo27" src="productos/PRO27.jpg" alt="broaster">
        <h2 class="nombre">CHICHARRON DE POLLO</h2>
        <p class="descripcion">16 TROZOS DE CHICHARRON DE POLLO</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio27">20.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo28" src="productos/PRO28.jpg" alt="broaster">
        <h2 class="nombre">FILETE BROASTER XL</h2>
        <p class="descripcion">FILETE BROASTER CON CHAUFA</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio28">23.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo29" src="productos/PRO29.jpg" alt="broaster">
        <h2 class="nombre">6 WINGS + PAPAS FRITAS</h2>
        <p class="descripcion">6 ALITAS PICANTES + PAPAS FRITAS 150 G</p>
 
        <h3 class="precio"id="precio1">S/.<span id="precio29">17.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo30" src="productos/PRO30.jpg" alt="broaster">
        <h2 class="nombre">12 WINGS + PAPAS FRITAS</h2>
        <p class="descripcion">12 ALITAS PICANTES + PAPAS FRITAS</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio30">29.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	</section>
	
	<section class="section-hamburguesas" id="hamburguesas">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo31" src="productos/PRO31.jpg" alt="hamburguesas">
        <h2 class="nombre">SUPREMA + PAPAS</h2>
        <p class="descripcion">HAMBURGUESA + PAPAS ONDULADAS + TOCINO + LECHUGA ORGÁNICA + TOMATE + SALSA HONEY MUSTARD</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio31">18.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo32" src="productos/PRO32.jpg" alt="hamburguesas">
        <h2 class="nombre">PARRILLERA + PAPAS</h2>
        <p class="descripcion">HAMBURGUESA + PAPAS ONDULADAS + CHORIZO PARRILLERO + LECHUGA ORGÁNICA + TOMATE + CREMA CHIMICHURRI</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio32">20.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo33" src="productos/PRO33.jpg" alt="hamburguesas">
        <h2 class="nombre">2 CLÁSICAS + 2 PAPAS</h2>
        <p class="descripcion">2 ROKYS BURGER+ 2 PORCIÓN PAPA ONDULADA (100 G)</p>
 
        <h3 class="precio"id="precio1">S/.<span id="precio33">29.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo34" src="productos/PRO34.jpg" alt="hamburguesas">
        <h2 class="nombre">CLÁSICA + PAPAS + GASEOSA</h2>
        <p class="descripcion">HAMBURGUESA + PAPAS ONDULADAS + QUESO CHEDDAR + GASEOSA PERSONAL</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio34">19.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	</section>
	
	<section class="section-ensaladas" id="ensaladas">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo35" src="productos/PRO35.jpg" alt="ensaladas">
        <h2 class="nombre">ENSALADA DELICIA DE PALTA</h2>
        <p class="descripcion">ENSALADA DELICIA DE PALTA</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio35">18.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo36" src="productos/PRO36.jpg" alt="ensaladas">
        <h2 class="nombre">ENSALADA COCIDA</h2>
        <p class="descripcion">ENSALADA COCIDA</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio36">16.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo37" src="productos/PRO37.jpg" alt="ensaladas">
        <h2 class="nombre">ENSALADA DEL CHEF</h2>
        <p class="descripcion">MIXTURA DE LECHUGAS + TOMATE + JAMÓN + QUESO + FILETE DE PECHUGA EN TROZOS.</p>
 
        <h3 class="precio"id="precio1">S/.<span id="precio37">22.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo38" src="productos/PRO38.jpg" alt="ensaladas">
        <h2 class="nombre">ENSALADA CLASICA</h2>
        <p class="descripcion">ENSALADA CLASICA</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio38">12.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	</section>
	
	<section class="section-desayunos" id="desayunos">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo39" src="productos/PRO39.jpg" alt="desayunos">
        <h2 class="nombre">DESAYUNO AMERICANO</h2>
        <p class="descripcion">2 HUEVOS FRITOS + MANTEQUILLA + MERMELADA + TOSTADA + CAFÉ GRATIS.</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio39">11.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo40" src="productos/PRO40.jpg" alt="desayunos">
        <h2 class="nombre">DESAYUNO HUACHANO</h2>
        <p class="descripcion">CHICHARRÓN + CAMOTE RELLENO + SALCHICHA HUACHANA + PAN + CAFÉ GRATIS</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio40">14.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo41" src="productos/PRO41.jpg" alt="desayunos">
        <h2 class="nombre">SANDWICH CRISPY</h2>
        <p class="descripcion">SANDWICH PECHUGA POLLO CRISPY + LECHUGA + TOMATE + CAFÉ GRATIS</p>
 
        <h3 class="precio"id="precio1">S/.<span id="precio41">12.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo42" src="productos/PRO42.jpg" alt="desayunos">
        <h2 class="nombre">DESAYUNO ESPECIAL</h2>
        <p class="descripcion">SANDWICH DE POLLO DESMENUZADO + JAMÓN + TOCINO + QUESO + HUEVO + PAPAS FRITAS + CAFÉ GRATIS.</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio42">18.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    <!-- Repite el bloque anterior para cada producto -->
	</div>
	
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo43" src="productos/PRO43.jpg" alt="desayunos">
        <h2 class="nombre">SANDWICH ASADO DE RES</h2>
        <p class="descripcion">SANDWICH ASADO DE RES</p>
      
        <h3 class="precio"id="precio1">S/.<span id="precio43">14.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	<div class="cuadrocarta">
        <img class="imagenproducto" id="pollo44" src="productos/PRO44.jpg" alt="desayunos">
        <h2 class="nombre">SANDWICH POLLO A LA BRASA</h2>
        <p class="descripcion">SANDWICH POLLO A LA BRASA</p>
     
        <h3 class="precio"id="precio1">S/.<span id="precio44">11.90</span></h3>
        <div class="buttons">
        	<a href="DetalleProducto.jsp">
        	<button class="buy-button">COMPRAR</button>
        	</a>
    	</div>
        <br>
    	</div>
    	
    <!-- Repite el bloque anterior para cada producto -->
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

