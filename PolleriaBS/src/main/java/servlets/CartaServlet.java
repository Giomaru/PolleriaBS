package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mantenimiento.GestionProducto;
import model.Producto;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "carta", 
description = "Controlador para el mantenimiento de los cartas", 
urlPatterns = {"/carta" })
public class CartaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public CartaServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entro al Servlet de Carta");

		String accion = request.getParameter("btnAccion");
		System.out.println("Opcion seleccionada en el boton: " + accion);

		switch (accion) {
		/*case "registrar":
			registrar(request, response);
			break;
		case "actualizar":
			actualizar(request, response);
			break;
		case "eliminar":
			eliminar(request, response);
			break;*/
		case "listado":
			listar(request, response);
			break;
		/*case "q":
			buscar(request, response);
			break;*/

		default:
			break;
		}
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Ingreso al proceso carta");
		
		GestionProducto gp = new GestionProducto();
		ArrayList<Producto> listado = gp.listado(); 

		// enviar el listado al jsp --> atributo
		request.setAttribute("listado", listado);

		// redireccionando a la pagina listado
		request.getRequestDispatcher("Carta.jsp").forward(request, response);
	}

}
