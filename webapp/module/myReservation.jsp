<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, reservationManagement.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/reservation.css" type="text/css" media="screen" />

<script type="text/javascript">
	function check(reservation_no) {
		document.location.href="reservation/reservation_control.jsp?action=edit&reservation_no="+reservation_no;
	}
</script>
<meta charset="UTF-8">
<title>myReservation.jsp</title>
<link rel="stylesheet" href="css/reservation.css" type="text/css" media="screen" />
</head>

<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session"/>
<jsp:useBean id="rDatas" scope="session" class="java.util.ArrayList"/>
<body>
	<header>
	<!-- header 시작 -->
		<nav id="navi">
		<!-- navi 시작 -->
			<ul>
				<li><a href="index.jsp?CONTENTPAGE=content.jsp">
					<img src="img/home.png"></a></li>
				<li>&#5171;</li>
				<li><a href="index.jsp?CONTENTPAGE=myPage.jsp">마이페이지</a></li>
				<li>&#5171;</li>
				<li><a href="index.jsp?CONTENTPAGE=myReservation.jsp">나의 예약</a></li>
			</ul>
		</nav><!-- navi 끝 -->
	</header><!-- header 끝 -->
	
	<div id="main" align="center">
        	<h3>나의 예약</h3>
				<input type="button" value="항공">
                <input type="button" value="숙박"style="background-color: #bbb;">
               	<input type="button" value="투어·티켓" style="background-color: #bbb;">
          	
           <form method=post action="../reservation/reservation_control.jsp">
           		<input type=hidden name="member_id" value="<%=mb.getMember_id() %>">
				<input type=hidden name="action" value="edit">
				<table border="1">
					<tr>
						<th>예약번호</th>
						<th>예약자</th>
						<th>탑승일</th>
						<th>출발지</th>
						<th>도착지</th>
						<th>탑승인원</th>
						<th>좌석등급</th>
						<th>좌석</th>
						<th>항공사이름</th>
						<th>출발시간</th>
						<th>도착시간</th>
						<th>운임료</th>
					</tr>
					
					<% for(ReservationBook rb : (ArrayList<ReservationBook>)rDatas) {
					%>
						<tr>
							<td><a href="javascript:check(<%=rb.getReservation_no() %>)">
									<%=rb.getReservation_no() %>
								</a></td>
							<td>
								<%=rb.getMember_id() %>
							</td>
							<td>
								<%=rb.getDate() %>
							</td>
							<td>
								<%=rb.getStart_port() %>
							</td>
							<td>
								<%=rb.getEnd_port() %>
							</td>
							<td>
								<%=rb.getPassenger_number() %>
							</td>
							<td>
								<%=rb.getGrade() %>
							</td>
							<td>
								<%=rb.getSeat() %>
							</td>
							<td>
								<%=rb.getAirplane_no() %>
							</td>
							<td>
								<%=rb.getDeparture_time() %>
							</td>
							<td>
								<%=rb.getArrival_time() %>
							</td>
							<td>
								<%=rb.getFreightfee() %>
							</td>
						</tr>
					<% } %>
				</table>
			</form> 	
		</div>		
</body>
</html>