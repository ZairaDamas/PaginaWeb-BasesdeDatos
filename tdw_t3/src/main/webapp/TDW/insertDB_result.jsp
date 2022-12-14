<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert en DB</title>
<link rel="stylesheet" media="all" href="./CSS/estilo2.css">
</head>
<body>
	<form class="form">
		<h2> Información del Registro </h2>
		<jsp:useBean id="usuario" class="Mis_JavaBeans.insert_DB"/>
		<jsp:setProperty name="usuario" property="id_cuenta" param="id_cuenta"/>
		<p type="Id_Cuenta:">
			<input type="text" name="id_cuenta" value="<%= usuario.getId_cuenta() %>" disabled>
		</p>
		<br>
		<jsp:setProperty name="usuario" property="nombre" param="nombre"/>
		<p type="Nombre del Titular:">
			<input type="text" name="nombre" value="<%= usuario.getNombre() %>" disabled>
		</p>
		<br>
		<jsp:setProperty name="usuario" property="saldo" param="saldo"/>
		<p type="Saldo:">
			<input type="text" name="saldo" value="<%= usuario.getSaldo() %>" disabled>
		</p>
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/mibanco","root","");
				String query = "INSERT INTO cuentas (id_cuenta, nombre, saldo) values (" + usuario.getId_cuenta() + ", '" + usuario.getNombre() + "', " + usuario.getSaldo() + ")";
				Statement stmt = (Statement) conn.createStatement();
				stmt.executeUpdate(query);
	            conn.close();					
		        usuario.setMensaje("Registro Guardado Exitosamente.");		         
			}
			catch(SQLException e) {
				usuario.setMensaje("Error al Intentar Guardar el Registro.");				
			}	
		%>
		<br>
		<button type="reset" onclick="location.href='insertDB.jsp'">
    		Aceptar
		</button>
		<div>			
		    <span class="fa fa-phone"></span>
		    <%= usuario.getMensaje() %>
  		</div>
	</form>
</body>
</html>