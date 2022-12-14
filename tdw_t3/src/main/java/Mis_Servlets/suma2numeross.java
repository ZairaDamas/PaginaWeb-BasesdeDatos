package Mis_Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class suma2numeross
 */
public class suma2numeross extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suma2numeross() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int valor1 = Integer.parseInt(request.getParameter("v1"));
		int valor2 = Integer.parseInt(request.getParameter("v2"));
		int result = valor1 + valor2;
		PrintWriter out = response.getWriter();
		try {
			out.println("<html>");
			out.println("<head><title><SUMAR 2 NUMEROS></title></head>");
			out.println("<body>");
			out.println("<h2> Suma de 2 numeros utilizando un Servlet.</h1>");
			out.println("<h2> ISC 9no. Semestre. Oct 2022</h2>");
			out.println("<h2>-----------------------------------------------</h2>");
			out.println("<h3> valor1:</h3>" + valor1);
			out.println("<h3> valor2:</h3>" + valor2);
			out.println("<h3> Resultado Suma:</h3>" + result);
			out.println("</body>");
			out.println("</html>");
		}
		finally {
			out.close();
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
