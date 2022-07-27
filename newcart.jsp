<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>EasyPharmacy</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<link
	href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@400;700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<style>
body {
	background-color: #eee;
}

</style>
</head>
<body>

	<!--NAVBAR-->
	<br>
	<br>
	<br>
	<br>
	<%
	String username = (String) session.getAttribute("Username");
	%>


	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
	<sql:query dataSource="${con}" var="rs">  
									SELECT * from cart where Username="<%=username%>";  
								</sql:query>
	<%
	int q = 0;
	String name4 = (String) session.getAttribute("Username");
	Connection con4 = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
	PreparedStatement p4 = con4.prepareStatement("select * from cart");
	ResultSet rs4 = p4.executeQuery();
	while (rs4.next()) {
		if (rs4.getString("username").equals(name4)) {
			q = q + rs4.getInt("quan");
		}
	}
	%>


		<section class="h-100 h-custom" style="background-color: #eee;">
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card">
							<div class="card-body p-4">
								<div class="row">

									<div class="col-lg-7">
										<h5 class="mb-3">
											<a href="products.jsp" class="text-body"><i
												class="fas fa-long-arrow-alt-left me-2"></i> Continue
												shopping</a>
										</h5>
										<hr>

										<div
											class="d-flex justify-content-between align-items-center mb-4">
											<div>
												<p class="mb-1">Shopping cart</p>
												<p class="mb-1">
													You have

													<%=q%>
													items in your cart
												</p>
											</div>
										</div>
										<c:forEach var="table" items="${rs.rows}">
											<div class="card mb-3">
												<div class="card-body">
													<div class="d-flex justify-content-between">
														<div class="d-flex flex-row align-items-center">
															<div>
																<%
																String a = (String) session.getAttribute("medi");
																%>
																<img src="images/${table.P_image_name }"
																	class="img-fluid rounded-3" alt="Shopping item"
																	style="width: 65px;">
															</div>
															<div class="ms-3">
																<h5>${table.P_Name}(Qty:${table.quan})</h5>
															</div>
														</div>
														<div class="d-flex flex-row align-items-center">
															<div style="width: 50px;">
																<h5 class="fw-normal mb-0"></h5>
															</div>
															<div style="width: 80px;">
																<h5 class="mb-0">&#8377;&nbsp;${(table.P_price)*(table.quan)}</h5>
															</div>
															<button type="button" class="btn btn-primary"
																data-mdb-toggle="modal" data-mdb-target="#exampleModal"
																style="background: #3bb896 !important;">
																<a href="#!" style="color: #fff;"><i
																	class="fas fa-trash-alt"></i></a>
																<!-- Button trigger modal -->

															</button>

															<!-- Modal -->
															<form action="delete_prod_cart.jsp" method="post">
																<div class="modal fade" id="exampleModal" tabindex="-1"
																	aria-labelledby="exampleModalLabel" aria-hidden="true">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h5 class="modal-title" id="exampleModalLabel">Are
																					you sure you want to delete?</h5>
																				<input type="hidden" name="pname"
																					value="${table.P_Name}"> <input
																					type="hidden" name="uname" value="<%=name4%>">

																				<button type="button" class="btn-close"
																					data-mdb-dismiss="modal" aria-label="Close"></button>
																			</div>
																			<div class="modal-footer">
																				<button type="button" class="btn "
																					data-mdb-dismiss="modal">Cancel</button>
																				<button type="submit" class="btn btn-danger">Delete
																				</button>
																			</div>
																		</div>
																	</div>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>

										</c:forEach>



									</div>
									<div class="col-lg-5">

										<div class="card bg-primary text-white rounded-3">
											<form action="cart_wallet_logic.jsp" method="post"
												autocomplete="off">
												<div class="card-body" style="background: #38a688;">
													<div
														class="d-flex justify-content-between align-items-center mb-4">
														<h3 class="mb-0">EasyPay</h3>
													</div>

													<p class="small mb-2">Pay Form Our EasyPay Wallet</p>


													<div class="form-outline form-white mb-4">
														<input type="text" id="typeName"
															class="form-control form-control-lg"
															placeholder="Enter Name" name="uname" required /> <label
															class="form-label" for="typeName">Account
															Holder's Name</label>
													</div>

													<div class="form-outline form-white mb-4">
														<input type="password" id="typeText"
															class="form-control form-control-lg"
															placeholder="Enter Password" name="pin" required /> <label
															class="form-label" for="typeText">Password </label>
													</div>

													<hr class="my-4">

													<div class="d-flex justify-content-between">
														<p class="mb-2">Subtotal</p>
														<p class="mb-2">
															<%
															int total = 0;
															String name = (String) session.getAttribute("Username");
															Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
															PreparedStatement p = con.prepareStatement("select * from cart");
															ResultSet rs = p.executeQuery();
															while (rs.next()) {
																if (rs.getString("username").equals(name)) {
																	total += rs.getInt("P_price") * rs.getInt("quan");
																}
															}
															%>
															&#8377;&nbsp;<%=total%>
														</p>
													</div>

													<div class="d-flex justify-content-between">
														<p class="mb-2">Shipping</p>
														<p class="mb-2">
															<%
															int total1 = 0, shipping = 0;
															String name1 = (String) session.getAttribute("Username");
															Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
															PreparedStatement p1 = con1.prepareStatement("select * from cart");
															ResultSet rs1 = p1.executeQuery();
															while (rs1.next()) {
																if (rs1.getString("username").equals(name)) {
																	total1 += rs1.getInt("P_price") * rs1.getInt("quan");
																}
															}
															if (total1 > 500 || total1 == 0) {
																shipping = 0;
															} else {
																shipping = 50;
															}
															%>
															&#8377;&nbsp;<%=shipping%>
														</p>
													</div>

													<div class="d-flex justify-content-between mb-4">
														<p class="mb-2">Total(Incl. taxes)</p>
														<p class="mb-2">
															<%
															int total2 = 0, shipping1 = 0, fina = 0;
															String name2 = (String) session.getAttribute("Username");
															Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
															PreparedStatement p2 = con2.prepareStatement("select * from cart");
															ResultSet rs2 = p2.executeQuery();
															while (rs2.next()) {
																if (rs2.getString("username").equals(name)) {
																	total2 += rs2.getInt("P_price") * rs2.getInt("quan");
																}
															}
															if (total2 > 500 || total2 == 0) {
																shipping1 = 0;
															} else {
																shipping1 = 50;
															}
															fina = total2 + shipping1;
															%>
															&#8377;&nbsp;<%=fina%>
														</p>
													</div>
													<input type="hidden" name="fina" value=<%=fina%>>
													<c:set var="f" value="<%=fina%>"></c:set>
													<c:if test="${f>0}">
														<button type="submit" class="btn btn-block btn-lg"
															style="background: #fff !important">
															<div class="d-flex justify-content-between">
																<span>&#8377;&nbsp;<%=fina%></span> <span>Checkout
																	<i class="fas fa-long-arrow-alt-right ms-2"></i>
																</span>
															</div>
														</button>
													</c:if>

												</div>
											</form>
										</div>

									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	<br>
	<br>
	<br>
	<br>
	<!-- Footer -->


</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>


</html>