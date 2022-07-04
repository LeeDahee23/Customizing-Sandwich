<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="dto.Order" %>
<%@ page import="dao.SandwichRepository" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Arrays" %>
<html>
<head>
<title>Order Processing</title>
<script>
	var EncodingURI = encodeURI()
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		
		String menu = request.getParameter("menu");
		String bread = request.getParameter("bread");
		String cheese = request.getParameter("cheese");
		//veg 배열 받아서 String으로 변환, Query를 위해 특수문자 제거
		String vegs[] = request.getParameterValues("veg");
		String s_veg = Arrays.toString(vegs);
		String rp1 = s_veg.replace('[', '.');
		String rp2 = rp1.replace(" ", "");
		String veg = rp2.replace(']', '.');
		
		
		String sauces[] = request.getParameterValues("sauce");
		String s_sauce = Arrays.toString(sauces);
		String rp3 = s_sauce.replace('[', '.');
		String rp4 = rp3.replace(" ", "");
		String sauce = rp4.replace(']', '.');
		
		String set = request.getParameter("set");
		
		String id = menu + "/" + bread + "/" + cheese + "/" + veg + "/" + sauce + "/" + set;
		
		SandwichRepository dao = SandwichRepository.getInstance();
		
		Order newOrder = new Order();
		newOrder.setSandwichId(id);
		newOrder.setMenu(menu);
		newOrder.setBread(bread);
		newOrder.setCheese(cheese);
		newOrder.setVegetable(veg);
		newOrder.setSauce(sauce);
		newOrder.setSet(set);
		
		Cookie c_menu = new Cookie("Ordering_menu", URLEncoder.encode(menu, "utf-8"));
		Cookie c_bread = new Cookie("Ordering_bread", URLEncoder.encode(bread, "utf-8"));
		Cookie c_cheese = new Cookie("Ordering_cheese", URLEncoder.encode(cheese, "utf-8"));
		Cookie c_veg = new Cookie("Ordering_veg", URLEncoder.encode(veg, "utf-8"));
		Cookie c_sauce = new Cookie("Ordering_sauce", URLEncoder.encode(sauce, "utf-8"));
		Cookie c_set = new Cookie("Ordering_set", URLEncoder.encode(set, "utf-8"));
		
		c_menu.setMaxAge(24 * 60 * 60);
		c_bread.setMaxAge(24 * 60 * 60);
		c_cheese.setMaxAge(24 * 60 * 60);
		c_veg.setMaxAge(24 * 60 * 60);
		c_sauce.setMaxAge(24 * 60 * 60);
		c_set.setMaxAge(24 * 60 * 60);
		
		response.addCookie(c_menu);
		response.addCookie(c_bread);
		response.addCookie(c_cheese);
		response.addCookie(c_veg);
		response.addCookie(c_sauce);
		response.addCookie(c_set);
		
		
		response.sendRedirect("DeliveryorPacking.jsp");
		
	%>
	
</body>
</html>