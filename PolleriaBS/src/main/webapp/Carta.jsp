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
        	<a href="Index.jsp">
            <img  class="logo" src="imagenes/BRASA.jpeg"  alt=" ">
            </a>
        </div>
        <div class="search-container">
            <input type="text" class="search" placeholder="Buscar Producto">
        </div>
        <div class="locations-container">
            <a href="locales.jsp">
            LOCALES  
                <img class="location-icon" src="imagenes/ubica.png" alt="">
            </a>
        </div>
        <div class="login-container">
            <a href="login.jsp">
            INGRESA O REGÍSTRATE  
                <img class="login-icon" src="imagenes/user.png" alt="Ingresar o Registrarse">
            </a>
            </div>
        <div class="cart-container">
            <a href="CanastaCompras.jsp">
                <img class="cart-icon" id="r5" src="imagenes/CAR2.png" alt="Carrito de Compras">
            </a>
        </div>
    </header>
    <nav class="navbarra">
        <ul>
            <li><a href="">
            <img class="categoriacat" id="promociones" src="imagenes/VAR1.png" alt="barra de categorias">
            </a></li>
            <li><a href="">
            <img class="categoriacat" id="brasa" src="imagenes/VAR2.png" alt="barra de categorias">
            </a></li>
            <li><a href="">
            <img class="categoriacat" id="parrillas" src="imagenes/VAR3.png" alt="barra de categorias">
            </a></li>
            <li><a href="">
            <img class="categoriacat" id="fcriolla" src="imagenes/VAR4.png" alt="barra de categorias">
            </a></li>
            <li><a href="">
            <img class="categoriacat" id="broaster" src="imagenes/VAR5.png" alt="barra de categorias">
            </a></li>
            <li><a href="">
            <img class="categoriacat" id="hamburguesas" src="imagenes/VAR6.png" alt="barra de categorias">
            </a></li>
            <li><a href="">
            <img class="categoriacat" id="ensaladas" src="imagenes/VAR7.png" alt="barra de categorias">
            </a></li>
            <li><a href="">
            <img class="categoriacat" id="desayunos" src="imagenes/VAR8.png" alt="barra de categorias">
            </a></li>
        </ul>
    </nav>
    
    
    <section class="products-section">
    <!-- Aquí irá la sección de productos -->
	<div class="cuadros2carta">
	<br>
    <!-- Ejemplo de un producto -->
    <div class="cuadrocarta">
        <img class="imagenproducto" id="pollo15" src="imagenes/1-4 POLLO.jpg" alt="producto">
        <h2 class="nombre">1/4 De Pollo a la Brasa</h2>
        <p class="descripcion">Nuestro tradicional 1/4 de pollo acompañado de abundantes papas fritas y ensalada personal</p>
        <br>
        <h3 class="precio">S/.24.90</h3>
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
            <p class="disclaimer-text">DISFRUTA DEL MEJOR POLLO A LA BRASA CUANDO GUSTES</p>
        </div>
        <div class="footer-container">
    		<div class="logofooter">
    		<a href="Index.jsp">
        	<img class="logofooter" src="imagenes/BRASA.png" alt=" ">
        	</a>
    	</div>
    	<div class="contact-bar">
        	<p class="contact-text">CONTÁCTANOS</p>
        	<p class="contact-info">Atención Delivery: Lima 12:00 pm. a 10:00 pm.</p>
        	<p class="contact-info">Central Lima: (01) 500 2551</p>
        	<p class="contact-info">Email: atencionalcliente@brasasysabor.com.pe</p>
    	</div>
		</div>

        <p>SÍGUENOS EN<br/></p>
           <div class="redes">
                <a href="https://www.facebook.com/" target="_blank"><img id="r1" src="imagenes/fb.png" alt="" /></a>
                <a href="https://www.instagram.com/" target="_blank"><img id="r2" src="imagenes/ig.png" alt="" /></a>
                <a href="https://www.twitter.com/" target="_blank"><img id="r3" src="imagenes/tw.png" alt="" /></a>
                <a href="https://www.youtube.com/" target="_blank"><img id="r4" src="imagenes/yt.png" alt="" /></a>
            </div>
           <p> 
           © 2023 BrasasySabor.com.pe - Todos los derechos reservados</br>
        </p>
    </footer>
</body>
</html>
<script src="js/carrusel.js"></script>
    