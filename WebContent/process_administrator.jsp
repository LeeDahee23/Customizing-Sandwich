<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	//value 값 가져와야함
	String option = request.getParameter("option");
	String name = request.getParameter("optionName");
	String id = request.getParameter("optionId");
	String fileName = request.getParameter("optionFile");
	
	PreparedStatement pstmt = null;
	String sql = null;
	if(option.equals("menu")){
		sql = "insert into menu values(?,?,?)";
	}else if(option.equals("bread")){
		sql = "insert into bread values(?,?,?)";
	}else if(option.equals("cheese")){
		sql = "insert into cheese values(?,?,?)";
	}else if(option.equals("veg")){
		sql = "insert into veg values(?,?,?)";
	}else if(option.equals("sauce")){
		sql = "insert into sauce values(?,?,?)";
	}
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	pstmt.setString(3, fileName);
	pstmt.executeUpdate();
	
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
	
	response.sendRedirect("displayOption.jsp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>