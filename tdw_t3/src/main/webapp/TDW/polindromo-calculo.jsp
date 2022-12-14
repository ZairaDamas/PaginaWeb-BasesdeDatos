<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
 <link rel="stylesheet" media="all" href="style.css" />
   </head>
   <style>
   	body {
	  background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
	}
   
	.cont {
	  width: 500px;
	  height: auto;
	  background: #24303c;
	  padding: 20px;
	  margin: auto;
	  margin-top: 250px;
	  border-radius: 4px;
	  font: small-caps 100%/200% serif;
	  color: white;
	  box-shadow: 7px 13px 37px #000;
	}
	.titulo {
		text-align: center;
		width: 100%;
		font-family: 'calibri';
		font-size: 25px;
		color: white;
	}
	
	.button2 {
	    background-color: red;
	    color: white;
	    padding: 4px 10px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    border: 2px solid red;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	    border-radius: 4px;
	    margin-top: 16px;
	}
	.button2:hover {
	    background-color: white; 
	    color: black;
	}
	.contenedor{
		display:flex;
	  	align-items: center;
	  	justify-content:center;
	}
	.text{
		
		text-align: center;
		border-radius: 4px;
		margin-left: 20px;
		font-family: 'calibri';
		font-size: 15px;
		color: white;
		justify-content: center;
	}
	.text2{
		width: 260px;
		height: 40px;
		text-align: center;
		border-radius: 4px;
		margin-left: 20px;
		margin-right: 20px;
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
 
 <div class="cont">
    	<div class="contenedor">
    		<form action="polindromo" class="form" method="POST">
      			<h1 class="titulo">Comprobar si es un palindromo usando un Servlet</h1>

      			<div class="contenedor">
      				<label for="" class="text">Texto:</label>
        			<input type="text" class="text2" placeholder="Ingresa Texto" name="pali">
        			
      			</div>
				<div class="contenedor">
      			<input type="submit" class="button2" name="btn_calcular" value="calcular">
				</div>
    		</form>
   		</div>
	</div>
 </body>
</html>