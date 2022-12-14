<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>j</title>
	<link rel="stylesheet" href="CSS/MenuCat.css">
	<style>
		*{
			margin: 0;
			padding: 0;
		}
		/*agregamos la transicion efecto scroll*/
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
		header.abajo{
			background: #fff;
			padding: 15px 20px;
		}
		header .logo{
			position: relative;
			color: #fff;
			font-weight: bold;
			font-size: 2em;
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
			}
		/*fondo, no necesario*/
		.nav li a:hover {
			background-color:#434343;
			padding:5px 7px;
		}
		/*ordena el menu para que sea desplegable*/
		.nav li ul {
			display:none;
			position:absolute;
			min-width:140px;
		}
		/*desplega al pasar el cursos*/
		.nav li:hover > ul {
				display:block;
				
			}
		/*hace que el submenu2 se desplegue abajo del otro, sin el aparece al costado 
			a la misma altura ue submenu1*/
		.nav li ul li {
			position:relative;
			
		}
		/*de la mano con el anterior, sin el aparece abajo de submenu1*/
		.nav li ul li ul {
			right:-140px;
			top:0px;
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
</head>
<body>
	<header>
		<a href="#" class="logo">MATE FÁCIL</a>
		<nav>
			<ul class="nav">
				<li><a href="#">Inicio</a></li>
				<li><a href="#">Programas</a>
							<ul>
								<li><a href="TDW/area.jsp">Calcular Área</a></li>
								<li><a href="TDW/edad.jsp">Calcular Edad</a></li>
								<li><a href="TDW/vocales.jsp">Calcular Vocales</a></li>
								<li><a href="">Servlets</a>
									<ul>
										<li><a href="">Submenu1</a></li>
										<li><a href="">Submenu2</a></li>
										<li><a href="">Submenu3</a></li>
										<li><a href="">Submenu4</a></li>
									</ul>
								</li>
							</ul>
				<li><a href="acercade.jsp">Acerca de</a></li>
				<li><a href="#">Salir</a></li>
			</ul>
		</nav>
	</header>
	<section class="zona1"></section>
	<main>
        <section class="contenedor sobre-nosotros">
            <h2 class="titulo">Hacemos tus calculos fáciles</h2>
            <div class="contenedor-sobre-nosotros">
                <img src="img1/ilustracion2.svg" alt="" class="imagen-about-us">
                <div class="contenido-textos">
                    <h3><span>1</span>Los mejores productos</h3>
                    <p>Información sobre nuestra página</p>
                    <h3><span>2</span>Te ofrecemos</h3>
                    <p>Aquí va lo que ofrecemos</p>
                </div>
            </div>
        </section>
        <section class="portafolio">
            <div class="contenedor">
                <h2 class="titulo">Programas</h2>
                <div class="galeria-port">
                    <div class="imagen-port">
                        <img src="Imagenes/EDAD.jpg" alt="">
                        <div class="hover-galeria">
                            <img src="img1/icono1.png" alt="">
                            <p>Calcular edad</p>
                        </div>
                    </div>
                    <div class="imagen-port">
                        <img src="Imagenes/area.jpg" alt="">
                        <div class="hover-galeria">
                            <img src="img1/icono1.png" alt="">
                            <p>Calcular área</p>
                        </div>
                    </div>
                    <div class="imagen-port">
                        <img src="Imagenes/vocales.jpg" alt="">
                        <div class="hover-galeria">
                            <img src="img1/icono1.png" alt="">
                            <p>Cuenta vocales</p>
                        </div>
                    </div>
                     <div class="imagen-port">
                        <img src="Imagenes/servlet.png" alt="">
                        <div class="hover-galeria">
                            <img src="img1/icono1.png" alt="">
                            <p>Servlets de JAVA</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        <section class="clientes contenedor">
            <h2 class="titulo">Acerca de los desarrolladores</h2>
            <div class="cards">
                <div class="card">
                    <img src="img1/face1.jpg" alt="">
                    <div class="contenido-texto-card">
                        <h4>Zaira Regalado Damas</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, sapiente!</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img1/face2.jpg" alt="">
                    <div class="contenido-texto-card">
                        <h4>Dulce Romero García</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, sapiente!</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="about-services">
            <div class="contenedor">
                <h2 class="titulo">Nuestros servicios</h2>
                <div class="servicio-cont">
                    <div class="servicio-ind">
                        <img src="img1/ilustracion1.svg" alt="">
                        <h3>Análisis de Dátos</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, qui?</p>
                    </div>
                    <div class="servicio-ind">
                        <img src="img1/ilustracion4.svg" alt="">
                        <h3>Gestión de Proyectos</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, qui?</p>
                    </div>
                    <div class="servicio-ind">
                        <img src="img1/ilustracion3.svg" alt="">
                        <h3>Desarrollo Web</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, qui?</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="contenedor-footer">
            <div class="content-foo">
                <h4>Phone</h4>
                <p>8296312</p>
            </div>
            <div class="content-foo">
                <h4>Email</h4>
                <p>8296312</p>
            </div>
            <div class="content-foo">
                <h4>Location</h4>
                <p>8296312</p>
            </div>
        </div>
        <h2 class="titulo-final">&copy; ZAI DUL | SIMON</h2>
    </footer>
</body>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init({
			duration: 1000,
			once: true
		});
	</script>
	<script type="text/javascript">
		window.addEventListener("scroll", function(){
			var header = document.querySelector("header");
			header.classList.toggle("abajo",window.scrollY>0);
		})
	</script>
</body>
</html>