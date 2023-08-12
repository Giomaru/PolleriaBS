package model;

public class Producto {
	
	private String idprod;
	private String nombreprod;
	private String descripcion;
	private int categoriaid;
	private String categoria;
	private double precio;
	private int estado;
	private String imagen;
	
	public Producto() {
		
	}
	
	public Producto(String idprod, String nombreprod, String descripcion, int categoriaid, double precio, int estado,
			String imagen) {
		
		this.idprod = idprod;
		this.nombreprod = nombreprod;
		this.descripcion = descripcion;
		this.categoriaid = categoriaid;
		this.precio = precio;
		this.estado = estado;
		this.imagen = imagen;
	}

	public Producto(String idprod, String nombreprod, String descripcion, int categoriaid, String categoria, double precio, int estado,
			String imagen) {
		
		this.idprod = idprod;
		this.nombreprod = nombreprod;
		this.descripcion = descripcion;
		this.categoriaid = categoriaid;
		this.categoria = categoria;
		this.precio = precio;
		this.estado = estado;
		this.imagen = imagen;
	}

	public String getIdprod() {
		return idprod;
	}


	public void setIdprod(String idprod) {
		this.idprod = idprod;
	}


	public String getNombreprod() {
		return nombreprod;
	}


	public void setNombreprod(String nombreprod) {
		this.nombreprod = nombreprod;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public int getCategoriaid() {
		return categoriaid;
	}


	public void setCategoriaid(int categoriaid) {
		this.categoriaid = categoriaid;
	}

	public String getCategoria() {
		return categoria;
	}


	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public double getPrecio() {
		return precio;
	}


	public void setPrecio(double precio) {
		this.precio = precio;
	}


	public int getEstado() {
		return estado;
	}


	public void setEstado(int estado) {
		this.estado = estado;
	}


	public String getImagen() {
		return imagen;
	}


	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	
}
