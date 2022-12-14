<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Precio_Supermercado</title>
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
body{
	margin: auto;
}

</style>
</head>
<body>
 <jsp:useBean id="usuario" class="Mis_JavaBeans.Super"/>
   <jsp:setProperty name="usuario" property="id" param="id"/>
   <jsp:setProperty name="usuario" property="nombre" param="nombre"/>
   <jsp:setProperty name="usuario" property="costo" param="costo"/>
   <jsp:setProperty name="usuario" property="costo_real" param="costo_real"/>
   <jsp:setProperty name="usuario" property="descuento" param="descuento"/>
   <jsp:setProperty name="usuario" property="neto" param="neto"/>
   
   El producto <jsp:getProperty name="usuario" property="nombre"/> 
   con ID: <jsp:getProperty name="usuario" property="id"/>
   Tiene un precio de <jsp:getProperty name="usuario" property="costo"/>
   Mas el iva que es de 16%, quedara con un costo final de <jsp:getProperty name="usuario" property="costo_real"/>
   Tiene un descuento de <jsp:getProperty name="usuario" property="descuento"/>
   Dando un Precio Final de: <jsp:getProperty name="usuario" property="neto"/>
</body>
</html>