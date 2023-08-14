package interfaces;

import java.util.ArrayList;

import model.Pedido;

public interface PedidoInterface {

	Integer registrarPedido(Pedido pedido);
	
	ArrayList<Pedido> listarPedidos();
	
	Integer cambiarEstadoEntregadoPedido(int idPedido);
}
