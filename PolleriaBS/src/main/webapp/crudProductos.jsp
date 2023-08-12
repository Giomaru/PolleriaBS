<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Mantenimiento Productos</title>
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
	
	<div id="login">
		<div class="formulariologin">
			
		<main>
			<nav>
				<ul>
					<%-- <li><a href="Actualiza-datos.jsp">Actualizar Datos</a></li>
					<li><a href="crudProductos.jsp">Mantenimiento de Productos</a></li>
					<li><a href="crudProd?btnAccion=cat">Lista de Productos</a></li>
					<li><a href="#">Cerrar sesión</a></li>	--%>
					<tools:menuPrincipal />
				</ul>
			</nav>
			
			<section>
			
				<h1>Mantenimiento de Productos</h1>

				<!-- Formulario -->
				<form action="crudProd" method="post">
					<div class="form-group">
						<label for="inputCodigo">Código del Producto:</label> <input
							name="txtCodigo" value="${p.idprod }" class="form-control"
							id="inputCodigo" placeholder="Ingrese Código">
					</div>

					<div class="form-group">
						<label for="inputNombreProd">Nombre del Producto:</label> <input
							name="txtNombreProd" value="${p.nombreprod }"
							class="form-control" id="inputNombreProd"
							placeholder="Ingrese descripción del producto">
					</div>
					
					<div class="form-group">
						<label for="inputDescripcion">Descripción:</label> <input
							name="txtDescripcion" value="${p.descripcion }"
							class="form-control" id="inputDescripcion"
							placeholder="Ingrese descripción del producto">
					</div>		
					
					<div class="form-row">

						<div class="form-group col-md-6">
							<label for="inputCategoria">Categoría:</label> 
							<select
								name="cboCategoria" value="${p.idcategoria}"
								class="form-control" id="exampleFormControlSelected1">
								
								<%-- <option value='-1'>Seleccione</option>
								<option value='1'>Brasas</option>
								<option value='2'>Parrillas</option>
								<option value='3'>Fusión Criolla</option>
								<option value='4'>Broaster</option>
								<option value='5'>Hamburguesas</option>
								<option value='6'>Ensaladas</option>
								<option value='7'>Desayunos</option> --%>
								
								<tools:comboCategoriaConParametro idCat="${p.idcategoria}"/>

							</select>
						</div>
						
						<div class="form-group col-md-6">
							<label for="inputPrecio">Precio:</label> <input type="number"
								name="txtPrecio" value="${p.precio }" class="form-control"
								id="inputPrecio" placeholder="0.00" min="0" step="0.01">
						</div>

						<div class="form-group col-md-6">
							<label for="inputEstado">Estado:</label> <select name="cboEstado"
								class="form-control" id="exampleFormControlSeñected2">
								
								<%-- <option value='-1'>Seleccione</option>
								<option value='1'>Activo</option>
								<option value='2'>Eliminado</option> --%>
								
								<tools:comboEstado estado="${p.estado }"/>

							</select>
						</div>
					</div>
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
			
			<div class="container mt-3">
			            
			  <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>Firstname</th>
			        <th>Lastname</th>
			        <th>Email</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>John</td>
			        <td>Doe</td>
			        <td>john@example.com</td>
			      </tr>
			      <tr>
			        <td>Mary</td>
			        <td>Moe</td>
			        <td>mary@example.com</td>
			      </tr>
			      <tr>
			        <td>July</td>
			        <td>Dooley</td>
			        <td>july@example.com</td>
			      </tr>
			    </tbody>
			  </table>
			</div>
			
			
			
			
			
			
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

