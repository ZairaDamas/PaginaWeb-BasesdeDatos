<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="login5.css" type="text/css">

<title>Login</title>
<style>
.button2{
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
	}
	.button2:hover {
	    background-color: white; 
	    color: black;
	}
</style>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/consultas","root","");
//resp = "Conexión Establecida Correctamente.";
%>
  <div class="container-form sign-up">
        <div class="welcome-back">
            <div class="message">
                <h2>Bienvenido</h2>
                <p>Si ya tienes una cuenta por favor inicia sesion aqui</p>
                <button class="sign-up-btn">Iniciar Sesion</button>
            </div>
        </div>
        <form action="" method="post" class="formulario">
            <h2 class="create-account">Crear una cuenta</h2>
            <img src="https://www.eysmunicipales.es/static/media/images/icons/ic-usuario-registro.png" width="100px">
            <input type="text" name="txtnom" placeholder="Nombre" required>
            <input type="text" name="txtape" placeholder="Apellido" required>
            <input type="text" name="txtcor"placeholder="Email" required>
            <input type="password" name="txtcont"placeholder="Contraseña" required>
            <input name="registrar" type="submit" value="Registrarse">
            <%
				
			    
			    PreparedStatement ps;
            	ResultSet rs;
			    String nom,ape,cor,cont;
			    nom=request.getParameter("txtnom");
			    ape=request.getParameter("txtape");
			    cor=request.getParameter("txtcor");
			    cont=request.getParameter("txtcont");
			    if(nom!=null && ape!=null && cor!=null && cont!=null){
			    	ps=con.prepareStatement("INSERT into consultar(nombre,apellido,correo,contraseña)values('"+nom+"','"+ape+"','"+cor+"','"+cont+"')");
			    	ps.executeUpdate();
			    	response.sendRedirect("Cat.jsp");
			    }
			%>
            
            
        </form>
    </div>
    
    <div class="container-form sign-in">
        <form action="session.jsp" method="post" class="formulario">
            <h2 class="create-account">Iniciar Sesion</h2>
            <img src="https://cdn-icons-png.flaticon.com/512/1177/1177527.png" width="100px">
          	<p></p>
            <input name="txtcorreo" type="email" placeholder="Email" required>
            <input name="txtcontraseña" type="password" placeholder="Contraseña" required>
        
            <a class="button2" href="Cat.jsp">Ingresar</a>
       
        </form>
        <div class="welcome-back">
            <div class="message">
                <h2>Bienvenido de nuevo</h2>
                <p>Si aun no tienes una cuenta por favor registrese aqui</p>
                <button class="sign-in-btn">Registrarse</button>
            </div>
        </div>
    </div>
    <script src="login55.js"></script>
    <script>

    }
    </script>
</body>
</html>

