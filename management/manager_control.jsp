<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="manager_error.jsp" import="memberManagement.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="mb" class="memberManagement.ManagementBean"/> 
<jsp:useBean id="managementbook" class="memberManagement.ManagementBook"/>
<jsp:setProperty name="managementbook" property="*"/> 
<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");

	// 파라미터에 따른 요청 처리
	// 주소록 목록 요청인 경우

	if(action.equals("list")) {
		ArrayList<ManagementBook> datas = mb.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("manager_list.jsp");
	}
	// 주소록 등록 요청인 경우
	else if(action.equals("insert")) {		
		if(mb.insertDB(managementbook)) {
			response.sendRedirect("manager_control.jsp?action=list");
		}
		else
			throw new Exception("DB 입력오류");
	}
	// 주소록 수정 페이지 요청인 경우
	else if(action.equals("edit")) {
		ManagementBook mbook = mb.getDB(managementbook.getMember_id());
		if(!request.getParameter("admin").equals("admin")) {
			out.println("<script>alert('비밀번호가 틀렸습니다.!!');history.go(-1);</script>");
		}
		else {
			request.setAttribute("mb",mbook);
			pageContext.forward("manager_edit_form.jsp");
		}
	}
	// 주소록 수정 등록 요청인 경우
	else if(action.equals("update")) {
			if(mb.updateDB(managementbook)) {
				response.sendRedirect("manager_control.jsp?action=list");
			}
			else
				throw new Exception("DB 갱신오류");
	}
	// 주소록 삭제 요청인 경우
	else if(action.equals("delete")) {
		if(mb.deleteDB(managementbook.getMember_id())) {
			response.sendRedirect("manager_control.jsp?action=list");
		}
		else
			throw new Exception("DB 삭제 오류");
	}
	else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
%>