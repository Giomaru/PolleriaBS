package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import interfaces.PedidoInterface;
import model.Pedido;
import utils.MySQLConexion8;

public class GestionPedido implements PedidoInterface{

	@Override
	public Integer registrarPedido(Pedido pedido) {
		
		int rs = 0; //0 --> Error
		
		//Plantilla
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion8.getConexion();
			String sql = "insert into tb_pedidos values (null,?,?,?,?,?,?,?,default)";
			pst = con.prepareStatement(sql);
			pst.setInt(1, pedido.getIdProd());
			pst.setInt(2, pedido.getCantidad());
			pst.setDouble(3, pedido.getPrecio());
			pst.setDouble(4, pedido.getSubtotal());
			pst.setString(5, pedido.getNombreCliente());
			pst.setString(6, pedido.getDireccionCliente());
			pst.setString(7, pedido.getEstadoPedido());
			//ejecutar 
			
			rs = pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error al registrar : " + e.getMessage());
			
		} finally {
			MySQLConexion8.closeConexion(con);
		}
		
		return rs ;		
	}

	@Override
	public ArrayList<Pedido> listarPedidos() {
		ArrayList<Pedido> lista = null;
		
		//Plantilla
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = MySQLConexion8.getConexion();
			String sql = "select ped.*, pro.nombre_prod, pro.descripcion from tb_pedidos ped inner join tb_productos pro on ped.id_prod = pro.idprod where ped.estado = 1";
			pst = con.prepareStatement(sql);
			
			//ejecutar
			rs = pst.executeQuery();
			
			lista = new ArrayList<Pedido>();
			while (rs.next()) {
				Pedido p = new Pedido(rs.getInt("id_ped"), 
									  rs.getInt("id_prod"),
									  rs.getInt("cantidad"),
									  rs.getDouble("precio"), 
									  rs.getDouble("subtotal"), 
									  rs.getString("nombre_cliente"),
									  rs.getString("direccion_cliente"),
									  rs.getString("estado_pedido"),
									  rs.getInt("estado"),
									  rs.getString("nombre_prod"),
									  rs.getString("descripcion"));
				
				lista.add(p);
			}
			
		} catch (Exception e) {
			System.out.println("Error en listar : " + e.getMessage());
			
		} finally {
			MySQLConexion8.closeConexion(con);
		}
		
		
		return lista ;
	}

	@Override
	public Integer cambiarEstadoEntregadoPedido(int idPedido) {
		int rs = 0; // 0 --> Error

		// Plantilla
		Connection con = null;
		PreparedStatement pst = null;

		try {
			con = MySQLConexion8.getConexion();
			String sql = "update tb_pedidos set estado_pedido='ENTREGADO' where id_ped = ?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, idPedido);
									
			// ejecutar
			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error al actualizar : " + e.getMessage());

		} finally {
			MySQLConexion8.closeConexion(con);
		}

		return rs;
	}

}
