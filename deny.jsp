<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Decline The Book</title>
</head>
<body>
<%
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "password");
RequestDispatcher success = request.getRequestDispatcher("admin.jsp");
String selectQ = "select Book_id,apr_den_sta from book1";
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
String BID = request.getParameter("Bookid1");
String apr_den = "Decline";
ResultSet rs = stmt.executeQuery(selectQ);
System.out.println(BID);
while(rs.next()) {
if(rs.getString("Book_id").equals(BID))
{
rs.updateString("apr_den_sta",apr_den);
rs.updateRow();
success.forward(request, response);
}
con.close();
out.close();
} 


%>
</body>
</html>