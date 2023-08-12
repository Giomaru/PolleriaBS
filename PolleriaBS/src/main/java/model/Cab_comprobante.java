package model;

import java.sql.Date;

public class Cab_comprobante {
	private int num_comprobante;
	private Date fecha_comprobante;
	private int cod_cliente;
	private int estado;
	
	
	public Cab_comprobante(int num_comprobante, Date fecha_comprobante, int cod_cliente, int estado) {
		super();
		this.num_comprobante = num_comprobante;
		this.fecha_comprobante = fecha_comprobante;
		this.cod_cliente = cod_cliente;
		this.estado = estado;
	}


	public Cab_comprobante() {
		
	}


	public int getNum_comprobante() {
		return num_comprobante;
	}


	public void setNum_comprobante(int num_comprobante) {
		this.num_comprobante = num_comprobante;
	}


	public Date getFecha_comprobante() {
		return fecha_comprobante;
	}


	public void setFecha_comprobante(Date fecha_comprobante) {
		this.fecha_comprobante = fecha_comprobante;
	}


	public int getCod_cliente() {
		return cod_cliente;
	}


	public void setCod_cliente(int cod_cliente) {
		this.cod_cliente = cod_cliente;
	}


	public int getEstado() {
		return estado;
	}


	public void setEstado(int estado) {
		this.estado = estado;
	}
	
	
	
}
