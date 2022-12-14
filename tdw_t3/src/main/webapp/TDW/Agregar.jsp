<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar</title>
<link rel="stylesheet" media="all" href="style.css" />
</head>
<style>
	body {
	  background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
	}
	<!-- /*FORMATO DEL FORMULARIO*/ -->
	.cont {
	  width: 320px;
	  height: auto;
	  background: #24303c;
	  padding: 20px;
	  margin: auto;
	  margin-top: 100px;
	  border-radius: 4px;
	  font: small-caps 100%/200% serif;
	  color: white;
	  box-shadow: 7px 13px 37px #000;
	}

	/*Caracteristicas generales del contenido*/
	.text{
		width: 260px;
		height: 20px;
		text-align: center;
		border-radius: 4px;
		margin-left: 20px;
		margin-right: 20px;
		margin-bottom: 16px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 15px;
		color: black;
		position: relative;
		display: flex;
		justify-content: center;
	}
	
	.button {
	    background-color: blue;
	    color: white;
	    padding: 10px 20px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    border: 2px solid blue;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	    border-radius: 4px;
	}
	.button:hover {
	    background-color: white; 
	    color: black;
	}
	.button2 {
	    background-color: red;
	    color: white;
	    padding: 4px 10px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    border: 2px solid red;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	    border-radius: 4px;
	}
	.button2:hover {
	    background-color: white; 
	    color: black;
	}
	.titulo {
		text-align: center;
		width: 100%;
		font-family: 'calibri';
		font-size: 25px;
		color: white;
	}
	.boton{
		margin: auto;
        align-items: center;
		
	}
	.contenedor{
		display:flex;
	  	align-items: center;
	  	justify-content:center;
	}
	</style>
<body>
	<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>

	<section class="cont">
		<h1 class="contenedor">AGREGAR REGISTRO</h1>
		<hr>
		<div class="contenedor">
		<form action="" method="post" >
			Nombre:
			<input class="text" type="text" name="txtnom"  required/>
			Apellido:
			<input type="text" name="txtape" class="text" required/>
			Correo:
			<input type="text" name="txtcor" class="text" required/>
			Contraseña:
			<input type="text" name="txtcont" class="text" required/>
			<section class="contenedor">
				<input type="submit" value="Guardar" class="button"/>
				<a class="button2" href="Cpnexion.jsp">Regresar</a>
			</section>
		</form>
		</div>
	</section>
</body>
</html>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/consultas","root","");
    //resp = "Conexión Establecida Correctamente.";
    out.println("Conexión establecida");
    
    PreparedStatement ps;
    String nom,ape,cor,cont;
    nom=request.getParameter("txtnom");
    ape=request.getParameter("txtape");
    cor=request.getParameter("txtcor");
    cont=request.getParameter("txtcont");
    if(nom!=null && ape!=null && cor!=null && cont!=null){
    	ps=con.prepareStatement("INSERT into consultar(nombre,apellido,correo,contraseña)values('"+nom+"','"+ape+"','"+cor+"','"+cont+"')");
    	ps.executeUpdate();
    	response.sendRedirect("Cpnexion.jsp");
    }
%>