<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js">
</script>
<title>choose menu</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class = "container" style="padding: 50px">
		<div class = "container" align="center">
			<img src="c:/Users/home/Desktop/image_project/logo.jpg" style="width:65%">
		</div>
	</div>
	<div class="container">
		<h4 class = "display-6">1. 메뉴</h4>
		<div class= "row" align="center">
			<%@ include file="dbconn.jsp" %>
			<div class="col-4">
				<%
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					String sql = "select * from menu";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
				%>
				<img src="<%=rs.getString("fileName") %>" style="width:100%">
				<p> <%= rs.getString("menu_name") %>
				<% 
					}
					if(rs!=null)
						rs.close();
					if(pstmt!=null)
						pstmt.close();
				%>
			</div>
		</div>
		<hr>
		<h4 class = "display-6">2. 빵</h4>
		<div class= "row" align="center">
			<div class="col-4">
			<%
				PreparedStatement pstmt1 = null;
				ResultSet rs1 = null;
				String sql1 = "select * from bread";
				pstmt1 = conn.prepareStatement(sql1);
				rs1 = pstmt1.executeQuery();
				while(rs1.next()){
			%>
				<img src="<%=rs1.getString("fileName") %>" style="width:100%">
				<p> <%=rs1.getString("bread_name") %>
				<%
					}
					if(rs1!=null)
						rs1.close();
					if(pstmt1!=null)
						pstmt1.close();
				%>
			</div>
			
		</div>
		<hr>
		<h4 class = "display-6">3. 치즈</h4>
		<div class="row" align="center">
			<div class="col-6">
				<%
					PreparedStatement pstmt2 = null;
					ResultSet rs2 = null;
					String sql2 = "select * from cheese";
					pstmt2 = conn.prepareStatement(sql2);
					rs2 = pstmt2.executeQuery();
					while(rs2.next()){
				%>
				<img src="<%=rs2.getString("fileName") %>" style="width:100%">
				<p> <%=rs2.getString("cheese_name") %>
				<%
					}
					if(rs2!=null)
						rs2.close();
					if(pstmt2!=null)
						pstmt2.close();
				%>
			</div>
		</div>
		<hr>
		<h4 class = "display-6">4. 야채</h4>
		<div class= "row" align="center">
			<div class="col-4">
				<%
					PreparedStatement pstmt3 = null;
					ResultSet rs3 = null;
					String sql3 = "select * from veg";
					pstmt3 = conn.prepareStatement(sql3);
					rs3 = pstmt3.executeQuery();
					while(rs3.next()){
				%>
				<img src="<%=rs3.getString("fileName") %>" style="width:100%">
				<p> <%=rs3.getString("veg_name") %>
				<%
					}
					if(rs3!=null)
						rs3.close();
					if(pstmt3!=null)
						pstmt3.close();
				%>		
			</div>
			
		</div>
		
		<hr>
		<h4 class = "display-6">5. 소스</h4>
		<div class= "row" align="center">
			<div class="col-4">
				<%
					PreparedStatement pstmt4 = null;
					ResultSet rs4 = null;
					String sql4 = "select * from sauce";
					pstmt4 = conn.prepareStatement(sql4);
					rs4 = pstmt4.executeQuery();
					while(rs4.next()){
				%>
				<img src="<%=rs4.getString("fileName") %>" style="width:100%">
				<p> <%=rs4.getString("sauce_name") %>
				<%
					}
					if(rs4!=null)
						rs4.close();
					if(pstmt4!=null)
						pstmt4.close();
					if(conn!=null)
						conn.close();
				%>	
			</div>
			
		</div>
		
		<hr>
		<h4 class = "display-6">6. 세트 여부</h4>
		<div class= "row" align="center">
			<div class="col-6">
				<img src="c:/Users/home/Desktop/image_project/set_set.jpg" style="width:100%">
				<p> 세트			
			</div>
			<div class="col-6">
				<img src="c:/Users/home/Desktop/image_project/set_single.jpg" style="width:100%">
				<p> 단품
			</div>			
		</div>
		<div>
			<p align="right"> <input class="btn btn-outline-success my-2 my-sm-0" type="button" id="logout" value="로그아웃" onclick="location='logout.jsp'">

		</div>
		<hr>
	</div>	
	<jsp:include page="footer.jsp"/>
</body>
</html>