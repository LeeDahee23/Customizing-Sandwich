<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="sytlesheet" href="./resources/css/bootstrap.min.css" />
<title>Administrator Page</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">관리자 페이지</h1>
		</div>
	</div>
	<div class="container">
		<h4 class = "display-6">등록할 옵션의 정보를 입력하세요.</h4><br>
		<form action="" name="option_choose" method="post">
			<div class="form-group row">
				<label class="col-sm-2"> 이름</label>
				<div class="col-sm-3">
					<input type="text" id="optionName" name="optionName" class="form-control" value=''>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> id</label>
				<div class="col-sm-5">
					<input type="text" id="optionId" name="optionId" class="form-control" value=''>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> 사진</label>
				<div class="col-sm-5">
					<input type="file" id="optionFile" name="optionFile" class="form-control" value=''>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-outline-success my-2 my-sm-0" value="등록" onclick=''>
				</div>
			</div>
		</form>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>