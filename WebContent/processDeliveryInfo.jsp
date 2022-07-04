<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie phoneNumber = new Cookie("Shipping_phoneNumber", URLEncoder.encode(request.getParameter("phoneNumber"), "utf-8"));
	Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "utf-8"));
	Cookie requestedTerm = new Cookie("Shipping_requestedTerm", URLEncoder.encode(request.getParameter("requestedTerm"), "utf-8"));
	
	cartId.setMaxAge(24 * 60 * 60);
	name.setMaxAge(24* 60 * 60);
	phoneNumber.setMaxAge(24 * 60 * 60);
	addressName.setMaxAge(24 * 60 * 60);
	requestedTerm.setMaxAge(24 * 60 * 60);
	
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(phoneNumber);
	response.addCookie(addressName);
	response.addCookie(requestedTerm);
	
	response.sendRedirect("orderConfirmation_delivery.jsp");
%>