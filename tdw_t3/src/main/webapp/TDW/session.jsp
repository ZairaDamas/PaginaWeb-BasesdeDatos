<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 

String ucorreo=String.valueOf(request.getParameter("txtcorreo")); 
if(ucorreo==null){
		%><script type="text/javascript"> window.location.href = "login5.jsp";	</script>  ><%
		}
String ucontraseña= String.valueOf(getMD5(request.getParameter("txtcontraseña"))); 
String vname="";
String vpass="";

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/consultas","root","");
    //resp = "Conexión Establecida Correctamente.";
    out.println("Conexión Establecida Correctamente.");	

		   PreparedStatement ps;
	       ResultSet rs;
	       ps=con.prepareStatement("SELECT * FROM consultar WHERE correo LIKE '%"+ucorreo+"%'");
	       rs=ps.executeQuery();
	       
	       if(rs.next()){
	    	   vpass=String.valueOf(rs.getString("contraseña")).replace(" ","");
	    	   vname=String.valueOf(rs.getString("correo")).replace(" ","");
	    	   if (vname.equals(ucorreo)){
		   			if(vpass.equals(ucontraseña)){
		   				session.setAttribute("sessname",ucorreo);
		   				out.print("Ingresado ");
		   				%><script type="text/javascript"> window.location.href = "Cat.jsp";	</script> ><%
		   				
		   			}
		   			else{
		   				out.print("Contra Error:"+ucontraseña);
		   				%><script type="text/javascript"> window.location.href = "login5.jsp";	</script>  --><%
		   			}		
		   		}else{
		   			out.print("Usuario Error:"+ucorreo+"Usuario Error:"+vname);
		   			%><script type="text/javascript"> window.location.href = "login5.jsp";	</script> --><%
		   		}	
	       }else{
	    	   out.print("consulta:"+ucorreo);
	    		%><script type="text/javascript"> window.location.href = "login5.jsp";	</script>   --><%
	       }
		
	
}
catch(Exception ex){
	out.print("Usuario Error:"+ex);
	%><script type="text/javascript"> window.location.href = "login5.jsp";	</script>   --><%
}
%><%!
public String getMD5(String input) {
    try {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] encBytes = md.digest(input.getBytes());
        BigInteger numero = new BigInteger(1, encBytes);
        String encString = numero.toString(16);
        while (encString.length() < 32) {
            encString = "0" + encString;
        }
        return encString;
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
}


%> 
</body>
</html>