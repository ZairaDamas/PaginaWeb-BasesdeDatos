<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PrimerJavaBean</title>
<link rel="stylesheet" media="all" href="style.css" />
</head>
<style>

.cont {
	  width: 370px;
	  height: 250px;
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
	    margin-top: 15px;
	    
	}
	.button:hover {
	    background-color: white; 
	    color: black;
	}
	.text{
		width: 250px;
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
		
	}
</style>
<body>

	<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>

<section class = "cont">

<div class="contenedor">
	<div class="card">
		<form action="resultado.jsp" method="get">
		Nombre <input class = "text" type="text"  name="nombre">
		<br>
		Edad <input class = "text" type="text" name="edad">
		<br>
		<input  class = "button" type="submit" value="entrar">
		</form>
	</div>	
</div>
</section>
</body>
</html>