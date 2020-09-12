<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
		String admin_user=request.getParameter("admin_username");
		String password=request.getParameter("password");
		if(admin_user.equals("Admin") && password.equals("12345"))
		{
			out.println("login Successful");
			response.sendRedirect("Add_student_pinfo.html");  
		}
		else
		{
			out.println("Wrong username or password");
		}
		
%>
</body>
</html>