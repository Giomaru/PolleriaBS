<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Mantenimiento Productos</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/mis_estilos.css">
	<style type="text/css"></style>
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
	
	<div class="mante" id="mante">
	<div class="partemante">
		
		<div class="container mt-6">
            <div class="form-group">
                <form action="Controlador?accion=Guardar" class="col-md-12" method="POST" enctype="multipart/form-data">
                    <div class="card">
                        <div class="card-header">
                            <h1>MANTENIMIENTO DE CARTA</h1>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>ID: </label>
                                <input type="text" name="txtID" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nombre de Comida:</label>
                                <input type="text" name="txtNombre" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Descripción:</label>
                                <input type="text" name="txtDescripcion" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Categoria:</label>
                                <input type="text" name="txtCategoria" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Precio Soles:</label>
                                <input type="text" name="txtPrecio" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Estado:</label>
                                <input type="text" name="txtEstado" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Imagen referncial:</label>
                                <input type="file" name="fileImagen">
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-outline-primary" name="accion" value="Guardar">Cargar Imagen</button>
                        </div>                
                    </div>
                </form>
            </div>
            <div class="form-group">
                <table class="table table-hover">
                    <thead>
                        <tr class="text-center">
                            <th>ID</th>
                            <th>NOMBRE</th>
                            <th>DESCRIPCIÓN</th>
                            <th>CATEGORIA</th>
                            <th>PRECIO</th>
                            <th>ESTADO</th>
                            <th>IMAGEN</th>
                            <th>ACCION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="prod" items="${productos}">
                            <tr class="text-center">
                                <td>${prod.idprod}</td>
                                <td>${prod.nombreprod}</td>
                                <td>${prod.descripcion}</td>
                                <td>${prod.categoriaid}</td>
                                <td>${prod.precio}</td>
                                <td>${prod.estado}</td>
                                <td><img src="${prod.imagen}" height="90px" width="50%"></td>
                                <td>
                                    <a href="#" class="btn btn-warning">Editar</a>
                                    <a href="#" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>                    
                    </tbody>
                </table>                         
            </div>
        </div>
		
	</div></div>
	
	<div class="regreso3">
   	 	<a href="Menuadministrador.jsp">
        <button class="view-more-button">REGRESAR</button>
    	</a>
		</div>
	
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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 

