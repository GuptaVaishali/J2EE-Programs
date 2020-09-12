<html>
	<head>
		<title>Display_Marks</title>
	</head>
	<body>
	<%@ page import="java.sql.*" %>  
		<%
				try{  
					
					//step1 load the driver class 
					int reg_no=Integer.parseInt(request.getParameter("reg_no"));
					Class.forName("oracle.jdbc.driver.OracleDriver");  
					  
					//step2 create  the connection object  
					Connection con=DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","system","12345");  
					  
					//step3 create the statement object  
					Statement stmt= con.createStatement();  
					  
					//step4 execute query  
					ResultSet rs=stmt.executeQuery("select * from student_marks where registration_no=" +reg_no); 
					String sql="insert into student_marks values (9,98)";
					stmt.executeUpdate(sql);
					while(rs.next())  
						out.println(rs.getInt(2));  
					  
					//step5 close the connection object  
					con.close();  
				}catch(Exception e){ System.out.println(e);}  
		%>
	</body>
</html>