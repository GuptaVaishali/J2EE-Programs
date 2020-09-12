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
					String name=request.getParameter("sname");
					String gen=request.getParameter("gen");
					String dob=request.getParameter("dob");
					String email=request.getParameter("email");
					int mobileno=Integer.parseInt(request.getParameter("mobileno"));
					String address=request.getParameter("address");
					
					//step1 load the driver class 
					Class.forName("oracle.jdbc.driver.OracleDriver");  
					  
					//step2 create  the connection object  
					Connection con=DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","system","12345");  
					  
				/*	//step3 create the statement object  
					Statement stmt= con.createStatement();  
					  
					//step4 execute query 
				
					String sql="insert into student_personal_info values (sid, name , gen ,dob,email,mobileno,address);";
					System.out.println(sql);
					out.println("inserted sucessfully");
					stmt.executeUpdate(sql);   */
				PreparedStatement st = con 
	                   .prepareStatement("insert into student_personal_info values(?, ?,?,?,?,?,?)"); 
	  
	            // For the first parameter, 
	            // get the data using request object 
	            // sets the data to st pointer 
	            st.setInt(1, sid); 
	  
	            // Same for second parameter 
	            st.setString(2, name); 
	            st.setString(3, gen); 
	            st.setString(4, dob); 
	            st.setString(5, email); 
	            st.setInt(6,mobileno); 
	            st.setString(7, address); 
	  
	            // Execute the insert command using executeUpdate() 
	            // to make changes in database 
	            st.executeUpdate(); 
					con.close();  
				}catch(Exception e){ System.out.println(e);}  
				response.sendRedirect("Add_Marks.html");  
		%>
</body>
</html>