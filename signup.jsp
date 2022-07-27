<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUP</title>
</head>
<body>
<%

	 try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
	 String que="insert into data values (?,?,?,?)";		
	 String username = request.getParameter("username");
	 String email= request.getParameter("email");
	 String password= request.getParameter("password");
 	 String mobile = request.getParameter("mobile");
		
	
		PreparedStatement p = con.prepareStatement(que);
		p.setString(1,username);
		p.setString(2,email);
		p.setString(3,password);
		p.setString(4,mobile);
		
		p.executeUpdate();
		out.println("<h1>Values Added successfully!!<br>");
		out.println("<a href='index_2.jsp'>Logout</a>");
		p.close();
		con.close();
		
}
catch(Exception e) {
System.out.println("Exception => "+e);
}
%>
</body>
</html>