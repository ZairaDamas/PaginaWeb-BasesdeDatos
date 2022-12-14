package Mis_Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class formulageneral
 */
public class FormulaGeneral extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public  FormulaGeneral() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		double a = Double.parseDouble(request.getParameter("V1"));
		double b = Double.parseDouble(request.getParameter("V2"));
		double c = Double.parseDouble(request.getParameter("V3"));
		double d=0;
		double x1, x2;
		
		d = Math.pow(b,2) - 4*a*c;
		
		PrintWriter out = response.getWriter();
		 	
			out.println("<html>");
		    out.println("<head><title>Formula General</title></head>");
		    out.println("<body>");
		    out.println("<h1>Calcular la Formula General</h1>");
		    out.println("<h2> Ing. Sistemas Computacionales 9no. Semestre</h2>");
		    out.println("<h3>   9no. Semestre</h3>");
		    out.println("<h2> -----------------------------------------------------------------</h2>");
		
		if (d < 0) {
			out.println("<h2> La solucion no es real </h2>");
		} 
		else {
			x1 = (-b + Math.sqrt(d)) / (2 * a);
			x2 = (-b - Math.sqrt(d)) / (2 * a);
			
			out.println("<h2> La solucion es real </h2>");
			out.println("<h3> x1 = " + x1 + "</h3>");
			out.println("<h3> x2 = " + x2 + "</h3>");
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