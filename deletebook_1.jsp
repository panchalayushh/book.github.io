<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
</head>
<body>
<% 
try
{
	Connection con=null;
	PreparedStatement stmt=null;
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
String id=request.getParameter("Book_id");
stmt=con.prepareStatement("delete from book1 where Book_id=?");
stmt.setString(1,id );
stmt.executeUpdate();
System.out.println("record deleted succesfully");
stmt.close();
con.close();
}
catch(Exception e)
{
System.out.println(e);
}%>
</body>
</html>