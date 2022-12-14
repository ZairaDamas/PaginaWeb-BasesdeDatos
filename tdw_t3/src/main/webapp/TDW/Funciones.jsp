<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.StringTokenizer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Funciones</title>
</head>
<style>
body {
	  background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
	}
.contenedor{
  	margin-top: 100px;
  	text-align: center;
  	font-family: 'calibri';
	}
.contenedor h1{
	font-size: 25px;
	
}

</style>
<body>
<%!
	double function (int a, double b){
	return a*b;
  		};
  		
	public String estaciones(int i){
		String estacion;
		switch(i){
		case 1: estacion = "Primavera"; break;
		case 2: estacion = "Verano"; break;
		case 3: estacion = "Otoño"; break;
		case 4: estacion = "Invierno"; break;
		default:estacion = "La estacion del año no existe "; break;
		}
		return estacion;
	}
	int tokens(String texto){
	StringTokenizer st = new StringTokenizer(texto);
	return st.countTokens();
	}
%>
<%
out.print(function(3,1.0));
out.print("<br>");
out.print("" +estaciones(1));
out.print("<br>");
out.print(tokens("Hola mundo ISC  2022"));
%>

</body>
</html>