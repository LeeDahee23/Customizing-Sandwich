<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>start page</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
		<div class = "container" align="center" style="padding: 50px">
		<br><br><br>
			<img src="c:/Users/home/Desktop/image_project/logo.jpg" style="width:80%">
		</div>
	<div class="container" align="center">
		<div class="col-md-4">
				<input class="btn btn btn-lg btn-success btn-block" type="button" value="주문하기" style="height:70px" onclick="location='order.jsp'">
		</div>		
		<br>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>