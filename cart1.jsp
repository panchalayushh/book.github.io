<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
<link rel="stylesheet" href="cart_css.css">
</head>
<body>
	<%
	try{
	int total = 0;
	String QUERY = "SELECT Book_name,Price FROM book1 ";
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "password");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(QUERY);
    out.println("<html>");
	out.println("<head>");
	out.println("</head>");
	out.println("<body>");
	out.println("<br><br><center><table border=\"1\"></center>");
	out.println("<tr>");
	out.println("<th><font size=\"5\">Book Name&emsp;<br></font></th>");
	out.println("<th><font size=\"5\">Price<br></th></font>");
	out.println("</tr>");
	
    while(rs.next()){
        //Display values
    	out.println("<tr>");
		out.println("<th>"+rs.getString(1)+"</th>");
		out.println("<th>"+rs.getInt(2)+"</th>");
		out.println("</tr>");
    }
    out.println("</table>");
	out.println("</body>");
	out.println("</html>");
    out.println("<br>");
    out.println("<hr width=\"35%\" size=\"1\"><br>");
    rs = stmt.executeQuery("SELECT SUM(Price) from book1");
    while(rs.next()){
        //Display values
        int c = rs.getInt(1);
        total = total + c;
    }
    out.print("<center><h2><font size=\"5\">"+"Total Price : "+total+"</font></h2></center><br>");
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
	<form><center><script src="https://checkout.razorpay.com/v1/payment-button.js" data-payment_button_id="pl_JRrPyliheCirW2" async> </center></script> </form> 	
</body>
</html>