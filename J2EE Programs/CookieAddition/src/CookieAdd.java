import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class CookieAdd extends HttpServlet {
		private static final String Details = null;

		public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
		{
			res.setContentType("text/html");
			PrintWriter out=res.getWriter();
			String user=req.getParameter("user");
			String pass=req.getParameter("pass");
			if(user.equals("vaishali") && pass.equals("12345"))
			{
				Cookie c[]=req.getCookies();
				if(c[0].getValue().equals(user) && c[1].getValue().equals(pass))
					out.println("<h2>"+"Welcome back "+user+"</h2>");
				else
				{
					out.println("<h2>"+"Welcome "+user+"</h2>");
					Cookie c1=new Cookie("user",user);
					Cookie c2=new Cookie("pass",pass);
					res.addCookie(c1);
					res.addCookie(c2);
					out.println("<a href='details'>See Details</a>");
				}
			}
			else
				out.println("<h2>"+"Login Denied"+"</h2>");
		}
}
