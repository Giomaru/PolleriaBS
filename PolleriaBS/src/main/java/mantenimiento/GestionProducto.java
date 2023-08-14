package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import interfaces.ProductoInterface;
import model.Producto;
import utils.MySQLConexion8;

public class GestionProducto implements ProductoInterface {
	
	@Override
	public int registrar(Producto p)  {
		int rs = 0; //0 --> Error
		
		//Plantilla
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion8.getConexion();
			String sql = "insert into tb_productos values (?,?,?,?,?,default)";
			pst = con.prepareStatement(sql);
			pst.setInt(1, p.getIdprod());
			pst.setString(2, p.getNombreprod());
			pst.setString(3, p.getDescripcion());
			pst.setInt(4, p.getCategoriaid());
			pst.setDouble(5, p.getPrecio());	
			//pst.setInt(6, p.getEstado());
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
	public int actualizar(Producto p) {
		int rs = 0; // 0 --> Error

		// Plantilla
		Connection con = null;
		PreparedStatement pst = null;

		try {
			con = MySQLConexion8.getConexion();
			String sql = "update tb_productos set nombre_prod=?, descripcion = ?, id_categoria = ?, precio = ?, estado = ? where idprod = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, p.getNombreprod());
			pst.setString(2, p.getDescripcion());
			pst.setInt(3, p.getCategoriaid());
			pst.setDouble(4, p.getPrecio());
			pst.setInt(5, p.getEstado());
			pst.setInt(6, p.getIdprod());
						
			// ejecutar

			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error al actualizar : " + e.getMessage());

		} finally {
			MySQLConexion8.closeConexion(con);
		}

		return rs;
	}

	@Override
	public int eliminar(int idprod) {
		int rs = 0; //0 --> Error
		
		//Plantilla
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion8.getConexion();
			String sql = "update tb_productos set estado = 2 where idprod = ?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, idprod);
			
			//ejecutar 
			
			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error en eliminar : " + e.getMessage());
			
		} finally {
			MySQLConexion8.closeConexion(con);
		}
		
		return rs ;
	}

	@Override
	public ArrayList<Producto> listado() {
		ArrayList<Producto> lista = null;
		
		//Plantilla
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = MySQLConexion8.getConexion();
			String sql = "select * from tb_productos where estado = 1";
			pst = con.prepareStatement(sql);
			
			
			//ejecutar 
			
			rs = pst.executeQuery();
			
			lista = new ArrayList<Producto>();
			while (rs.next()) {
				Producto p = new Producto(rs.getInt("idprod"), 
										  rs.getString("nombre_prod"),
										  rs.getString("descripcion"),
										  rs.getInt("id_categoria"), 
										  rs.getDouble("precio"), 
										  rs.getInt("estado"));
				
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
	public Producto buscar(int idprod) {
		Producto p = null;
		
		//Plantilla
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = MySQLConexion8.getConexion();
			String sql = "select * from tb_productos where idprod = ?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, idprod);
			//pst.setInt(2, 1);
			
			rs = pst.executeQuery();
			
			
			if (rs.next()) {
			 p = new Producto(rs.getInt("idprod"), 
					 		  rs.getString("nombre_prod"),
					 		  rs.getString("descripcion"),
							  rs.getInt("id_categoria"), 
							  rs.getDouble("precio"), 
							  rs.getInt("estado"));
			}
			
		} catch (Exception e) {
			System.out.println("Error en buscar : " + e.getMessage());
			
		} finally {
			MySQLConexion8.closeConexion(con);
		}
				
		return p;

	}
	
	@Override
	public ArrayList<Producto> listarxCategoria(int categoria) {
		// TODO Auto-generated method stub
		return null;
	}

}
