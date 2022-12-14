package Mis_JavaBeans;

import java.io.Serializable;

public class conexion implements Serializable{

	private String nombreDB;
	private String respuesta;
	private String nombre;
	
	

	public conexion() {
		nombreDB = null;
		respuesta=null;
		nombre=null;
	}

	public String getNombreDB() {
		return nombreDB;
	}

	public void setNombreDB(String nombreDB) {
		this.nombreDB = nombreDB;
	}

	public String getRespuesta() {
		return respuesta;
	}

	public void setRespuesta(String respuesta) {
		this.respuesta = respuesta;
	}
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
}
