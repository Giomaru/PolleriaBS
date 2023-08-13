package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import interfaces.ProductoInterface;
import model.Producto;
import utils.ConexionBD;

public class GestionProducto implements ProductoInterface {

	@Override
	public int crear(Producto prod) {
		 int resultado = 0;

	        try {
	            Connection con = ConexionBD.getConnection();
	            String query = "INSERT INTO tb_productos (idprod, nombre_prod, descripcion, categoriaid, precio, estado, imagen) VALUES (?, ?, ?, ?, ?, ?, ?)";
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setString(1, prod.getIdprod());
	            ps.setString(2, prod.getNombreprod());
	            ps.setString(3, prod.getDescripcion());
	            ps.setInt(4, prod.getCategoriaid());
	            ps.setDouble(5, prod.getPrecio());
	            ps.setInt(6, prod.getEstado());
	            ps.setString(7, prod.getImagen());

	            resultado = ps.executeUpdate();

	            ps.close();
	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return resultado;
	}

	@Override
	public Producto buscar(int idprod) {
		 Producto producto = null;

	        try {
	            Connection con = ConexionBD.getConnection();
	            String query = "SELECT * FROM tb_productos WHERE idprod = ?";
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setInt(1, idprod);

	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                producto = new Producto(
	                        rs.getString("idprod"),
	                        rs.getString("nombre_prod"),
	                        rs.getString("descripcion"),
	                        rs.getInt("categoriaid"),
	                        rs.getDouble("precio"),
	                        rs.getInt("estado"),
	                        rs.getString("imagen")
	                );
	            }

	            rs.close();
	            ps.close();
	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return producto;
	}

	@Override
	public int actualizar(Producto prod) {
		 int resultado = 0;

	        try {
	            Connection con = ConexionBD.getConnection();
	            String query = "UPDATE tb_productos SET nombre_prod = ?, descripcion = ?, categoriaid = ?, precio = ?, estado = ?, imagen = ? WHERE idprod = ?";
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setString(1, prod.getNombreprod());
	            ps.setString(2, prod.getDescripcion());
	            ps.setInt(3, prod.getCategoriaid());
	            ps.setDouble(4, prod.getPrecio());
	            ps.setInt(5, prod.getEstado());
	            ps.setString(6, prod.getImagen());
	            ps.setString(7, prod.getIdprod());

	            resultado = ps.executeUpdate();

	            ps.close();
	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return resultado;
	    }

	 @Override
	 public int eliminar(String idprod) {
	        int resultado = 0;

	        try {
	            Connection con = ConexionBD.getConnection();
	            String query = "DELETE FROM tb_productos WHERE idprod = ?";
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setString(1, idprod);

	            resultado = ps.executeUpdate();

	            ps.close();
	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return resultado;
	}

	@Override
	public ArrayList<Producto> listado() {
		ArrayList<Producto> productos = new ArrayList<>();

        try {
            Connection con = ConexionBD.getConnection();
            String query = "SELECT * FROM tb_productos";
            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Producto producto = new Producto(
                        rs.getString("idprod"),
                        rs.getString("nombre_prod"),
                        rs.getString("descripcion"),
                        rs.getInt("categoriaid"),
                        rs.getDouble("precio"),
                        rs.getInt("estado"),
                        rs.getString("imagen")
                );
                productos.add(producto);
            }

            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
	}

	@Override
	public ArrayList<Producto> listarxCategoria(int categoria) {
		  ArrayList<Producto> productos = new ArrayList<>();

	        try {
	            Connection con = ConexionBD.getConnection();
	            String query = "SELECT * FROM tb_productos WHERE categoriaid = ?";
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setInt(1, categoria);

	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                Producto producto = new Producto(
	                        rs.getString("idprod"),
	                        rs.getString("nombre_prod"),
	                        rs.getString("descripcion"),
	                        rs.getInt("categoriaid"),
	                        rs.getDouble("precio"),
	                        rs.getInt("estado"),
	                        rs.getString("imagen")
	                );
	                productos.add(producto);
	            }

	            rs.close();
	            ps.close();
	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return productos;
	}

	@Override
	public ArrayList<Producto> listarProductos() {
		ArrayList<Producto> productos = new ArrayList<>();

        try {
            Connection con = ConexionBD.getConnection();
            String query = "SELECT * FROM tb_productos";
            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Producto producto = new Producto(
                        rs.getString("idprod"),
                        rs.getString("nombre_prod"),
                        rs.getString("descripcion"),
                        rs.getInt("categoriaid"),
                        rs.getDouble("precio"),
                        rs.getInt("estado"),
                        rs.getString("imagen")
                );
                productos.add(producto);
            }

            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
	}

	@Override
	public ArrayList<Producto> listarProd(String nombreprod) {
		ArrayList<Producto> productos = new ArrayList<>();

        try {
            Connection con = ConexionBD.getConnection();
            String query = "SELECT * FROM tb_productos WHERE nombre_prod LIKE ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "%" + nombreprod + "%");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Producto producto = new Producto(
                        rs.getString("idprod"),
                        rs.getString("nombre_prod"),
                        rs.getString("descripcion"),
                        rs.getInt("categoriaid"),
                        rs.getDouble("precio"),
                        rs.getInt("estado"),
                        rs.getString("imagen")
                );
                productos.add(producto);
            }

            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
            
	}

	

}
