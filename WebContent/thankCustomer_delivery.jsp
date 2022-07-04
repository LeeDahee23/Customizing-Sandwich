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
		String shipping_menu = "";
		String shipping_bread="";
		String shipping_cheese = "";
		String shipping_veg = "";
		String shipping_sauce = "";
		String shipping_set = "";
		
		SimpleDateFormat fm = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm");
		Date time = new Date();
		String order_time = fm.format(time);
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("Shipping_menu"))
					shipping_menu = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				//if(n.equals("Shipping_shippingDate"))
					//shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 감사합니다.</h2>
		<p> 주문은 <%=(int)(Math.random()*10+5) %>분 안에 배송될 예정입니다!
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
		if(n.equals("Shipping_menu"))
			 thisCookie.setMaxAge(0);
		if(n.equals("Shipping_bread"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_cheese"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_veg"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_sauce"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_set"))
			thisCookie.setMaxAge(0);
			
		response.addCookie(thisCookie);
	}
%>