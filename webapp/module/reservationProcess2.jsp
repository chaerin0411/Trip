<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*, reservationManagement.*, memberManagement.*"%>

<jsp:useBean id="rbean" class="reservationManagement.ReservationBean" scope="session" />
<jsp:useBean id="rb" class="reservationManagement.ReservationBook" scope="session" />
<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session" />
<jsp:useBean id="sb" class="reservationManagement.ReservationBook" scope="session"/>

<%
	String seat = (String)session.getAttribute("seat");
	String sCheck = (String)session.getAttribute("sCheck");
	if(sCheck != null) { %>
		<script>alert("이미 예약된 좌석입니다!");</script>
	<% }
%>

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
	<header><!-- header 시작 -->
		<nav id="navi"><!-- navi 시작 -->
			<ul>
				<li><a href="index.jsp?CONTENTPAGE=content.jsp">
					<img src="img/home.png"></a></li>
				<li>&#5171;</li>
				<li><a href="index.jsp?CONTENTPAGE=reservation.jsp">항공권 예약</a></li>
			</ul>
		</nav><!-- navi 끝 -->
	</header><!-- header 끝 -->

	<div id="main" align="center">
		<form name=reservation method=post action=reservation/reservation_control.jsp>
			<input type=hidden name="member_id" value="<%=mb.getMember_id()%>">
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
					<td><%=sb.getSchedule_no()%></td>
					<td><%=sb.getAirplane_no()%></td>
					<td><%=sb.getDeparture_time()%></td>
					<td><%=sb.getArrival_time()%></td>
					<td><%=sb.getStart_port()%></td>
					<td><%=sb.getEnd_port()%></td>
					<td><%=sb.getFreightfee()%></td>
				</tr>
			</table>

			<h3>좌석 선택</h3>
			<table border="1">
				<tr>
					<th>좌석</th>
					<td><a href="index.jsp?CONTENTPAGE=<%= seat %>.jsp">
						<input type="text" name="seat" placeholder="AA01"
							value="<%=rb.getServe_seat_no()%>"></a></td>
				</tr>
				<tr>
					<th>좌석등급</th>
					<td style="text-transform: uppercase;"><%=rb.getGrade()%></td>
				</tr>
				<tr>
					<th>티켓가격</th> <!-- 임시데이터 -->
					<% rb.setTicket_price(85960); %>
					<td><input type="text" name="ticket" placeholder="85960"
						value="<%=rb.getTicket_price()%>"></td>
				</tr>
			</table>

			<h3>항공권 예약 확인</h3>
			<table border="1">
				<tr>
					<th>날짜</th>
					<td><%=rb.getDate()%></td>
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
					<th>탑승인원</th>
					<td><%=rb.getPassenger_number()%></td>
				</tr>
				<tr>
				<tr>
					<th>항공사이름</th>
					<td><%= rbean.getAirplane(sb.getAirplane_no()) %>
						(<%= sb.getAirplane_no() %>)</td>
				</tr>
			</table>
			<input id="search" type="submit" value="예약">
			<input id="search" type="reset" value="취소">
		</form>
	</div>
</body>
</html>