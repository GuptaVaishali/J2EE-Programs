import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FindArea extends HttpServlet
{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		double a=Double.parseDouble(req.getParameter("a"));
		double b=Double.parseDouble(req.getParameter("b"));
		double c=Double.parseDouble(req.getParameter("c"));
		double s=(a+b+c)/2.0;
		double area=Math.sqrt(s*(s-a)*(s-b)*(s-c));
		PrintWriter ps=res.getWriter();
		res.setContentType("text/html");
		ps.println("<h1>"+area+"</h1>");
		ps.close();
	}
}
