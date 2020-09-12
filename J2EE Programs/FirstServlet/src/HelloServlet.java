import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class HelloServlet extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		PrintWriter ps=res.getWriter();
		res.setContentType("text/html");
		ps.println("<h1>Hello vaishali</h1>");
		ps.close();
	}
}