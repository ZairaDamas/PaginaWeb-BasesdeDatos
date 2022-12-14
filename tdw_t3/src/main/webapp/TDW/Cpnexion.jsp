<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consultas</title>
<link rel="stylesheet" media="all" href="style.css" />
</head>
<style>
	body {
	  background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
	}
	<!-- /*FORMATO DEL FORMULARIO*/ -->
	.cont {
	  width: 800px;
	  height: auto;
	  background: #24303c;
	  padding: 10px;
	  margin: auto;
	  margin-top: 100px;
	  border-radius: 4px;
	  font-family: 'calibri';
	  color: white;
	  box-shadow: 7px 13px 37px #000;
	}
	
	.cont  h4 {
	  font-size: 22px;
	  margin-bottom: 20px;
	}
	/*Caracteristicas generales del contenido*/
	.text{
		width: 120px;
		text-align: center;
		border-radius: 4px;
		margin-bottom: 16px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 18px;
		color: white;
	}
	.txtbuscar{
		font-family: 'calibri';
		font-size: 15px;
		
	}
	.textocorto{
		width: 40px;
		text-align: center;
		border-radius: 4px;
		margin-bottom: 16px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 18px;
		color: white;
	}
	.textolargo{
		width: 160px;
		text-align: center;
		border-radius: 4px;
		margin-bottom: 16px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 18px;
		color: white;
	}
	.textbd{
		text-align: center;
		margin-bottom: 16px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 15px;
		color: white;
	}
	.contenedor{
		display:flex;
	  	align-items: center;
	  	justify-content:center;
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
	}
	.button:hover {
	    background-color: white; 
	    color: black;
	}
	.button2 {
	    background-color: red;
	    color: white;
	    padding: 10px 12px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    border: 2px solid red;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	}
	.button2:hover {
	    background-color: white; 
	    color: black;
	}
	.button1 {
	    background-color: green;
	    color: white;
	    padding: 10px 25px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    border: 2px solid green;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	    border-radius: 4px;
	}
	.button1:hover {
	    background-color: white; 
	    color: black;
	}
	.buttonbuscar {
	    background-color: yellow;
	    color: white;
	    padding: 10px 15px;
	    text-align: center;
	    text-decoration: none;
	    font-size: 16px;
	    border: 2px solid yellow;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	    border-radius: 4px;
	}
	.buttonbuscar:hover {
	    background-color: white; 
	    color: black;
	}
	.subtitulo {
		
		padding: 50px;
		font-family: 'calibri';
		font-size: 18px;
		color: white;
	}
	.titulo {
		text-align: center;
		width: 100%;
		font-family: 'calibri';
		font-size: 25px;
		color: white;
	}
	.tabla{
		padding-top: 30px;
	}
	.container{
		width: 60%;
	}
	.buscar{
		display: flex;
	}
	.form{
		display: flex;
		padding-left: 405px;
	}
	</style>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/consultas","root","");
    //resp = "Conexión Establecida Correctamente.";		
    PreparedStatement ps;
	ResultSet rs;
	ps=conn.prepareStatement("select * from consultar");	
	rs=ps.executeQuery();
	%>
	<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>
	<section class="cont">
		<h1 class="titulo">Lista de Registros</h1>
		<br/>
		<div class="container buscar">
		<a class="button1" href="Agregar.jsp">Nuevo</a>	
		<form class="form">
			<input class="txtbuscar" type="text" name="txtbuscar"><br>
			
			<input class="buttonbuscar"type="submit" value="Buscar">
		</form>
		<%
			String nombuscar=request.getParameter("txtbuscar");
			if(nombuscar!=null){
				ps=conn.prepareStatement("SELECT * FROM consultar WHERE nombre LIKE "+"'%"+nombuscar+"%'");
		        rs=ps.executeQuery();			
			}else
				System.err.print("Error");	
		%>
		</div>
		<table class="tabla">
			<tr>
				<th class="textocorto">ID</th>
				<th class="text">Nombre</th>
				<th class="text">Apellido</th>
				<th class="textolargo">Correo</th>
				<th class="text">Contraseña</th>
			</tr>
			<% 
				while(rs.next()){
					String id = rs.getString("Id_Usuario");
					String nombreM = rs.getString(2);
					String apellidoM = rs.getString(3);
					String correoM = rs.getString(4);
					String contraseñaM = rs.getString(5);
			%>
			<tr>
				<td class="textbd"><%= id %></td>
				<td class="textbd"><%= rs.getString("nombre") %></td>
				<td class="textbd"><%= rs.getString("apellido") %></td>
				<td class="textbd"><%= rs.getString("correo") %></td>
				<td class="textbd"><%= rs.getString("contraseña") %></td>
				<td>
				 	<a class="button" href="Editar.jsp?id=<%= id %>">Editar</a>
					<a class="button2" href="Eliminar.jsp?id=<%= id %>">Eliminar</a>
				</td>
			</tr>
		<% } %>
		</table>
	</section>
</body>
</html>