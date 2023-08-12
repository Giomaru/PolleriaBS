package interfaces;

import java.util.ArrayList;

import model.Producto;

public interface ProductoInterface {
	
	public int crear(Producto prod);
	public Producto buscar(int idprod);
	public int actualizar(Producto prod);
	public int eliminar(String idprod);
	
	//listados o consultas
	public ArrayList<Producto> listado();
	public ArrayList<Producto> listarxCategoria(int categoria);
	public ArrayList<Producto> listarProductos();
	
	//buscar producto por nombre
	public ArrayList<Producto> listarProd(String nombreprod);
	
}
