<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="Inicio.css">
	<link rel="stylesheet" href="MenuCat.css">
	 <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    
</head>
<style>
	*{
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
	header{
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			display: flex;
			justify-content: space-around;
			transition: 0.7s;
			padding: 30px 20px;
			z-index: 10;
			background-color: rgba(0,0,255,0.2);
			
		}
		header.abajo{
			background: #fff;
			padding: 15px 20px;
		}
		header .logo{
			position: relative;
			color: #fff;
			font-weight: bold;
			font-size: 1.5em;
			letter-spacing: 2px;
			transition: 1.5s;
			text-decoration: none;
		}
		nav{
			display: flex;
			justify-content: center;
			align-items: center;
		}
/*acomodar todo verticalmente*/
		header ul{
			position: relative;
			display: flex;
			justify-content: center;
			align-items: center;
		}
/*quita el modo lista*/
		header ul li{
			list-style: none;
		}
/* separamos las opciones, le damos color y agregamos transición*/
		header ul li a{
			position: relative;
			font-family: helvetica;
			margin: 0 15px;
			text-decoration: none;
			color: #fff;
			letter-spacing: 2px;
			font-weight: 600;
			transition: 0.7s;
		}
		.nav li:hover a {
				background-color:#fff;
				color:#000;
				text-decoration:none;
				padding:10px 12px;
				display:block;
				border-radius: 8px;
			}
		.zona1{
			position: relative;
			width: 100%;
			height: 100vh;
			background: url(Imagenes\fondoT.jpg);
			background: url(https://www.xtrafondos.com/wallpapers/paisaje-de-ciudad-futurista-artwork-4678.jpg);
			background-size: cover;
			background-position: center center;
		}
		header.abajo .logo,
		header.abajo ul li a{
			color: #000;
		}
		
		header{
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			display: flex;
			justify-content: space-around;
			transition: 0.7s;
			padding: 30px 20px;
			z-index: 10;
		}
		
</style>
<body>
<header>
		<a href="#" class="logo">MATE FÁCIL</a>
		<nav>
			<ul class="nav">
				<li><a href="login5.jsp">Ingresar</a></li>
			</ul>
		</nav>
</header>
<section>
<div class="slider">
	
    <ul>
        <li>
        	
            <img src="https://www.xtrafondos.com/descargar.php?id=4926&resolucion=3840x2160">
            <div class="content">
            <h1>Tecnologías & <br><span>Desarrollo <br></span> Web <br></h1>
            <p class="par">Si deseas empezar y desarrollar algo grandioso, no necesitas millones
                     de dólares de capitalización. Necesitas suficiente pizza y Diet Coke en la nevera, una PC barata y trabajo y dedicación para realizar tu idea.</p>
               
     </div>
        </li>
        <li>
            <img src="https://images.unsplash.com/photo-1511447333015-45b65e60f6d5?ixlib=rb-4.0.3&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb">
             <div class="content">
            <h1>Tecnologías & <br><span>Desarrollo <br></span> Web <br></h1>
            <p class="par">Si deseas empezar y desarrollar algo grandioso, no necesitas millones
                     de dólares de capitalización. Necesitas suficiente pizza y Diet Coke en la nevera, una PC barata y trabajo y dedicación para realizar tu idea.</p>
               
     </div>
        </li>
        <li>
            <img src="https://fondosmil.com/fondo/12572.jpg">
			<div class="content">
            <h1>Tecnologías & <br><span>Desarrollo <br></span> Web <br></h1>
            <p class="par">Si deseas empezar y desarrollar algo grandioso, no necesitas millones
                     de dólares de capitalización. Necesitas suficiente pizza y Diet Coke en la nevera, una PC barata y trabajo y dedicación para realizar tu idea.</p>
               
     </div>
        </li>
        <li>
            <img src="https://fondosmil.com/fondo/48688.jpg">
            <div class="content">
            <h1>Tecnologías & <br><span>Desarrollo <br></span> Web <br></h1>
            <p class="par">Si deseas empezar y desarrollar algo grandioso, no necesitas millones de dólares de capitalización. Necesitas suficiente pizza y Diet Coke en la nevera, una PC barata y trabajo y dedicación para realizar tu idea.</p>
               
     </div>

        </li>
    </ul>
</div>
</section>
</body>
</html>