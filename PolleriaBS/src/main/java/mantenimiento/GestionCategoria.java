package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import interfaces.CategoriaInterface;
import model.Categoria;
import utils.ConexionBD;

public class GestionCategoria implements CategoriaInterface{
	
	@Override
	public ArrayList<Categoria> listado() {
		ArrayList<Categoria> lista = null;
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = ConexionBD.getConnection();
			String sql = "select * from tb_categorias";
			pst = con.prepareStatement(sql);
			
			//ejecutar 
			
			rs = pst.executeQuery();
			
			lista = new ArrayList<Categoria>();
			while (rs.next()) {
				
				Categoria c = new Categoria();
				
				c.setIdcategoria(rs.getInt(1));
				c.setNombreCategoria(rs.getString(2));
				
				lista.add(c);
			}
			
		} catch (Exception e) {
			System.out.println("Error en listar : " + e.getMessage());
			
		} finally {
			ConexionBD.cerrarConexion();
		}
		
		return lista;
	}
	
	
	

}
