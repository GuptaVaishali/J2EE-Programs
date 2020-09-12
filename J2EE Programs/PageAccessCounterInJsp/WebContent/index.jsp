
<html>
<head>
	<title>Page Counter</title>
</head>
<body>
	<%
	Integer i=(Integer)application.getAttribute("count");
		if(i==null || i==0)
		{
			i=1;
		}
		else
		{
			i++;
		}
		out.println("U have visited this webpage " + i + " times");
		application.setAttribute("count",i);
%>
</body>
</html>
