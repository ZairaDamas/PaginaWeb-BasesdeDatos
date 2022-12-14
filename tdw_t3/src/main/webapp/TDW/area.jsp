<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link>
<!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
-->
 <style type="text/css">
 	iframe {
	    width: 100%;
	    height: 80px;
	    position: absolute;
	    margin-top: -100px;
	   /* background-color: rgba(255,255,255,0.5); /*50% de transparencia.*/
	    /*background: #fff;*/
	}
 	body {
	    font-family: 'open sans';
	    background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg)
	}
	 	
 	.contenedor {
	    width: 500px;
		height: 550px;
		background: #4B112B;
		padding: 30px;
		margin: auto;
		margin-top: 100px;
		border-radius: 4px;
		font-family: 'calibri';
		color: white;
		box-shadow: 7px 13px 37px #000;
	}
	.titulo {
	    color: #fff;
	    font-size: 30px;
	    text-align: center;
	    margin-bottom: 60px;
	}
	.contenedor h2{
	    font-size: 30px;
	    font-weight: 300;
	    color:#fff;
	    text-align: center;
	}
	.contenedor h3{
	    font-size: 30px;
	    font-weight: 300;
	    color:#fff;
	    text-align: center;
	}
	.cuadros{
	    width: 48%;
	    justify-content: space-evenly;
	    
	    font-family: 'open sans';
		font-size: 20px;
	}
	.numeros{
		font-family: 'open sans';
		font-size: 30px;
	    text-align: center;
	}
	.imagen{
		width: 200px;
		display: block;
		margin: auto;
        align-items: center;
		
	}
	.fondo{
		width: 100%;
	    height: 600px;
	    /*background: url("https://www.iuaragon.com/wp-content/uploads/2016/06/fondo_triangulos.png");*/
	}
	
 </style>
 
 	
 
</head>
<body>
 	<!--<iframe id="menu" title="Inline Frame Example" src="http://localhost:8080/tdw_t1/TDW/menu.jsp"></iframe>
 	  -->
	
	<section class="contenedor">
            <h1 class="titulo">Área de un triángulo</h1>
                <img class="imagen" src="https://www.pngplay.com/wp-content/uploads/12/Triangle-Background-PNG.png">
				 
                <h2 ><span></span>Ingresa los valores</h2>     
                    <input class="cuadros" type="number" id="base" placeholder="Base">
					<input class="cuadros" type="number" id="altura" placeholder="Altura">
					
					 <br><br>
					 
					 <div class="d-grid gap-2 col-6 mx-auto">
					   <button type="button" class="btn btn-primary" onclick="obtenerArea()">Calcular área</button></div>					 
					 <h3>Área: </h3>
					 <div class="numeros"id="areaResultado"></div>
        </section> 


 <script>
  function obtenerArea(){
   var areaResultado = document.getElementById("areaResultado");
   var b = parseInt(document.getElementById("base").value);
   var h = parseInt(document.getElementById("altura").value);
   var area = (b * h) / 2;

   areaResultado.innerHTML = "" + area;
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