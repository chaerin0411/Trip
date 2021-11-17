<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>joinForm.jsp</title>
</head>
<body>
<%
 	String memLogin = (String)session.getAttribute("memLogin");
 	String id = (String)session.getAttribute("memId");
 	String pw = (String)session.getAttribute("memPw");
 	String check = (String)session.getAttribute("memSave");
	String idStr = null, pwStr = null, checkStr = null;
%>

	<h3>회원가입-Sign up Page</h3>
	<div align="center">
	<form action="#" method="post">
	<table border="1">
  <tr>
    <th>아이디</th>	
    <td><input type="text" name="memberId" placeholder="myid" maxlength="15"></td>
    <td><input type="checkbox" name="idSave" value="c1" <%=checkStr %>> 아이디 중복체크<br>
  </tr>
  <tr>
    <th>패스워드</th>
    <td><input type="password" name="password" placeholder="mypassword" maxlength="20"></td>
  </tr>
  <tr>
    <th>이메일</th>
    <td><input type="email" name="email" placeholder="abc123@gmail.com" maxlength="20"></td>
  </tr>
  <tr>
    <th>생년월일</th>
    <td><input type="date" name="birth" placeholder="2000.01.01"></td>
  </tr> 
  <tr>
    <th>전화번호</th>
    <td><input type="text" name="tel" maxlength="20"></td>
  </tr>
  <tr> 
  <tr>
    <th>주소</th>
    <td><input type="text" name="addr" placeholder="서울시 구로구 고척동 62-160" maxlength="50"></td>
  </tr>
  <tr>
    <th>상세주소</th>
    <td><input type="text" name="addrDetail" placeholder="동양미래대학교 3호관 1층 102호"></td>
  </tr>
  <tr>
    <td colspan=2 align=center><input type=reset value="취소"><input type=submit value="저장"></td>
	</tr>
	</table>	
</form>
</div>
</body>
</html>