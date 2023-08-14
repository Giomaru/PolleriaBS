package interfaces;

import java.util.ArrayList;
import java.util.Date;

import model.Pedido;

public interface PedidoInterface {

	Integer registrarPedido(Pedido pedido);
	
	ArrayList<Pedido> listarPedidos();
	
	ArrayList<Pedido> listarPedidosReporte(Date desde, Date hasta);
	
	Integer cambiarEstadoEntregadoPedido(int idPedido);
}
