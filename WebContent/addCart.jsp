<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Order" %>
<%@ page import="dao.ChooseRepository" %>

<%
	String id = request.getParameter("id");//process_order에서 이 페이지로 sandwichId를 보냄
	if(id==null || id.trim().equals("")){
		response.sendRedirect("start.jsp");
		return;
	}
	
	ChooseRepository dao = ChooseRepository.getInstance(); //선택한 샌드위치 따로 만들어서 할까?
	
	//id인 샌드위치를 chooserepository에서 가져와서 sandwich라 함, 그런 샌드위치 없으면 exceptionNoSandwichId로 이동
	Order sandwich = dao.getSandwichById(id);
	if(sandwich == null){
		response.sendRedirect("exceptionNoSandwichId.jsp");
	}
	
	//선택된 모든 샌드위치를 가져와서 goodsList에 저장.
	//goodsList의 모든 샌드위치들과 id인 샌드위치랑 비교해서 같으면 다음으로
	ArrayList<Order> goodsList = dao.getAllSandwiches();
	Order goods = new Order();
	for(int i=0; i<goodsList.size(); i++){
		goods = goodsList.get(i);
		if(goods.getSandwichId().equals(id)){
			break;
		}
	}
	
	//cartlist라는 세션을 가져와서 세션이 없으면 새로 만들어서 저장
	ArrayList<Order> list = (ArrayList<Order>) session.getAttribute("cartlist");
	if(list == null){
		list = new ArrayList<Order>();
		session.setAttribute("cartlist", list);
	}
	
	//세션 list에 있는 모든 샌드위치들과 id인 샌드위치와 비교해서 같으면 cnt++, 수량도 +1
	int cnt = 0;
	Order goodsQnt = new Order();
	for(int i=0; i<list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getSandwichId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity()+1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	//cnt가 0이면 수량을 1로 함
	if(cnt == 0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	//response.sendRedirect("start.jsp");//장바구니에 넣고 나면 시작페이지로 돌아가기
%>