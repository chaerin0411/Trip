<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="reservationManagement.*"%>

<jsp:useBean id="rbean" class="reservationManagement.ReservationBean" scope="session" />
<jsp:useBean id="rb" scope="session" class="reservationManagement.ReservationBook" />

<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="css/form.css" type="text/css" media="screen" />
<script type="text/javascript">
function reserveCnl() {
	alert("예약 정보 변경 불가: 예약 취소 후 다시 예약해주세요!");
}
function delcheck() {
	result = confirm("정말로 삭제하시겠습니까 ?");
	if (result == true) {
		document.reservation.action.value = "delete";
		document.reservation.submit();
	} else return;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원관리:수정화면</title>
</head>

<body>
	<div id="main" align="center">
		<H3>항공권 예약:수정화면</H3>
		<form name=reservation method=post action=reservation/reservation_control.jsp>
			<input type=hidden name="member_id" value="<%=rb.getMember_id()%>">
			<input type=hidden name="action" value="update">

			<table border="1">
				<tr>
					<th>날짜</th>
					<td><%= rb.getDate() %></td>
				</tr>
				<tr>
					<th>출발지</th>
					<td><%= rbean.getAirport(rb.getStart_port()) %>
						(<%= rb.getStart_port() %>)</td>
				</tr>
				<tr>
					<th>도착지</th>
					<td><%= rbean.getAirport(rb.getEnd_port()) %>
						(<%= rb.getEnd_port() %>)</td>
				</tr>
				<tr>
				<tr>
					<th>항공사이름</th>
					<td><%= rbean.getAirplane(rb.getAirplane_no()) %>
						(<%= rb.getAirplane_no() %>)</td>
				</tr>
				<tr>
					<th>좌석등급</th>
					<td><%= rb.getGrade() %></td>
				</tr>
				<tr>
					<th>좌석번호</th>
					<td><%= rb.getServe_seat_no() %></td>
				</tr>
				<tr>
					<th>출발시간</th>
					<td><%=rb.getDeparture_time()%></td>
				</tr>
				<tr>
					<th>도착시간</th>
					<td><%=rb.getArrival_time() %></td>
				</tr>
				<tr>
					<td colspan=2 align=center>
						<input type=submit value="목록으로">
						<input type="button" value="예약변경" onClick="reserveCnl()">
						<input type="button" value="예약취소" onClick="delcheck()">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>