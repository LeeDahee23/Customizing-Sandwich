<%@ page contentType="text/html; charset=utf-8"%>
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
		<h4 class = "display-6">1. 새로 등록할 옵션을 선택하세요</h4>
		<form action="process_administrator.jsp" name="option_choose" method="post">
			<div class="row"  align="left">
			<div class="col-10">
				<br><input type="radio" name="option" value="menu">   메뉴     
				<input type="radio" name="option" value="bread">   빵      
				<input type="radio" name="option" value="cheese">   치즈     
				<input type="radio" name="option" value="veg">    야채     
				<input type="radio" name="option" value="sauce">   소스    
			</div>
			</div>
		<br><hr><br>
		<h4 class = "display-6">2. 등록할 옵션의 정보를 입력하세요.</h4><br>
		<div class="form-group row">
				<label class="col-sm-2"> 이름</label>
				<div class="col-sm-3">
					<input type="text" id="optionName" name="optionName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> id</label>
				<div class="col-sm-5">
					<input type="text" id="optionId" name="optionId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"> 사진</label>
				<div class="col-sm-5">
					<input type="file" id="optionFile" name="optionFile" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="등록">
				</div>
			</div>
		</form>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>