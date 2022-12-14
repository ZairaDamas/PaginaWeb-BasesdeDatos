package Mis_JavaBeans;

import java.io.Serializable;

public class insert_DB implements Serializable{
	
	private int id_cuenta;
	private String nombre;
	private int saldo;
	private String mensaje;
	
	
	public insert_DB() {
		id_cuenta =0;
		nombre = null;
		saldo = 0;
		mensaje = null;
		}


	public int getId_cuenta() {
		return id_cuenta;
	}


	public void setId_cuenta(int id_cuenta) {
		this.id_cuenta = id_cuenta;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public int getSaldo() {
		return saldo;
	}


	public void setSaldo(int saldo) {
		this.saldo = saldo;
	}


	public String getMensaje() {
		return mensaje;
	}


	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	
}
