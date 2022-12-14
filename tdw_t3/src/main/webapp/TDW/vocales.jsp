<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>	
<style >
	body {
  		width: auto;
	  	height: auto;
  		background-image: 
 url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
    }
		<!-- /*FORMATO DEL FORMULARIO*/ -->
	.cont {
	  width: 500px;
	  height: 500px;
	  background: #4B112B;
	  padding: 30px;
	  margin: auto;
	  margin-top: 40px;
	  border-radius: 4px;
	  font-family: 'calibri';
	  color: white;
	  box-shadow: 7px 13px 37px #000;
	  
	}
	.cont  h4 {
	  font-size: 22px;
	  margin-bottom: 10px;
	}
	.h1{
	    font-size: 30px;
	    font-weight: 300;
	    color:#fff;
	    text-align: center;
	}
	.h2{
	    font-size: 20px;
	    font-weight: 300;
	    color:#fff;
	    text-align: center;
	}
	.text{
		width: 480px;
	    height: 100px;
	}
	
	.button {
	    background-color: #3431E0;
	    color: #fff;
	    padding: 15px 32px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    border: 2px solid #3431E0;
	    webkit-transition-duration: 0.4s;
	    transition-duration: 0.4s;
	  	
	}
	.button:hover { 
		background-color: #fff;
	    color: black;
	    border: 2px solid #3431E0;
	}
	.centrar{
		display:flex;
	  	align-items: center;
	  	justify-content:center;
	  	padding: 10px;
	}
	.resultados{
		font-family: 'calibri';
		font-size: 18px;
		color: white;
	}
	</style>
	
</head>
<body>

<div class="cont">
	
	<h1 class="h1">Contador de Vocales</h1>
	<h2 class="h2" for="texto">Ingresa un texto</h2>
	<div>
		<input class="text"type="text" id="texto"/>
	</div>
	<div class="centrar">
	<button id="ejecutar" class="button">Contar vocales</button>
	</div>
	<div id="resultados">
		<div class="resultados">
			<p>A = <span id="va"></span></p>
		</div>
		<div class="resultados">
			<p>E = <span id="ve"></span></p>
		</div>
		<div class="resultados">
			<p>I = <span id="vi"></span></p>
		</div>
		<div class="resultados">
			<p>O = <span id="vo"></span></p>
		</div>
		<div class="resultados">
			<p>U = <span id="vu"></span></p>
		</div>

	</div>	
	
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script>
//Mi contador de vocales
	var $frase = $('#texto'),
		$cuenta = $('#ejecutar'),
		vocales = 'aeiou';
	$frase.on('keyup', function( evt ){
		if( evt.keyCode =='13' ){
			contarvocales()
		}
	})	

	$cuenta.on('click', contarvocales)

	function contarvocales(){
		var frase = $frase.val().toLowerCase(),
			res = {a:0, e:0, i:0, o:0, u:0},
			letra;

		for (var i=0; i<frase.length; i++){
			letra = frase[i];
			if( vocales.indexOf( letra ) != -1){
				res[letra] += 1;
			}
		}
		for ( var iobjeto in res ){//iterar sobre el objeto res
			console.log( iobjeto, res[ iobjeto ])
			$('#'+'v'+iobjeto).text( res[ iobjeto])
		}
	}

</script>
</body>
</html>