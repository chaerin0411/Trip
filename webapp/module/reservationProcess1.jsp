<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*, reservationManagement.*, memberManagement.*"%>
<%
	String selop = (String)request.getAttribute("selop");
	String pa = "", pd = "", da = "", dd = "";
	if(selop == null) selop = "";
	if(selop.equals("pa")) pa="selected";
	if(selop.equals("pd")) pd="selected";
	if(selop.equals("da")) da="selected";
	if(selop.equals("dd")) dd="selected";
%>
<jsp:useBean id="sDatas" scope="session" class="java.util.ArrayList" />

<head>
	<link rel="stylesheet" href="css/formreserve.css" type="text/css" media="screen" />
	<script type="text/javascript">
		function select(schedule_no) { 
			document.location.href = 
				"reservation/reservation_control.jsp?action=ssearch&SCHEDULE_NO="+schedule_no;
		}
	</script>
</head>

<!-- reservationProcess1.jsp -->
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

<!-- section main 시작 -->
<section id="main">
	<form name=reservation method=post
		action=reservation/reservation_control.jsp>
		<input type=hidden name="action" value="ssearch">
		
		<!-- 선택 시작 -->
		<div id="selop">
			<h3>항공사별 가격비교</h3>
			<select name="order" onchange="location.href=this.value">
				<option value="reservation/reservation_control.jsp?action=lowPrice" <%= pa %>>가격 낮은 순
				<option value="reservation/reservation_control.jsp?action=highPrice" <%= pd %>>가격 높은 순
				<option value="reservation/reservation_control.jsp?action=fastDeparture" <%= da %>>출발시간 빠른 순
				<option value="reservation/reservation_control.jsp?action=lowDeparture" <%= dd %>>출발시간 느린 순
			</select>
		</div>
		<table>
			<tr>
				<th>일정번호</th>
				<th>항공사</th>
				<th>출발시간</th>
				<th>도착시간</th>
				<th>출발지</th>
				<th>도착지</th>
				<th>운임료</th>
			</tr>
			<% for(ReservationBook sb : (ArrayList<ReservationBook>)sDatas) { %>
			<tr>
				<td class="ths">
					<a href="javascript:select('<%= sb.getSchedule_no() %>')">
					<%= sb.getSchedule_no() %></a></td>
				<td><%= sb.getAirplane_no() %></td>
				<td><%= sb.getDeparture_time() %></td>
				<td><%= sb.getArrival_time() %></td>
				<td><%= sb.getStart_port() %></td>
				<td><%= sb.getEnd_port() %></td>
				<td><%= sb.getFreightfee() %></td>
			</tr>
			<% } %>
		</table><!-- 선택 끝 -->
	</form>
</section><!-- section main 끝 -->
</body>