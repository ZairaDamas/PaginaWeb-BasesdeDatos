package Mis_Servlets;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
/**
 * Servlet implementation class polindromo
 */
public class polindromo extends HttpServlet {
	private static final long serialVersionUID = 1L;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public polindromo() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		if("POST".equalsIgnoreCase(request.getMethod()))
	    {
	        //define variables
	        String mystring, revstring;
	        Boolean Palindrome;
	        //get the value from text box and convert into float
	        mystring = request.getParameter("pali");
	        //remove the spaces from string
	        mystring = mystring.replace(" ", "");
	        //remove special characters from string
	        mystring = mystring.replaceAll("[^A-Za-z0-9\\-]","");
	        //change all characteres to lowercase
	        mystring = mystring.toLowerCase();
	        //reverse the string
	        revstring = new StringBuilder(mystring).reverse().toString();
	        
	        //check if both the entered string and the reverse string are same
	        Palindrome = new String(mystring).equals(revstring);
	        
	        PrintWriter out = response.getWriter();
	    	out.println("<html>");
			out.println("<head><title><POLINDROMO></title></head>");
			out.println("<body>");
			out.println("<h2> Confirmar si el texto ingresado es un polindromo</h1>");
			out.println("<h2> ISC 9no. Semestre. Oct 2022</h2>");
			out.println("<h2>-----------------------------------------------</h2>");
	    	out.println("<h3>Texto ingresado: </h3>" + mystring);
	        //if yes then palindrom, if no then it is not
	        if(Palindrome){
	        	out.println("<h4>Resultado: </h4>");
	           out.println( "<p> Si es un palindromo</p>");
	           
	        }else{
	           out.println("<h5>Resultado: </h5>");
	           out.println(""+revstring);
	           out.println("<p>NO es un palindromo</p>");
	        }
	    }
		}
	        
/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
