<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conexi�n a DB</title>
<link rel="stylesheet" media="all" href="estilo1.css">
</head>
<body>
	<form action="resp2DBcnx.jsp" method="post" class="form">
		<h2> Test Conexi�n a DB MySql </h2>
		<p type="Nombre de la DB:">
			<input type="text" name="nombreDB" required>
		</p>
		<br>
		<button>Validar Conexi�n</button>
		<div>			
		    <span class="fa fa-phone"></span>
		    Pr�ctica desarrollada por:
		    <span class="fa fa-envelope-o"></span>
		    Ing. Dulce Maria Romero Garcia
  		</div>
	</form>
</body>
</html>