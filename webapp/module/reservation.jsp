<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, reservationManagement.*, memberManagement.*" %>

<jsp:useBean id="sDatas" scope="session" class="java.util.ArrayList" />

	<!DOCTYPE HTML>
	<html>

	<head>
		<link rel="stylesheet" href="css/reservation.css" type="text/css" media="screen" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>reservation.jsp</title>

	</head>
<body>
	<header>
		<!-- header 시작 -->
		<nav id="navi">
			<!-- navi 시작 -->
			<ul>
				<li><a href="index.jsp?CONTENTPAGE=content.jsp">
						<img src="img/home.png"></a></li>
				<li>&#5171;</li>
				<li><a href="index.jsp?CONTENTPAGE=joinForm.jsp">항공권 예약</a></li>
			</ul>
		</nav><!-- navi 끝 -->
	</header><!-- header 끝 -->

<div id="main" align="center">
<form name=reservation method=post action=reservation/reservation_control.jsp>
<input type=hidden name="action" value="csearch">

<h3>여정/날짜 선택</h3>
<input type="button" value="왕복" style="background-color: #bbb;">
<input type="button" value="편도">

<table border="1">
  <tr>
    <th>날짜</th>
    <td><input type="date" name="date"></td>
  </tr>
  <tr>
    <th>출발지</th>
    <td><select name="start_port">
		<option value="BKK">방콕
		<option value="CDG">파리
		<option value="CJU">제주
		<option value="GMP">김포
		<option value="GRU">상파울로
		<option value="HKG">홍콩
		<option value="HNL">하와이
		<option value="ICN">인천
		<option value="JFK">뉴욕
		<option value="KIX">오사카
		<option value="LHR">런던
		<option value="NRT">도쿄
		<option value="PEK">베이징
		<option value="PUS">부산
	</select></td>
  </tr>
  <tr>
    <th>도착지</th>
    <td><select name="end_port">
		<option value="BKK">방콕
		<option value="CDG">파리
		<option value="CJU">제주
		<option value="GMP">김포
		<option value="GRU">상파울로
		<option value="HKG">홍콩
		<option value="HNL">하와이
		<option value="ICN">인천
		<option value="JFK">뉴욕
		<option value="KIX">오사카
		<option value="LHR">런던
		<option value="NRT">도쿄
		<option value="PEK">베이징
		<option value="PUS">부산
	</select></td>
  </tr>
  <tr>
    <th>탑승인원</th>
    <td><input type="number" name="passenger_number"></td>
  </tr>
  <tr>
    <th>좌석등급</th>
    <td><select name="grade">
		<option value="이코노미">이코노미
		<option value="비지니스">비지니스
		<option value="퍼스트">퍼스트
	</select></td>
  </tr>
  <tr>
</table>
<input id="search" type="submit" value="항공권 조회">
</form>
</div>
</body>
</html>