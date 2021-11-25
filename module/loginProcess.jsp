<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*, memberManagement.*" %>

<jsp:useBean id="mbean" class="memberManagement.ManagementBean" scope="session"/> 
<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session"/>

<%
	String member_id = request.getParameter("member_id");
	String member_pwd = request.getParameter("member_pwd");
	boolean loginCheck = mbean.loginCheck(member_id,member_pwd); 
		
	if(member_id.equals("admin") && member_pwd.equals("admin")) {
		session.setAttribute("memberLogin", "ok");
		if(request.getParameter("save") == null) {
			session.removeAttribute("loginSave");
		}
		else {
			session.setAttribute("loginSave", "check");
		}
		session.setAttribute("member_id", member_id);
		session.setAttribute("member_pwd", member_pwd);
		session.setAttribute("member_name", "관리자");
		response.sendRedirect("../management/manager_control.jsp?action=list");
	}
	else if(loginCheck) {	
		session.setAttribute("memberLogin", "ok");
		if(request.getParameter("save") == null) {
			session.removeAttribute("loginSave");
		}
		else {
			session.setAttribute("loginSave", "check");
		}
		session.setAttribute("member_id", member_id);
		session.setAttribute("member_pwd", member_pwd);
		mb = mbean.getDB(mb.getMember_id());
		response.sendRedirect("../index.jsp?CONTENTPAGE=content.jsp");
	}
	else {
		session.setAttribute("loginPcs", "false");
		response.sendRedirect("../index.jsp?CONTENTPAGE=loginForm.jsp");
	}
%>