<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>배송 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">배달 정보</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processDeliveryInfo.jsp" class="form-horizontal" name="frm_info" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">핸드폰 번호</label>
				<div class="col-sm-3">
					<input name="phoneNumber" id="phoneNumber" type="text" class="form-control" />(000-0000-0000)
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">요청사항</label>
				<div class="col-sm-5">
					<input name="requestedTerm" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./DeliveryorPacking.jsp" class="btn btn-secondary" role="button"> 이전</a>
					<input type="button" class="btn btn-primary" value="등록" onclick="Check_info()"/>
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>