<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar</title>
</head>
<body>
<%
	//CONECTANOD A LA BASE DE DATOS:
    Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/consultas","root","");
    //resp = "Conexi�n Establecida Correctamente.";
    out.println("Conexi�n establecida");
    
    PreparedStatement ps;       
    int id=Integer.parseInt(request.getParameter("id"));
    ps=con.prepareStatement("DELETE from consultar where Id_Usuario = "+id);
    ps.executeUpdate();
    response.sendRedirect("Cpnexion.jsp");
%>
		
</body>
</html>