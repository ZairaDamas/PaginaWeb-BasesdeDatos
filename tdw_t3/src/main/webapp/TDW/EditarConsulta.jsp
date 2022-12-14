<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
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
</style>
<body>
<%
	String ids = request.getParameter("id");
	String nombreM = request.getParameter("txtnom");
	String apellidoM = request.getParameter("txtape");
	String correoM = request.getParameter("txtcor");
	String contraseñaM = request.getParameter("txtcon");
	try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/consultas","root","");
	     //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
	     PreparedStatement pst = con.prepareStatement("UPDATE consultar SET nombre=?, apellido=?, correo=?, contraseña=? WHERE Id_Usuario=?");
	     pst.setString(1, nombreM);
	     pst.setString(2, apellidoM);
	     pst.setString(3, correoM);
	     pst.setString(4, contraseñaM);
	     pst.setString(5, ids);
	     pst.execute();
	}
	catch(Exception e){
		out.println(e);
		out.println("Algo falló al guardar! intenta de nuevo");
	}
	response.sendRedirect("Cpnexion.jsp"); %>
</body>
</html>