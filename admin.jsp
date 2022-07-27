<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Searched Book</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
String Name = request.getParameter("Name");
String Password = request.getParameter("Password");
PreparedStatement ps = con.prepareStatement("select * from book1");
ResultSet rs=ps.executeQuery();
%>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Book ID</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author Name</th>
      <th scope="col">Price</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <form action="approval.jsp">
  <tbody>
  <%
  while(rs.next())
{
	  
	  String Book=rs.getString(1);
	  out.println("<tr>");
		out.println("<td>");
		out.println(rs.getString(1));
		out.println("</td>");
		out.println("<input type=\"hidden\" name=\"Bookid\" value=11>");
		out.println("<td>");
		out.println(rs.getString(2));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString(3));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString(5));
		out.println("</td>");
		 out.println("<td>");
		 out.println("<button type=\"submit\" class=\"btn btn-success\">Approval</button>");
		 out.println("</td>");
		 out.println("</form>");
		 out.println("<form action=\"deny.jsp\">");
		 out.println("<td>");
		 out.println("<button type=\"submit\" class=\"btn btn-danger\">Denial</button>");
		 out.println("</td>");
		 out.println("<input type=\"hidden\" name=\"Bookid1\" value=11>");
	     out.println("</tr>");
	     out.println("</form>");
	 
	 
}%>
</tbody>
</table>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>
