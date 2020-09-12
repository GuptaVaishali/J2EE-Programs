<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*" %>  
		<%
				try{  
					int sid=Integer.parseInt(request.getParameter("sid"));
					//step1 load the driver class 
					Class.forName("oracle.jdbc.driver.OracleDriver");  
					  
					//step2 create  the connection object  
					Connection con=DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","system","12345");  
					  
					//step3 create the statement object  
					Statement stmt= con.createStatement();  
					
		%>
					<h2>Jamia Miliia Islamia University</h2>
						<h3>Marksheet</h3>
		<%
					  
					//step4 execute query  
					ResultSet rs=stmt.executeQuery("select * from student_personal_info where student_id ="+ sid);  
					while(rs.next())
					{
		%>
						<b>Student_ID:</b> <%= rs.getInt(1) %> <br>
						<b>Name:</b> <%= rs.getString(2) %> <br>
						<b>Gender:</b><%= rs.getString(3) %> <br>
						<b>Email_ID:</b> <%= rs.getString(5) %> <br>
						<b>Mobile_No:</b><%= rs.getInt(6) %> <br>
						<b>Address:</b> <%= rs.getString(7) %><br><br>
						 
		<% 
				}
		%>
					<table border='1'>
						<tr> 
							<th>Subjects </th>
							<th> Marks </th>
						</tr>
		<% 	
					ResultSet rs1=stmt.executeQuery("select * from students_marks where student_id ="+ sid);
					while(rs1.next())
					{
		%>
					<tr> 
						<td>Big Data </td>
						<td> <%= rs1.getInt(2) %> </td>
					</tr>
					<tr> 
						<td>Artificial Intelligence </td>
						<td> <%= rs1.getInt(3) %> </td>
					</tr>
					<tr> 
						<td>J2EE</td>
						<td> <%= rs1.getInt(4) %> </td>
					</tr>
					<tr> 
						<td>SPM</td>
						<td> <%= rs1.getInt(5) %> </td>
					</tr>
					<tr> 
						<td>Java </td>
						<td> <%= rs1.getInt(6) %> </td>
					</tr>		
		<%
					}
		%>
					</table>
		<%
					con.close();  
				}catch(Exception e){ System.out.println(e);}  
		%>
</body>
</html>