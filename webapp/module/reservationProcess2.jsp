<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, reservationManagement.*, memberManagement.*" %>

<jsp:useBean id="rb" class="reservationManagement.ReservationBook" scope="session"/>
<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session"/>
<jsp:useBean id="sb" class="reservationManagement.ReservationBook" scope="session"/>

	<!DOCTYPE HTML>
	<html>

	<head>
		<link rel="stylesheet" href="css/reservation.css" type="text/css" media="screen" />

<script type="text/javascript">
function select(schedule_no) {
	document.location.href = "reservation/reservation_control.jsp?action=ssearch&schedule_no="+schedule_no;
}
</script>
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
<input type=hidden name="member_id" value="<%=mb.getMember_id() %>">
<input type=hidden name="action" value="insert">
<h3>항공편</h3>
		<table border="1">
			<tr>
				<th>일정번호</th>
				<th>항공사</th>
				<th>출발시간</th>
				<th>도착시간</th>
				<th>출발지</th>
				<th>도착지</th>
				<th>운임료</th>
			</tr>
			<tr>
				<td><%=sb.getSchedule_no() %></td>
				<td><%=sb.getAirplane_no() %></td>
				<td><%=sb.getDeparture_time() %></td>
				<td><%=sb.getArrival_time() %></td>
				<td><%=sb.getStart_port() %></td>
				<td><%=sb.getEnd_port() %></td>
				<td><%=sb.getFreightfee() %></td>
			</tr>
		</table>
		
<h3>좌석 선택</h3>		
<table border="1">
  <tr>
    <th>좌석</th>
    <td><input type="text" name="seat" placeholder="AA01" value="<%=rb.getSeat() %>"></td>
  </tr>
</table>
		
<h3>항공권 예약 확인</h3>		
<table border="1">
  <tr>
    <th>날짜</th>
    <td><input type="date" name="date" value="<%=rb.getDate() %>"></td>
  </tr>
  <tr>
    <th>출발지</th>
    <td><select name="start_port">
		<option value="<%=rb.getStart_port() %>"><%=rb.getStart_port() %>
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
		<option value="<%=rb.getEnd_port() %>"><%=rb.getEnd_port() %>
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
    <td><input type="number" name="passenger_number" value="<%=rb.getPassenger_number() %>"></td>
  </tr>
  <tr>
    <th>좌석등급</th>
    <td><select name="grade">
		<option value="<%=rb.getGrade() %>"><%=rb.getGrade() %>
		<option value="이코노미">이코노미
		<option value="비지니스">비지니스
		<option value="퍼스트">퍼스트
	</select></td>
  </tr>
  <tr>
  <tr>
    <th>항공사이름</th>
    <td><select name="airplane_no">
		<option value="<%=sb.getAirplane_no() %>"><%=sb.getAirplane_no() %>
		<option value="AA">아시아나항공
		<option value="AI">에어인천
		<option value="AP">에어부산
		<option value="AS">에어서울
		<option value="ET">이스타항공
		<option value="FK">플라이강원
		<option value="JA">진에어
		<option value="JJ">제주항공
		<option value="TW">티웨이항공
	</select></td>
  </tr>
  <tr>
    <th>출발시간</th>
    <td><input type="datetime" name="departure_time" value="<%=sb.getDeparture_time() %>"></td>
  </tr>
  <tr>
    <th>도착시간</th>
    <td><input type="datetime" name="arrival_time" value="<%=sb.getArrival_time() %>"></td>
  </tr>
  <tr>
    <th>운임료</th>
    <td><input type="number" name="freightfee" value="<%=sb.getFreightfee() %>"></td>
  </tr>
</table>
<input id="search" type="submit" value="예약">
<input id="search" type="reset" value="취소">
</form>
</div>
</body>
</html>