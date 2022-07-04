function Check_Order(){
	var Menu = document.getElementsByName("menu");
	var Bread = document.getElementsByName("bread");
	var Cheese = document.getElementsByName("cheese");
	var Veg = document.getElementsByName("veg");
	var Sauce = document.getElementsByName("sauce");
	var Set = document.getElementsByName("set");
	
	//메뉴 선택 확인
	var chk_cnt =0;
	for(var i=0; i<Menu.length; i++){
		if(Menu[i].checked == true) chk_cnt++;
	}
	if(chk_cnt<1){
		alert("메뉴를 선택하세요");
		document.frm.Menu[0].focus();
		return;
	}
	
	//빵 선택 확인
	var chk_cnt =0;
	for(var i=0; i<Bread.length; i++){
		if(Bread[i].checked == true) chk_cnt++;
	}
	if(chk_cnt<1){
		alert("빵을 선택하세요");
		document.frm.Bread[0].focus();
		return;
	}
	
	//치즈 선택 확인
	var chk_cnt =0;
	for(var i=0; i<Cheese.length; i++){
		if(Cheese[i].checked == true) chk_cnt++;
	}
	if(chk_cnt<1){
		alert("치즈를 선택하세요");
		document.frm.Cheese[0].focus();
		return;
	}
	
	//야채 선택 확인
	var chk_cnt =0;
	for(var i=0; i<Veg.length; i++){
		if(Veg[i].checked == true) chk_cnt++;
	}
	if(chk_cnt<1){
		alert("야채를 선택하세요");
		document.frm.Veg[0].focus();
		return;
	}
	
	//소스 선택 확인
	var chk_cnt =0;
	for(var i=0; i<Sauce.length; i++){
		if(Sauce[i].checked == true) chk_cnt++;
	}
	if(chk_cnt<1){
		alert("소스 선택하세요");
		document.frm.Sauce[0].focus();
		return;
	}
	
	//세트 선택 확인
	var chk_cnt =0;
	for(var i=0; i<Set.length; i++){
		if(Set[i].checked == true) chk_cnt++;
	}
	if(chk_cnt<1){
		alert("세트여부를 선택하세요");
		document.frm.Set[0].focus();
		return;
	}
	
	document.frm.submit(); 
}

function Check_info(){
	var phoneNum = document.frm_info.phoneNumber.value;
	var regPhone = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
	
	if(!regPhone.test(phoneNum)){
		alert("핸드폰번호의 입력이 옳지 않습니다.");
		return;
	}
	document.frm_info.submit();
}
