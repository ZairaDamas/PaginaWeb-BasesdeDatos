<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert en DB</title>
<link rel="stylesheet" media="all" href="./CSS/estilo2.css">
</head>
<body>
	<form action="insertDB_result.jsp" method="post" class="form">
		<h2> Insert en DB MySql </h2>
		<p type="Id Cuenta:">
			<input type="text" name="id_cuenta" required>
		</p>
		<br>
		<p type="Nombre del Titular:">
			<input type="text" name="nombre" required>
		</p>
		<br>
		<p type="Saldo:">
			<input type="text" name="saldo" required>
		</p>
		<br>
		<table class="default" WIDTH="300">
  			<tr>
  				<td style="text-align: center"><button>Cancelar</button></td>
    			<td style="text-align: center"><button>Guardar</button></td>
  			</tr>
		<div>					
		    <span class="fa fa-phone"></span>
		    Práctica desarrollada por:
		    <span class="fa fa-envelope-o"></span>
		    Ing. Dulce Maria Romero Garcia
  		</div>
	</form>
</body>
</html>