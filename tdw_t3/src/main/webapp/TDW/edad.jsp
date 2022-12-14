=<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabla</title>
<link rel="stylesheet" href="CSS/Edad.css">
<style>
	
	body {
	  background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
	}
	<!-- /*FORMATO DEL FORMULARIO*/ -->
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
	/*Caracteristicas generales del contenido*/
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
</head>

<body>
<!-- <iframe id="menu" title="Inline Frame Example" src="http://localhost:8080/tdw_t1/TDW/menu.jsp"></iframe> -->
	
<section class="cont">
	<h2 align="center"> CALCULA TU EDAD</h2>
	<!--   <form action= "edad.jsp" method= "POST">-->
	<div class="contenedor">
	  
	  <input class="text"type="text"  id="name" name="nombre" placeholder="Ingresa tu Nombre">
	</div>
	<div class="contenedor">
	  <input class="text"type="text"  id="year" name="year" placeholder="Año de nacimiento">
	  </div>
	  <div class="contenedor">
  		<button class="button" type ="submit" name = "btn_calcular"  onclick="obteneredad()">Calcular</button>
  		</div>
  		<h3 align="center">TU EDAD ES:</h3>
		<h3 align="center" id="resultado"></h3>
  	  
	<!--  </form>-->
</section>
	

<script>
  function obteneredad(){
   var resultado = document.getElementById("resultado");
   var year_nac = parseInt(document.getElementById("year").value);
   var edad_aprox = 2022-year_nac;

   resultado.innerHTML = "" + edad_aprox;
  }
 </script>
 
	
<script type="text/javascript">
		window.addEventListener("scroll", function(){
			var header = document.querySelector("header");
			header.classList.toggle("abajo",window.scrollY>0);
		})

	</script>
	
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init({
			duration: 1000,
			once: true
		});
	</script>

</body>
</html>
<%


%>
	