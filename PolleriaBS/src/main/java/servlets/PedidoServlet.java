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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "pedido", description = "Controlador para el mantenimiento de los cartas", urlPatterns = {
		"/pedido" })
public class PedidoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PedidoServlet() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Entro al Servlet de Pedidos");

		String accion = request.getParameter("accion");
		System.out.println("Accion: " + accion);

		switch (accion) {
		case "regPedido":
			registrar(request, response);
			break;
		case "reporte":
			reporte(request, response);
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

	private void reporte(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Ingreso al proceso pedidos");

		try {

			String desdeStr = request.getParameter("desde");
			String hastaStr = request.getParameter("hasta");

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			Date desde = sdf.parse(desdeStr);
			Date hasta = sdf.parse(hastaStr);

			GestionPedido gp = new GestionPedido();
			ArrayList<Pedido> listado = gp.listarPedidosReporte(desde, hasta);

			// enviar el listado al jsp --> atributo
			request.setAttribute("listado", listado);

			// redireccionando a la pagina listado
			request.getRequestDispatcher("ReportePedidos.jsp").forward(request, response);

		} catch (ParseException e) {
			e.printStackTrace();
		}

	}

	private void cambiarEstado(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

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

	private void registrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

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
			request.setAttribute("estadoReg", false);

		} else {
			request.setAttribute("estadoReg", true);

		}

		Producto p = new GestionProducto().buscar(idProd);
		request.setAttribute("pro", p);

		request.getRequestDispatcher("DetalleProducto.jsp").forward(request, response);

	}

}
