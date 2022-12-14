<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Secundario</title>
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
<%
	String el_nombre;
	String la_edad;
	%>
	<%
	el_nombre = request.getParameter("nombre");
	la_edad = request.getParameter("edad");
	%>
<div class = "contenedor">
<h1>Datos recibidos</h1>
<h3><%= el_nombre%></h3>
<h3><%= la_edad%></h3>
</div>
</body>
</html>