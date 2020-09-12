import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DetailsServlet extends HttpServlet {
   
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		Cookie cook[]=req.getCookies();
		PrintWriter out=res.getWriter();
		out.println("UserName: "+cook[0].getValue());
		out.println("Password: "+cook[1].getValue());
		out.close();
	}
}
