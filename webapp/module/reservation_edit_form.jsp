<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="reservationManagement.*"%>
    
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="css/form.css" type="text/css" media="screen" />

<script type="text/javascript">
	function delcheck() {
		result = confirm("정말로 삭제하시겠습니까 ?");
	
		if(result == true){
			document.reservation.action.value="delete";
			document.reservation.submit();
		}
		else
			return;
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원관리:수정화면</title>
</head>

<jsp:useBean id="rb" scope="session" class="reservationManagement.ReservationBook" />

<body>
<div id="main" align="center">
<H3>항공권 예약:수정화면 </H3>
<form name=reservation method=post action=reservation/reservation_control.jsp>
<input type=hidden name="member_id" value="<%=rb.getMember_id()%>">
<input type=hidden name="action" value="update">

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
    <th>좌석</th>
    <td><input type="text" name="seat" value="<%=rb.getSeat() %>"></td>
  </tr>
  <tr>
    <th>항공사이름</th>
    <td><select name="airplane_no">
		<option value="<%=rb.getAirplane_no() %>"><%=rb.getAirplane_no() %>
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
    <td><input type="datetime" name="departure_time" value="<%=rb.getDeparture_time() %>"></td>
  </tr>
  <tr>
    <th>도착시간</th>
    <td><input type="datetime" name="arrival_time" value="<%=rb.getArrival_time() %>"></td>
  </tr>
  <tr>
    <td colspan=2 align=center><input type=submit value="예약변경"><input type=reset value="취소"><input type="button" value="예약취소" onClick="delcheck()"></td>
  </tr>
</table>
</form>
</div>
</body>
</html>