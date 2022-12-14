<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado cnxDB</title>
<link rel="stylesheet" media="all" href="./CSS/estilo1.css">
</head>
<body>
	<form class="form">
		<h2> Resultado de la Conexión</h2>
		<jsp:useBean id="usuario" class="Mis_JavaBeans.conexionDB"/>
		<jsp:setProperty name="usuario" property="nombreDB" param="nombreDB"/>
		<p type="Nombre de la DB:">
			<input type="text" name="nombreDB" value="<%= usuario.getNombreDB() %>" disabled>
		</p>
		<%			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/" + usuario.getNombreDB(),"root","");
		        //resp = "Conexión Establecida Correctamente.";
		        usuario.setRespuesta("Conexión Establecida Correctamente.");		         
			}
			catch(SQLException e) {
				//resp = "Conexión Fallida, la DB no existe.";
				usuario.setRespuesta("Conexión Fallida, la DB no existe.");				
			}	
		%>
		<br>
		<button type= "reset" onclick = "location.href='testDBcnx.jsp'">
		Aceptar
		</button>
		<div>			
		    <span class="fa fa-phone"></span>
		    <%= usuario.getRespuesta() %>
  		</div>
	</form>
</body>
</html>