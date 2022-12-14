<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<jsp:useBean id="usuario" class="Mis_JavaBeans.persona_beans"/>
   <jsp:setProperty name="usuario" property="nombre" param="nombre"/>
   <jsp:setProperty name="usuario" property="edad" param="edad"/>
   Bienvenido, su nombre es: <jsp:getProperty name="usuario" property="nombre"/>
   y su edad es: <jsp:getProperty name="usuario" property="edad"/> 
   <%
   	if(usuario.getEdad() >= 18){
   		usuario.setEdadm("Mayor de edad");
   	}else{
   		usuario.setEdadm("Menor de edad");
   	}
   %>
   <jsp:setProperty property="edadm" name="usuario" param="edadm"/>
   por lo tanto usted es: <input type="text" name="sit" value="<%= usuario.getEdadm() %>">
   
<div class = "contenedor">
</div>
</body>
</html>