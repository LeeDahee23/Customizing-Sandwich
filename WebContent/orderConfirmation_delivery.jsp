<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList, java.util.Date, java.text.SimpleDateFormat"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Order"%>
<%@ page import="dao.SandwichRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();
	
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_phoneNumber = "";
	String shipping_addressName = "";
	String shipping_requestedTerm = "";
	String ordering_menu = "";
	String ordering_bread = "";
	String ordering_cheese = "";
	String ordering_veg = "";
	String ordering_sauce = "";
	String ordering_set = "";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i = 0; i<cookies.length; i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_phoneNumber"))
				shipping_phoneNumber = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_requestedTerm"))
				shipping_requestedTerm = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			
			if(n.equals("Ordering_menu"))
				ordering_menu = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Ordering_bread"))
				ordering_bread = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Ordering_cheese"))
				ordering_cheese = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Ordering_veg"))
				ordering_veg = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Ordering_sauce"))
				ordering_sauce = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Ordering_set"))
				ordering_set = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			
		}
	}
	
	Date now = new Date();
	SimpleDateFormat fm = new SimpleDateFormat("yyyy??? MM??? dd???");
	
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>?????? ??????</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">?????? ??????</h1>
		</div>
	</div>
	
	<div class="container col-8 alert alert-info">
		<div class="text-center" >
			<h1>?????????</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-6" align="left" style="font-size:13px">
				<strong>?????? ??????</strong> <br> ?????? : <% out.println(shipping_name); %> <br>
				????????? ??????: <%out.println(shipping_phoneNumber); %><br>
				?????? : <%out.println(shipping_addressName); %><br>
				?????? ?????? : <%out.println(shipping_requestedTerm); %><br>
			</div>
			<div class="col-6" align="right">
				<p style="font-size:12px"> <em>????????????: <% out.println(fm.format(now)); %>(??????)</em>
			</div>
		</div>
		<div>
			<table class="table table-hover">
			<tr>
				<th class="text-center">??????</th>
				<td class="text-center"><em><%=ordering_menu%></em></td>
			</tr>
			<tr>
				<th class="text-center">???</th>
				<td class="text-center"><%=ordering_bread %></td>
			</tr>
			<tr>
				<th class="text-center">??????</th>
				<td class="text-center"><%=ordering_cheese%></td>
			</tr>
			<tr>
				<th class="text-center">??????</th>
				<td class="text-center"><%=ordering_veg%></td>
			</tr>
			<tr>
				<th class="text-center">??????</th>
				<td class="text-center"><%=ordering_sauce%></td>
			</tr>
			<tr>
				<th class="text-center">?????? ??????</th>
				<td class="text-center"><%=ordering_set%></td>
			</tr>
			<%
				//????????? ???????????? ????????? ????????????
				Order sandwich = new Order();
			%>
			
				
			</table>
			
			<a href="./DeliveryInfo.jsp" class="btn btn-secondary" role="button">??????</a>
			<a href="./thankCustomer_delivery.jsp" class="btn btn-success" role="button">?????? ??????</a>
			<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">??????</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>