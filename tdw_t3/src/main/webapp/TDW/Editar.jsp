<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar</title>
<link rel="stylesheet" media="all" href="style2.css" />
</head>
<style>
body {
	background-image: url(https://marketplace.canva.com/EAEK4dC2olw/1/0/1600w/canva-arco%C3%ADris-gradiente-rosa-y-naranja-fondo-virtual-para-zoom-c3PYha1JI9M.jpg);
	}
<!-- /*FORMATO DEL FORMULARIO*/ -->
	.cont {
	  width: 370px;
	  height: 500px;
	  background: #24303c;
	  padding: 10px;
	  margin: auto;
	  margin-top: 100px;
	  border-radius: 4px;
	  font: small-caps 100%/200% serif;
	  color: white;
	  box-shadow: 7px 13px 37px #000;
	}

	/*Caracteristicas generales del contenido*/
	.text{
		width: 260px;
		height: 20px;
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
	}
	.button:hover {
	    background-color: white; 
	    color: black;
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
	}
	.button2:hover {
	    background-color: white; 
	    color: black;
	}
	.titulo {
		text-align: center;
		width: 100%;
		font-family: 'calibri';
		font-size: 25px;
		color: white;
		margin: auto;
	}
	.boton{
		margin-left: 100px;
        align-items: center;
		
	}
	.contenedor{
		display:flex;
	  	align-items: center;
	  	justify-content:center;
	}
	</style>
  <%
 	String ids =request.getParameter("id"); 
	try{
	      //CONECTANOD A LA BASE DE DATOS:
	      Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/consultas","root","");
	       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
	       PreparedStatement pst = con.prepareStatement("SELECT * from consultar where Id_Usuario=?");
	       pst.setString(1, ids);
	       
	       ResultSet rs=pst.executeQuery();
	%>
	<%
	 while(rs.next())
	 {
		String id = rs.getString(1);
		String nombreM = rs.getString(2);
		String apellidoM = rs.getString(3);
		String correoM = rs.getString(4);
		String contraseñaM = rs.getString(5);
	                   
	%>
     <section class="cont">
     
         <h1 class="contenedor">Modificar Registro</h1>
         <hr>
         <div class="contenedor">
         <form action="EditarConsulta.jsp?id=<%=ids%>" method="post">
              Nombres:
             <input  type="text" name="txtnom" class="text" value="<%=nombreM%>" required/>           
             Apellido:
             <input type="text" name="txtape" class="text" value="<%=apellidoM%>" required/>
             Correo:
             <input type="text" name="txtcor" class="text" value="<%=correoM%>" required/>
             Contraseña:
             <input type="text" name="txtcon" class="text" value="<%=contraseñaM%>" required/>
             <section class="contenedor">
             <input class="button" type="submit" value="Guardar"/>
             <a class="button2" href="Cpnexion.jsp">Regresar</a>
             </section>
         </form>
         <%
         }
         %>
         </div>
         </section>             
<body> 
<%
	}
         catch(Exception e){
         	out.println(e);
         	out.println("Algo falló! Porfavor intenta de nuevo");
         }
         %>      
</body>
</html>
