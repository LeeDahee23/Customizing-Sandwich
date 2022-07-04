<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js">
</script>
<title>choose menu</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"/>
	<div class = "container" style="padding: 50px">
		<div class = "container" align="center">
			<img src="c:/Users/home/Desktop/image_project/logo.jpg" style="width:65%">
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">Korean</a>|<a href="?language=en" >English</a>
		</div>
		<form action="process_order.jsp" method="post" name="frm">
		<h4 class = "display-6">1. <fmt:message key="select_menu" /></h4>
		<div class= "row" align="center">
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/menu_veggie.jpg" style="width:100%">
				<p> <input type="radio" value="MenuVeggie" id="menu_veggie" name="menu"> <fmt:message key="menu_veggie"/>				
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/menu_eggmayo.jpg" style="width:100%">
				<p> <input type="radio" value="MenuEggmayo" id="menu_eggmayo" name="menu"> <fmt:message key="menu_eggmayo" />
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/menu_turkey.jpg" style="width:100%">
				<p> <input type="radio" value="MenuTurkey" id="menu_turkey" name="menu"> <fmt:message key="menu_turkey" />
			</div>
		</div>
		<div class="row" align="center">
			<div class="col-md-4">
				<img src="c:/Users/home/Desktop/image_project/menu_shrimp.jpg" style="width:100%">
				<p> <input type="radio" value="MenuShrimp" id="menu_shrimp" name="menu"> <fmt:message key="menu_shrimp" />
			</div>
			<div class="col-md-4">
				<img src="c:/Users/home/Desktop/image_project/menu_bmt.jpg" style="width:100%">
				<p> <input type="radio" value="MenuBmt" id="menu_bmt" name="menu"> <fmt:message key="menu_bmt" />
			</div>
		</div>
		<hr>
		<h4 class = "display-6">2. <fmt:message key="select_bread" /></h4>
		<div class= "row" align="center">
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/bread_white.png" style="width:100%">
				<p> <input type="radio" value="BreadWhite" id="bread_white" name="bread"> <fmt:message key="bread_white" />				
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/bread_hearty.png" style="width:100%">
				<p> <input type="radio" value="BreadHearty" id="bread_hearty" name="bread"> <fmt:message key="bread_hearty" />
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/bread_oat.png" style="width:100%">
				<p> <input type="radio" value="BreadOat" id="bread_oat" name="bread"> <fmt:message key="bread_oat" />
			</div>
		</div>
		<div class="row" align="center">
			<div class="col-md-4">
				<img src="c:/Users/home/Desktop/image_project/bread_flat.png" style="width:100%">
				<p> <input type="radio" value="BreadFlat" id="bread_flat" name="bread"> <fmt:message key="bread_flat" />
			</div>
		</div>
		<hr>
		<h4 class = "display-6">3. <fmt:message key="select_cheese" /></h4>
		<div class="row" align="center">
			<div class="col-6">
				<img src="c:/Users/home/Desktop/image_project/cheese_american.png" style="width:100%">
				<p> <input type="radio" value="CheeseAmerican" id="cheese_american" name="cheese"> <fmt:message key="cheese_american" />			
			</div>
			<div class="col-6">
				<img src="c:/Users/home/Desktop/image_project/cheese_shredded.png" style="width:100%">
				<p> <input type="radio" value="CheeseShredded" id="cheese_shredded" name="cheese"> <fmt:message key="cheese_shredded" />
			</div>
		</div>
		<hr>
		<h4 class = "display-6">4. <fmt:message key="select_veg" /></h4>
		<div class= "row" align="center">
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/veg_lettuce.jpg" style="width:100%">
				<p> <input type="checkbox" value="VegLettuce" id="veg_lettuce" name="veg"> <fmt:message key="veg_lettuce" />				
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/veg_tomato.jpg" style="width:100%">
				<p> <input type="checkbox" value="VegTomato" id="veg_tomato" name="veg"> <fmt:message key="veg_tomato" />
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/veg_onion.jpg" style="width:100%">
				<p> <input type="checkbox" value="VegOnion" id="veg_onion" name="veg"> <fmt:message key="veg_onion" />
			</div>
		</div>
		<div class="row" align="center">
			<div class="col-md-4">
				<img src="c:/Users/home/Desktop/image_project/veg_pepper.jpg" style="width:30%">
				<p> <input type="checkbox" value="VegPepper" id="veg_pepper" name="veg"> <fmt:message key="veg_pepper" />
			</div>
			<div class="col-md-4">
				<img src="c:/Users/home/Desktop/image_project/veg_olive.jpg" style="width:30%">
				<p> <input type="checkbox" value="VegOlive" id="veg_olive" name="veg"> <fmt:message key="veg_olive" />
			</div>
		</div>
		<hr>
		<h4 class = "display-6">5. <fmt:message key="select_sauce" /></h4>
		<div class= "row" align="center">
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/sauce_swchili.jpg" style="width:100%">
				<p> <input type="checkbox" value="SauceSwchili" id="sauce_swchili" name="sauce"> <fmt:message key="sauce_swchilli" />				
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/sauce_swonion.jpg" style="width:100%">
				<p> <input type="checkbox" value="SauceSwonion" id="sauce_swonion" name="sauce"> <fmt:message key="sauce_swonion" />
			</div>
			<div class="col-4">
				<img src="c:/Users/home/Desktop/image_project/sauce_hotchili.jpg" style="width:100%">
				<p> <input type="checkbox" value="SauceHotchili" id="sauce_hotchili" name="sauce"> <fmt:message key="sauce_hotchili" />
			</div>
		</div>
		<div class="row" align="center">
			<div class="col-md-4">
				<img src="c:/Users/home/Desktop/image_project/sauce_pepper.jpg" style="width:100%">
				<p> <input type="checkbox" value="SaucePepper" id="sauce_pepper" name="sauce"> <fmt:message key="sauce_pepper" />
			</div>
			<div class="col-md-4">
				<img src="c:/Users/home/Desktop/image_project/sauce_oliveoil.jpg" style="width:100%">
				<p> <input type="checkbox" value="SauceOliveoil" id="sauce_oliveoil" name="sauce"> <fmt:message key="sauce_oliveoil" />
			</div>
		</div>
		<hr>
		<h4 class = "display-6">6. <fmt:message key="select_set" /></h4>
		<div class= "row" align="center">
			<div class="col-6">
				<img src="c:/Users/home/Desktop/image_project/set_set.jpg" style="width:100%">
				<p> <input type="radio" value="SetSet" id="set_set" name="set"> <fmt:message key="set_set" />				
			</div>
			<div class="col-6">
				<img src="c:/Users/home/Desktop/image_project/set_single.jpg" style="width:100%">
				<p> <input type="radio" value="SetSingle" id="set_single" name="set"> <fmt:message key="set_single" />
			</div>			
		</div>
		<div>
			<p align="right"> <input class="btn btn-outline-success my-2 my-sm-0" type="button" id="before" value="<fmt:message key="return" />" onclick="location='start.jsp'">
				<input class="btn btn-outline-success my-2 my-sm-0" type="button" id="done" value="<fmt:message key="done"/>" onclick="Check_Order()" >
		</div>
		</form>
		<hr>
	</div>	
	<jsp:include page="footer.jsp"/>
	</fmt:bundle>
</body>
</html>