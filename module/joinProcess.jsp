<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="memberManagement.*, java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="mbean" class="memberManagement.ManagementBean" scope="session"/> 
<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session"/>
<jsp:setProperty name="mb" property="*"/> 
<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");
	String id = request.getParameter("member_id");
	
	// 회원가입 요청인 경우
	if(action.equals("join")) {	
		if(id.equals("")) {
			response.sendRedirect("../index.jsp?CONTENTPAGE=joinForm.jsp");
		}
		else {
			if(mbean.insertDB(mb)) {
				pageContext.forward("index.jsp?CONTENTPAGE=content.jsp");
			}
			else
				throw new Exception("DB 입력오류");
		}
	}	
%>