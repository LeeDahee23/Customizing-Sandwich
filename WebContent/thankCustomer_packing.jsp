<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 완료</title>
</head>
<body>
	<%
		String shipping_name = "";
		String shipping_phoneNumber = "";
		String ordering_menu = "";
		String ordering_bread = "";
		String ordering_cheese = "";
		String ordering_veg = "";
		String ordering_sauce = "";
		String ordering_set = "";
		
		SimpleDateFormat fm = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm");
		Date time = new Date();
		String order_time = fm.format(time);
		
		Cookie[] cookies = request.getCookies();
		
		
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 감사합니다.</h2>
		<p> 주문일시: <%=order_time %>
	</div>
	<div class="container">
		<p> <a href="./start.jsp" class="btn btn-secondary">&laquo; 처음으로</a>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
<%
	session.invalidate();
	
	for(int i=0; i<cookies.length; i++){
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Ordering_menu"))
			 thisCookie.setMaxAge(0);
		if(n.equals("Ordering_bread"))
			thisCookie.setMaxAge(0);
		if(n.equals("Ordering_cheese"))
			thisCookie.setMaxAge(0);
		if(n.equals("Ordering_veg"))
			thisCookie.setMaxAge(0);
		if(n.equals("Ordering_sauce"))
			thisCookie.setMaxAge(0);
		if(n.equals("Ordering_set"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shippings_phoneNumber"))
			thisCookie.setMaxAge(0);
			
		response.addCookie(thisCookie);
	}
%>