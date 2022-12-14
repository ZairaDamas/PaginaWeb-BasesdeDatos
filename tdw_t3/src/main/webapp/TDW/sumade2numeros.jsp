<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suma2numeros</title>
<link rel="stylesheet" media="all" href="style.css" />
</head>
<style>
	body {
		background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
	}
	.contenedor {
	    width: 500px;
		height: 280px;
		background: #4B112B;
		padding: 30px;
		margin: auto;
		margin-top: 220px;
		border-radius: 4px;
		font-family: 'calibri';
		color: white;
		box-shadow: 7px 13px 37px #000;
	}
	.titulo {
	    color: #fff;
	    font-size: 30px;
	    text-align: center;
	    margin-bottom: 20px;
	}
	.text{
		width: 200px;
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
	.cont{
		display:flex;
	  	align-items: center;
	  	justify-content:center;
	}
</style>
<body>
<div name="fonndo">
	<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>
</div>
<section class="contenedor">
<h3 class="titulo">Suma</h3>
<h2 class="titulo">Ingresa los valores</h2>
<form action = "suma2numeross" class = "form" method = "POST">
 <input class="text"type="number" id="v1" placeholder="valor1" name="v1">
 <input class="text"type="number" id="v2" placeholder="valor2" name="v2">
 <!--
 <button onclick="obtenerSuma()">Calcular suma</button>
   -->
   <section class="cont">
   <button class="button">Suma</button>
	 <br><br>
	 <div id="sumaResultado">
	 </div>
	 <section>
	 </section>

 </form>
</body>
</html>