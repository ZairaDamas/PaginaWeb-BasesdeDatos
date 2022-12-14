<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" media="all" href="style.css" />
</head>
<style>

.cont {
	  width: 370px;
	  height: 450px;
	  background: #24303c;
	  padding: 20px;
	  margin: auto;
	  margin-top: 100px;
	  border-radius: 4px;
	  font: small-caps 100%/200% serif;
	  color: white;
	  box-shadow: 7px 13px 37px #000;
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
	    border-radius: 4px;
	    margin-top: 20px;
	    
	}
	.button:hover {
	    background-color: white; 
	    color: black;
	}
	.text{
		width: 260px;
		height: 20px;
		text-align: center;
		border-radius: 4px;
		margin-left: 20px;
		margin-right: 20px;
		margin-bottom: 0px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 15px;
		color: black;
		position: relative;
		display: flex;
		justify-content: center;
	}
</style>
<body>
	<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>
	
<section class = "cont">

<div class="contenedor">
	<div class="formulario">
		<form action="supermercado.jsp" method="get">
		<h1 class="contenedor">Supermercado</h1>
		Id <input class = "text" type="text"  name="id">
		Nombre <input class = "text" type="text" name="nombre">
		Costo_Mercado <input class = "text" type="text" name="costo">
		<p>Tiene Descuento</p>
		<input  type="radio" name="myradio" value="si" id="si" checked onclick="activarcaja()"> Si
		<input type="radio" name="myradio" value="no" id="no" onclick="desactivarcaja()"> No
		<input class = "text" type="text" name="descuento" id="caja">
		<div class = "contenedor">
		<input class = "button" type="submit" value="entrar" >
		</div>
		</form>
		
	</div>	
</div>
</section>
<script src="tienda.js"></script>
</body>
</html>