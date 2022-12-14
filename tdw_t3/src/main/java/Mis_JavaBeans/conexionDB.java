package Mis_JavaBeans;

import java.io.Serializable;

public class conexionDB implements Serializable{

	private String nombreDB;
	private String respuesta;
	
	public conexionDB() {
		nombreDB = null;
		respuesta=null;
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
	
}
