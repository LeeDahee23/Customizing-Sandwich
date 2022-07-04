<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="sytlesheet" href="./resources/css/bootstrap.min.css" />
<title>Delivery or Packing</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			
		</div>
	</div>
	<div class="container" align="center">
		<div class="row"  align="center">
			<div class="col-2"></div>
			<div class="col-4">
				<a href="DeliveryInfo.jsp" class="btn btn-success" style="width: 200px; height: 200px; font-size: 5em">배달</a>
			</div>
			<div class="col-4">
				<a href="PackingInfo.jsp" class="btn btn-success" style="width: 200px; height: 200px; font-size: 5em">포장</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>