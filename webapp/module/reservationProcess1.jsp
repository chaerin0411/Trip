<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, reservationManagement.*, memberManagement.*" %>

<jsp:useBean id="sDatas" scope="session" class="java.util.ArrayList" />

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
<input type=hidden name="action" value="ssearch">
	<h3>항공사별 가격비교</h3>
	<select name="order">
		<option value="lowPrice">가격낮은순
		<option value="highPrice">가격높은순
		<option value="fastDeparture">출발시간빠른순
		<option value="lowDeparture">출발시간느린순
	</select>

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
<%
			for(ReservationBook sb : (ArrayList<ReservationBook>)sDatas) {
%>		
			  <tr>
							<td><a href="javascript:select('<%=sb.getSchedule_no() %>')">
									<%=sb.getSchedule_no() %>
								</a></td>
							<td>
								<%=sb.getAirplane_no() %>
							</td>
							<td>
								<%=sb.getDeparture_time() %>
							</td>
							<td>
								<%=sb.getArrival_time() %>	
							</td>											
							<td>
								<%=sb.getStart_port() %>
							</td>
							<td>
								<%=sb.getEnd_port() %>
							</td>							
							<td>
								<%=sb.getFreightfee() %>
							</td>
						</tr>
			 <%
				}
			 %>
		</table>
</form>
</div>
</body>
</html>