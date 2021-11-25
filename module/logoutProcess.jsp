<%@ page contentType="text/html; charset=utf-8" %>
<%
	if (session.getAttribute("loginSave") == null) {
		session.removeAttribute("member_id");
		session.removeAttribute("member_pwd");
	}
	session.removeAttribute("memberLogin");
	session.removeAttribute("loginPcs");
	response.sendRedirect("../index.jsp?CONTENTPAGE=content.jsp");
%>