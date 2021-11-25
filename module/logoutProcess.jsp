<%@ page contentType="text/html; charset=utf-8" %>
<%
	if (session.getAttribute("loginSave") == null) {
		session.removeAttribute("memberId");
		session.removeAttribute("memberPwd");
	}
	session.removeAttribute("memberLogin");
	session.removeAttribute("loginPcs");
	response.sendRedirect("../index.jsp?CONTENTPAGE=content.jsp");
%>