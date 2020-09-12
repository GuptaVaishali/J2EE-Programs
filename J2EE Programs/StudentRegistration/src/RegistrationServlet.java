import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class RegistrationServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		String fname=req.getParameter("fname");
		String mname=req.getParameter("mname");
		String lname=req.getParameter("lname");
		String fathername=req.getParameter("fathername");
		String dob=req.getParameter("dob");
		String gen=req.getParameter("gen");
		String mobile=req.getParameter("mobileno");
		String email=req.getParameter("email");
		String address=req.getParameter("address");
		
		String school_10=req.getParameter("10_school_name");
		String board_10=req.getParameter("10_board");
		String per_10=req.getParameter("10_per");
		String passyear_10=req.getParameter("10_passyear");
		String school_12=req.getParameter("12_school_name");
		String board_12=req.getParameter("12_board");
		String per_12=req.getParameter("12_per");
		String passyear_12=req.getParameter("12_passyear");
		String gr_school=req.getParameter("gr_school_name");
		String gr_board=req.getParameter("gr_board");
		String gr_per=req.getParameter("gr_per");
		String gr_passyear=req.getParameter("gr_passyear");
		String pg_school=req.getParameter("pg_school_name");
		String pg_board=req.getParameter("pg_board");
		String pg_per=req.getParameter("pg_per");
		String pg_passyear=req.getParameter("pg_passyear");
		
		String comp_name=req.getParameter("company");
		String duration=req.getParameter("duration");
		String designation=req.getParameter("designation");
		String description=req.getParameter("description");
		
		
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<h2>"+"Student Registration Form"+"</h2>");
		
		out.println("<html><body><table border='1'>"
					+"<tr><th>"+"Personal Details"+"</th></tr>"
					+"<tr>"+"<td>"+"Name: "+"</td>"+"<td>"+fname+" "+mname+" "+lname+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Father Name: "+"</td>"+"<td>"+fathername+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Date Of Birth: "+"</td>"+"<td>"+dob+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Gender: "+"</td>"+"<td>"+gen+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Mobile No.: " +"</td>"+"<td>"+mobile+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Email Id: "+"</td>"+"<td>"+email+"</td>"+"</tr>" 
					+"<tr>"+"<td>"+"Address: "+"</td>"+"<td>"+address+"</td>"+"</tr>" 
				
					+"<tr>"+"<th align = \"center\">"+"Academic Details"+"</th>"+"</tr>"
					+"<tr>"+"<th>"+"Examination passed"+"</th>"
					+"<th>"+"Name Of School/College"+"</th>"
					+"<th>"+"Board/University"+"</th>"+
					"<th>"+"Percentage"+"</th>"+
					"<th>"+"Year Of Passing"+"</th>"+"</tr>"
					
					+"<tr>"+"<td>"+"10th standard"+"</td>"
					+"<td>"+school_10+"</td>"
					+"<td>"+board_10+"</td>"
					+"<td>"+per_10+"</td>"
					+"<td>"+passyear_10+"</td>"+"</tr>"
					
					+"<tr>"+"<td>"+"12th standard"+"</td>"
					+"<td>"+school_12+"</td>"
					+"<td>"+board_12+"</td>"
					+"<td>"+per_12+"</td>"
					+"<td>"+passyear_12+"</td>"+"</tr>"
					
					+"<tr>"+"<td>"+"Graduation"+"</td>"
					+"<td>"+gr_school+"</td>"
					+"<td>"+gr_board+"</td>"
					+"<td>"+gr_per+"</td>"
					+"<td>"+gr_passyear+"</td>"+"</tr>"
					
					+"<tr>"+"<td>"+"Post Graduation"+"</td>"
					+"<td>"+pg_school+"</td>"
					+"<td>"+pg_board+"</td>"
					+"<td>"+pg_per+"</td>"
					+"<td>"+pg_passyear+"</td>"+"</tr>"
					
					+"<tr><th>"+"Work Experience" + "</th></tr>"
					+"<tr>"+"<td>"+"Company Name:"+"</td>"
					+"<td>"+comp_name+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Duration:"+"</td>"
					+"<td>"+duration+" Years"+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Designation:"+"</td>"
					+"<td>"+designation+"</td>"+"</tr>"
					+"<tr>"+"<td>"+"Description:"+"</td>"
					+"<td>"+description+"</td>"+"</tr>"
					+"</table></body></html>");
		
		
	}
}
