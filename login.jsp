<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.sql.*" %>
    <h1><b>
 <%
 try{
	 String URL="jdbc:mysql://localhost:3306/project";
	 String root="root";
	 String passwd="password";
	 String username = request.getParameter("username");
	 String password = request.getParameter("password");
	 Class.forName("com.mysql.cj.jdbc.Driver"); 
	 Connection conn = DriverManager.getConnection(URL,root,passwd);
	 PreparedStatement pst = conn.prepareStatement("Select username ,password from data where username=? and password=?");
	 pst.setString(1, username);
	 pst.setString(2, password);
	 ResultSet rs = pst.executeQuery();
if(rs.next()){
RequestDispatcher rd = request.getRequestDispatcher("index_2.jsp");
rd.forward(request,response);
}
else{
out.println("pls try with correct email and password");

}}
catch(Exception e){
out.println("Something went wrong, Please try again");
}
%>