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
				int bd=Integer.parseInt(request.getParameter("bd_marks"));
				int ai=Integer.parseInt(request.getParameter("ai_marks"));
				int j2ee=Integer.parseInt(request.getParameter("j2ee_marks"));
				int spm=Integer.parseInt(request.getParameter("spm_marks"));
				int java=Integer.parseInt(request.getParameter("java_marks"));
					
				//step1 load the driver class 
				Class.forName("oracle.jdbc.driver.OracleDriver");  
					  
				//step2 create  the connection object  
				Connection con=DriverManager.getConnection(  
				"jdbc:oracle:thin:@localhost:1521:xe","system","12345");  
					  
				//step3 create the statement object  
				PreparedStatement st = con 
	                   .prepareStatement("insert into students_marks values(?, ?,?,?,?,?)"); 
	  
	            // For the first parameter, 
	            // get the data using request object 
	            // sets the data to st pointer 
	            st.setInt(1, sid); 
	  
	            // Same for second parameter 
	            st.setInt(2, bd); 
	            st.setInt(3, ai); 
	            st.setInt(4, j2ee); 
	            st.setInt(5, spm); 
	            st.setInt(6,java); 
	  
				st.executeUpdate();  

				//step5 close the connection object  
				con.close();  
				}catch(Exception e){ System.out.println(e);}  
		%>
</body>
</html>