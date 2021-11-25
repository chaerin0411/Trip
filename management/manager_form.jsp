<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="manager_error.jsp"%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원관리:작성화면</title>
<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" />
</head>
<body>
<div align="center">
<H2>회원관리:작성화면</H2>
<HR>
[<a href=manager_control.jsp?action=list>회원 목록으로</a>] <P>
<form name=form1 method=post action="manager_control.jsp">
<input type=hidden name="action" value="insert">
<table border="1">
  <tr>
    <th>아이디</th>	
    <td><input type="text" name="member_id" maxlength="10"></td>
  </tr>
  <tr>
    <th>비밀번호</th>
    <td><input type="text" name="member_pwd" maxlength="10"></td>
  </tr>
  <tr>
    <th>이름</th>
    <td><input type="text" name="member_name" maxlength="20"></td>
  </tr>
  <tr>
    <th>생년월일</th>
    <td><input type="date" name="member_birth"></td>
  </tr>  
  <tr>
    <th>전화번호</th>
    <td><input type="text" name="member_tel" maxlength="20"></td>
  </tr>
  <tr>
    <th>이메일</th>
    <td><input type="email" name="member_email"></td>
  </tr>
  <tr>
    <th>주소</th>
    <td><input type="text" name="member_addr"></td>
  </tr>
  <tr>
    <td colspan=2 align=center><input type=submit value="저장"><input type=reset value="취소"></td>
</tr>
</table>
</form>
</div>
</body>
</html>
