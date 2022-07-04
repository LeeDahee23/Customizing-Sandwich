<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Order" %>
<%@ page import="dao.SandwichRepository" %>
<%@ page import="java.net.URLEncoder" %>
<html>
<head>
<title>Order Processing</title>
</head>
<body>
	<%
		//현재 장바구니에 추가하시겠습니까? 해서  yes한 상태-> 장바구니에 저장해햐함!
		
		request.setCharacterEncoding("UTF-8");
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++){
			out.println(cookies[0].getValue()+ " ");
		}
	%>
	<%--
		<form action="addCart.jsp?id=<%=cookies[0].getValue()%>" method="post">
	 --%>
		
	<%
		//response.sendRedirect("addCart.jsp");
		//response.sendRedirect("orderConfirmation.jsp");
		
		
	%>
	<%--
		for(int i=0; i<veg.length; i++){
			out.println("veg[i]");
		}
		for(int i=0; i<sauce.length; i++){
			out.println("sauce[i]");
		}
		
		SandwichRepository dao = SandwichRepository.getInstance();
		
		
		Order ordering = new Order();
		ordering.setMenu(menu);
		ordering.setBread(bread);
		//선택한 채소 세팅
		//선택한 소스 세팅
		ordering.setCheese(cheese);
		ordering.setSet(set);
		response.sendRedirect("");//주문확인페이지
		--%>
</body>
</html>