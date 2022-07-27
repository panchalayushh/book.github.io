<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

	 try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
String que="insert into book1 values (?,?,?,?,?,?)";		

String Book_id = request.getParameter("Book_id");
String Book_name = request.getParameter("Book_name");
String Author_name= request.getParameter("Author_name");
String Date= request.getParameter("Date");
String Price = request.getParameter("Price");
		
	
		PreparedStatement p = con.prepareStatement(que);
		p.setString(1,Book_id);
		p.setString(2,Book_name);
		p.setString(3,Author_name);
		p.setString(4,Date);
		p.setString(5,Price);
		p.setString(6,null);
		
		p.executeUpdate();
		out.println("<script>alert('Your Book is now Published')</script>");
		p.close();
		con.close();
		
}
catch(Exception e) {
System.out.println("Exception => "+e);
}
%>
