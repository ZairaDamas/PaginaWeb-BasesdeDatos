package Mis_JavaBeans;
import java.io.Serializable;
public class persona_beans implements Serializable {
			//ATRIBUTOS
		private String nombre;
		private int edad;
		private String edadm;
		public String getEdadm() {		
			return edadm;
		}
		public void setEdadm(String edadm) {
			this.edadm = edadm;
		}
		//CONSTRUCTOR
		public persona_beans() {
			// TODO Auto-generated constructor stub
			nombre = null;
			edad = 0;
		}
		public String getNombre() {
			return nombre;
		}
		public void setNombre(String nombre) {
			this.nombre = nombre;
		}
		public int getEdad() {
			return edad;
		}
		public void setEdad(int edad) {
			this.edad = edad;
		}
	}


