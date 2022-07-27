<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Added</title>
</head>
<body>
<%
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
String id= request.getParameter("Book_name");

//PreparedStatement ps = con.prepareStatement("insert into cart(name,actor,actress,director,releaseDate,ratingPoint) values (?,?,?,?,?,?)");
PreparedStatement ps = con.prepareStatement("select * from book where Book_name=? ");
//PreparedStatement ps = con.prepareStatement("insert into cart where id=? ");

ps.setString(1, id);

ResultSet rs=ps.executeQuery();
out.println("<html><center><body ><table  border=1><tr><td>book name</td><td>author name</td><td>publish date</td><td>price</td><td>id</td></tr></center>");
while(rs.next())
{
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
}
out.println("</table></body></html>");
out.println("Items added");
ps.executeUpdate();
}


catch (Exception e)
{

}

%>
</body>
</html>