<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="manager_error.jsp" import="cartManagement.*, memberManagement.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="cbean" class="cartManagement.CartBean" scope="session"/> 
<jsp:useBean id="cb" class="cartManagement.CartBook" scope="session"/>
<jsp:useBean id="pb" class="cartManagement.CartBook" scope="session"/>
<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session"/>
<jsp:setProperty name="cb" property="*"/> 

<% 
	String action = request.getParameter("action"); // 컨트롤러 요청 파라미터
	String memberLogin = (String)session.getAttribute("member_login"); // 로그인 확인 파라미터

	// 파라미터에 따른 요청 처리
	// 전체 찜목록 요청인 경우
	if(action.equals("alist")) {
		ArrayList<CartBook> cDatas = cbean.getAllDBList();
		session.setAttribute("cDatas", cDatas);
		response.sendRedirect("cart_list.jsp");
	}
	
	// 특정 회원 찜목록 요청인 경우
	else if(action.equals("list")) {
		ArrayList<CartBook> cDatas = cbean.getDBList(mb.getMember_id());
		session.setAttribute("cDatas", cDatas);
		response.sendRedirect("../index.jsp?CONTENTPAGE=myList.jsp");
	}
	
	// 전체 상품정보 목록 조회 요청인 경우
	else if(action.equals("aSearch")) {
		ArrayList<CartBook> pDatas = cbean.getProductDBList();
		session.setAttribute("pDatas", pDatas);
		response.sendRedirect("../product/product_list.jsp");
	}
	
	// 특정 상품정보 조회 요청인 경우
	else if(action.equals("search")) {
		if(memberLogin == null) {
			session.setAttribute("firstLogin", "yet");
			response.sendRedirect("../index.jsp?CONTENTPAGE=loginForm.jsp");
		}
		else { // 로그인 되어있음
			CartBook cbook = cbean.getProductDB(request.getParameter("product_no"));
			session.setAttribute("cb",cbook);
			response.sendRedirect("cart_control.jsp?action=insert");
		}
	}
	
	// 찜목록 수정 페이지 요청인 경우
	else if(action.equals("edit")) {
		CartBook cbook = cbean.getDB(cb.getCart_no());
		session.setAttribute("cb",cbook);
		response.sendRedirect("../index.jsp?CONTENTPAGE=cart_edit_form.jsp");
	}
	
	// 찜목록 추가 요청인 경우
	else if(action.equals("insert")) {
		if(cbean.cartCheck(cb.getProduct_no(), mb.getMember_id())) {
			session.setAttribute("verified", "error");
			response.sendRedirect("../index.jsp?CONTENTPAGE=information.jsp");
		} else if(cbean.insertDB(cb, mb.getMember_id())) {
			response.sendRedirect("cart_control.jsp?action=list");
		} else throw new Exception("DB 입력오류");		
	}
	
	// 찜목록 삭제 요청인 경우
	else if(action.equals("delete")) {
		if(cbean.deleteDB(cb.getCart_no())) {
			response.sendRedirect("cart_control.jsp?action=list");
		} else throw new Exception("DB 삭제 오류");
	}
	
	// 상품정보 수정 페이지 요청인 경우
	else if(action.equals("productEdit")) {
		CartBook pbook = cbean.getProductDB(cb.getProduct_no());
		session.setAttribute("pb",pbook);
		response.sendRedirect("../index.jsp?CONTENTPAGE=product_edit_form.jsp");
	}
	
	// 상품 추가 요청인 경우
	else if(action.equals("productInsert")) {
		if(cbean.insertProductDB(cb)) {
			response.sendRedirect("cart_control.jsp?action=aSearch");
		} else throw new Exception("DB 입력오류");		
	}
	
	// 상품 수정 요청인 경우
	else if(action.equals("productUpdate")) {
		if(cbean.updateProductDB(cb)) {
			response.sendRedirect("cart_control.jsp?action=aSearch");
		} else throw new Exception("DB 수정 오류");
	}
	
	// 상품 삭제 요청인 경우
	else if(action.equals("productDelete")) {
		if(cbean.deleteProductDB(cb.getProduct_no())) {
			response.sendRedirect("cart_control.jsp?action=aSearch");
		} else throw new Exception("DB 삭제 오류");
	}
	else out.println("<script>alert('action 파라미터를 확인해 주세요!')</script>");
%>