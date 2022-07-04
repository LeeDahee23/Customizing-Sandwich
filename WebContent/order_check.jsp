<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>order checking</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else{
			documnet.addForm.reset();
		}
	}
</script>
</head>
<body>
	<p> <form name="addForm" action="./addCart.jsp?id=<>" method="post">
			<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
		</form>
</body>
</html>