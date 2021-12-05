<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="manager_error.jsp" import="java.util.*, memberManagement.*"%>

<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" />

<script type="text/javascript">
	function check(member_id) {
		upwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');
		document.location.href="manager_control.jsp?action=edit&member_id="+member_id+"&upwd="+upwd;
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원관리:목록화면</title>

</head>
<jsp:useBean id="datas" scope="session" class="java.util.ArrayList"/>
<body>
<div align="center">
<h2>회원관리:목록화면</h2> 
<a href="../index.jsp?CONTENTPAGE=content.jsp">메인 페이지로 이동</a>
<hr>
<form>
<a href="manager_form.jsp">회원정보 입력</a><P>

		<table border="1">
			<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>생년월일</th><th>전화번호</th><th>이메일</th><th>주소</th></tr>
<%
		for(ManagementBook  mb : (ArrayList<ManagementBook>)datas) {
%>		
			  <tr>
			   	<td><a href="javascript:check('<%=mb.getMember_id()%>')"><%=mb.getMember_id() %></a></td>
				<td><%=mb.getMember_pwd() %></td>
				<td><%=mb.getMember_name() %></td>
				<td><%=mb.getMember_birth() %></td>
				<td><%=mb.getMember_tel() %></td>
				<td><%=mb.getMember_email() %></td>
				<td><%=mb.getMember_addr() %></td>
			  </tr>
			 <%
				}
			 %>
		</table>
</form>

</div>
</body>
</html>