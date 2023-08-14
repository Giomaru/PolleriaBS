package model;

public class Pedido {

	private Integer idPed;
	private Integer idProd;
	private Integer cantidad;
	private Double precio;
	private Double subtotal;
	private String nombreCliente;
	private String direccionCliente;
	private String estadoPedido;
	private Integer estado;
	
	// Campos de apoyo
	private String nombreProducto;
	private String descripcionProducto;
	
	public Pedido() {
	}
	
	public Pedido(Integer idPed, Integer idProd, Integer cantidad, Double precio, Double subtotal, String nombreCliente,
			String direccionCliente, String estadoPedido, Integer estado, String nombreProducto,
			String descripcionProducto) {
		super();
		this.idPed = idPed;
		this.idProd = idProd;
		this.cantidad = cantidad;
		this.precio = precio;
		this.subtotal = subtotal;
		this.nombreCliente = nombreCliente;
		this.direccionCliente = direccionCliente;
		this.estadoPedido = estadoPedido;
		this.estado = estado;
		this.nombreProducto = nombreProducto;
		this.descripcionProducto = descripcionProducto;
	}

	public Pedido(Integer idProd, Integer cantidad, Double precio, Double subtotal, String nombreCliente,
			String direccionCliente, String estadoPedido) {
		this.idProd = idProd;
		this.cantidad = cantidad;
		this.precio = precio;
		this.subtotal = subtotal;
		this.nombreCliente = nombreCliente;
		this.direccionCliente = direccionCliente;
		this.estadoPedido = estadoPedido;
	}
	
	public Integer getIdPed() {
		return idPed;
	}
	public void setIdPed(Integer idPed) {
		this.idPed = idPed;
	}
	public Integer getIdProd() {
		return idProd;
	}
	public void setIdProd(Integer idProd) {
		this.idProd = idProd;
	}
	public Integer getCantidad() {
		return cantidad;
	}
	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	public Double getPrecio() {
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	public Double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(Double subtotal) {
		this.subtotal = subtotal;
	}
	public String getNombreCliente() {
		return nombreCliente;
	}
	public void setNombreCliente(String nombreCliente) {
		this.nombreCliente = nombreCliente;
	}
	public String getDireccionCliente() {
		return direccionCliente;
	}
	public void setDireccionCliente(String direccionCliente) {
		this.direccionCliente = direccionCliente;
	}
	public String getEstadoPedido() {
		return estadoPedido;
	}
	public void setEstadoPedido(String estadoPedido) {
		this.estadoPedido = estadoPedido;
	}
	public Integer getEstado() {
		return estado;
	}
	public void setEstado(Integer estado) {
		this.estado = estado;
	}
	public String getNombreProducto() {
		return nombreProducto;
	}
	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}
	public String getDescripcionProducto() {
		return descripcionProducto;
	}
	public void setDescripcionProducto(String descripcionProducto) {
		this.descripcionProducto = descripcionProducto;
	}
}
