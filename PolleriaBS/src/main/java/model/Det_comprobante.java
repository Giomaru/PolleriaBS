package model;

public class Det_comprobante {
	private int num_comprobante;
	private String nombre;
	private String apellido;
	private String celular;
	private int nro_dni;
	private String observaciones;
	private String direccion;
	private int metodo_pago;
	private int metodo_entrega;
	private String prodid;
	private int cantidad;
	private double precio_venta;
	private double total;
	
	
	public Det_comprobante(int num_comprobante, String nombre, String apellido, String celular, int nro_dni,
			String observaciones, String direccion, int metodo_pago, int metodo_entrega, String prodid, int cantidad,
			double precio_venta, double total) {
		super();
		this.num_comprobante = num_comprobante;
		this.nombre = nombre;
		this.apellido = apellido;
		this.celular = celular;
		this.nro_dni = nro_dni;
		this.observaciones = observaciones;
		this.direccion = direccion;
		this.metodo_pago = metodo_pago;
		this.metodo_entrega = metodo_entrega;
		this.prodid = prodid;
		this.cantidad = cantidad;
		this.precio_venta = precio_venta;
		this.total = total;
	}


	public Det_comprobante() {
		
	}


	public int getNum_comprobante() {
		return num_comprobante;
	}


	public void setNum_comprobante(int num_comprobante) {
		this.num_comprobante = num_comprobante;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public String getCelular() {
		return celular;
	}


	public void setCelular(String celular) {
		this.celular = celular;
	}


	public int getNro_dni() {
		return nro_dni;
	}


	public void setNro_dni(int nro_dni) {
		this.nro_dni = nro_dni;
	}


	public String getObservaciones() {
		return observaciones;
	}


	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public int getMetodo_pago() {
		return metodo_pago;
	}


	public void setMetodo_pago(int metodo_pago) {
		this.metodo_pago = metodo_pago;
	}


	public int getMetodo_entrega() {
		return metodo_entrega;
	}


	public void setMetodo_entrega(int metodo_entrega) {
		this.metodo_entrega = metodo_entrega;
	}


	public String getProdid() {
		return prodid;
	}


	public void setProdid(String prodid) {
		this.prodid = prodid;
	}


	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


	public double getPrecio_venta() {
		return precio_venta;
	}


	public void setPrecio_venta(double precio_venta) {
		this.precio_venta = precio_venta;
	}


	public double getTotal() {
		return total;
	}


	public void setTotal(double total) {
		this.total = total;
	}
	
	
	
	
}
