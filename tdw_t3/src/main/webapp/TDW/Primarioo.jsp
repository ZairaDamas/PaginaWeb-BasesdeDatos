<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabla</title>
<link rel="stylesheet" media="all" href="style.css" />
</head>

<style>
	.cont {
	  width: 400px;
	  height: 350px;
	  background: #24303c;
	  padding: 10px;
	  margin: auto;
	  margin-top: 100px;
	  border-radius: 4px;
	  font-family: 'calibri';
	  color: white;
	  box-shadow: 7px 13px 37px #000;
	}
	
	.cont  h4 {
	  font-size: 22px;
	  margin-bottom: 20px;
	  }
	  .text{
		width: 100%;
		background: #24303c;
		padding: 10px;
		border-radius: 4px;
		margin-bottom: 16px;
		border: 1px solid #1f53c5;
		font-family: 'calibri';
		font-size: 18px;
		color: white;
	}
	.contenedor{
		display:flex;
	  	align-items: center;
	  	justify-content:center;
	}
	.button {
	    background-color: white;
	    color: black;
	    padding: 15px 32px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    border-radius: 4px;
	    font-size: 16px;
	    border: 2px solid #4CAF50;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	}
	.button:hover {
	    background-color: #4CAF50; 
	    color: white;
	}
</style>
<body>

<div class="bg"></div>
	<div class="bg bg2"></div>
	<div class="bg bg3"></div>
	
<section class="cont">
<div class="contenedor">
<form action= "Secundario.jsp" method= "POST">
<h2 align="center"> Primarioo</h2>
	<table class="default" align="center">
	 <tr>
	          <td colspan="2" align ="center">Formulario primario</td>
     	 </tr>
    	 <tr>
      		 <td></td>
      	 </tr>
    	 <tr>
    	 
    		<td>Nombre completo:</td>
            <td><input class= "text" type="text" id="name" name="nombre"></td>
 	 	</tr>
  		<tr>

  	        <td>Edad actual:</td>
   			<td><input class= "text" type="text" id="year" name="edad"></td>
 		</tr>
 		<tr>
 			 <td colspan="2" align="center"><button  class= "button" type ="submit" name = "btn_calcular">Enviar Datos</button></td>
 		</tr>
	</table>
</form>
	</div>
</section>
<%
	String send_nombre= request.getParameter("nombre");
    String send_edad= request.getParameter("edad");	
	%>

</body>
</html>
	