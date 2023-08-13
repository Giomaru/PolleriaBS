package interfaces;

import java.util.ArrayList;

import model.Producto;

public interface ProductoInterface {
	
	public int registrar(Producto p);
	public int actualizar(Producto p);
	public int eliminar(int idprod);
	
	//listados o consultas
	public ArrayList<Producto> listado();
	public ArrayList<Producto> listarxCategoria(int categoria);
	
	public Producto buscar(int idprod);
	

}
