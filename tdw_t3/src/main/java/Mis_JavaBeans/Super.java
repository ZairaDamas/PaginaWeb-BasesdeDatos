package Mis_JavaBeans;
import java.io.Serializable;
public class Super implements Serializable {
	
	private int id;
	private String nombre;
	private double costo;
	private double costo_real;
	private double descuento;
	private double neto;
	private int iva;
	
	
	public int getIva(){
		return iva;		
	}
	public void setIva(int iva) {
		this.iva = iva;
	}
	public Super() {
		// TODO Auto-generated constructor stub
		id = 0;
		nombre = null;
		costo = 0;
		costo_real = 0;
		descuento = 0;
		neto = 0;
		iva = 16;
	}
	
		public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
		public String getNombre() {
		return nombre;
	}
	public void setNombre (String nombre) {
		this.nombre = nombre;
	}	
	public double getCosto() {
		return costo;
	}
	public void setCosto(double costo) {
			this.costo = costo;
	}
		public double getCosto_real() {
			costo_real = costo + (costo*.16);
		return costo_real;
	}
	public void setCosto_real(double costo_real) {
			this.costo_real = costo_real;
	}	
	public double getDescuento() {
		return descuento;
	}
	public void setDescuento(double descuento) {
			this.descuento = descuento;
	}
		public double getNeto() {
			neto = costo_real-(costo_real*(descuento/100));
		return neto;
	}
	public void setNeto(double neto) {
			this.neto = neto;
	}
}

