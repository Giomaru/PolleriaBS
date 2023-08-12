package model;

public class Tipos {

	public int idTipo;
	public String descripcion;
	public int estado;
	
	public Tipos(int idTipo, String descripcion, int estado) {
		super();
		this.idTipo = idTipo;
		this.descripcion = descripcion;
		this.estado = estado;
	}

	public Tipos() {
		
	}

	public int getIdTipo() {
		return idTipo;
	}

	public void setIdTipo(int idTipo) {
		this.idTipo = idTipo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	
	
}
