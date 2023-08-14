package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mantenimiento.GestionPedido;
import mantenimiento.GestionProducto;
import model.Pedido;
import model.Producto;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "pedido", 
description = "Controlador para el mantenimiento de los cartas", 
urlPatterns = {"/pedido" })
public class PedidoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public PedidoServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entro al Servlet de Pedidos");

		String accion = request.getParameter("accion");
		System.out.println("Accion: " + accion);

		switch (accion) {
		case "regPedido":
			registrar(request, response);
			break;
			
		case "listado":
			listar(request, response);
			break;
		
		case "cambiar":
			cambiarEstado(request, response);
			break;

		default:
			break;
		}
	}

	private void cambiarEstado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int idPedido = Integer.parseInt(request.getParameter("id"));
		
		GestionPedido gp = new GestionPedido();
		gp.cambiarEstadoEntregadoPedido(idPedido);
		
		ArrayList<Pedido> listado = gp.listarPedidos(); 

		request.setAttribute("listado", listado);
		
		request.getRequestDispatcher("GestionPedidos.jsp").forward(request, response);
		
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Ingreso al proceso pedidos");
		
		GestionPedido gp = new GestionPedido();
		ArrayList<Pedido> listado = gp.listarPedidos(); 

		// enviar el listado al jsp --> atributo
		request.setAttribute("listado", listado);

		// redireccionando a la pagina listado
		request.getRequestDispatcher("GestionPedidos.jsp").forward(request, response);
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nomCliente = request.getParameter("nombreCliente");
		String dirCliente = request.getParameter("direccionCliente");
		int cant = Integer.parseInt(request.getParameter("cantidad"));		
		int idProd = Integer.parseInt(request.getParameter("idProducto"));
		double precioProd = Double.parseDouble(request.getParameter("precioProducto"));
		double subtotal = cant * precioProd;
		
		Pedido pedido = new Pedido(idProd, cant, precioProd, subtotal, nomCliente, dirCliente, "PENDIENTE");
		
		GestionPedido gPed = new GestionPedido();
		int ok = gPed.registrarPedido(pedido);
		
		if (ok == 0) {
			request.setAttribute("mensaje", "<div class='alert alert-danger' role='alert'>Error al registrar!</div>");

		} else {
			request.setAttribute("mensaje", "<div class='alert alert-success' role='alert'>Pedido registrado</div>");

		}
		
		GestionProducto gp = new GestionProducto();
		ArrayList<Producto> listado = gp.listado(); 

		// enviar el listado al jsp --> atributo
		request.setAttribute("listado", listado);
		
		request.getRequestDispatcher("Carta.jsp").forward(request, response);
		
	}


}
