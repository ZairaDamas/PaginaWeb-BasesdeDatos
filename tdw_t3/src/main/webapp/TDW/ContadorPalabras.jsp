<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" media="all" href="style.css" />
<style>
.cont {
	  width: 370px;
	  height: 300px;
	  background: #24303c;
	  padding: 10px;
	  margin: auto;
	  margin-top: 200px;
	  border-radius: 4px;
	  font: small-caps 100%/200% serif;
	  color: white;
	  box-shadow: 7px 13px 37px #000;
	}
	.text{
		width: 340px;
		height: 60px;
		text-align: center;
		border-radius: 4px;
		margin-left: 20px;
		margin-right: 20px;
		margin-bottom: 16px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 15px;
		color: black;
		position: relative;
		display: flex;
		justify-content: center;
	}
		.contenedor{
		text-align: center;
	  	align-items: center;
	  	justify-content:center;
	}
</style>
<script>
function contar() {
palabras = 1;
if (document.data.texto.value.length=="") palabras = 0;
for (i=0;i<document.data.texto.value.length;i++)
{
if ( document.data.texto.value.substring(i,i+1)==" " ) palabras++;
}
document.data.cuenta.value = palabras;
}
</script>
</head>
<body>
	<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>
	
     <section class="cont">
	    <div class = "contenedor">
		<h1 class = "contenedor">Escribe un texto </h1>
		<form name="data">
			<textarea class = "text" name="texto" cols="40" rows="4" onkeyup="contar()" onkeypress="contar()" >
			</textarea><br>
			<input type="Text" name="cuenta" size="3" maxlength="3">
			</div>
		</form>
</body>
</html>