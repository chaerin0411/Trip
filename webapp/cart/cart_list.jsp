<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="manager_error.jsp" import="java.util.*, cartManagement.*"%>
<jsp:useBean id="cDatas" scope="session" class="java.util.ArrayList"/>

<head>
	<link rel="stylesheet" href="../css/index.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../css/manage.css" type="text/css" media="screen" />
</head>

<!-- cart_list.jsp -->
<body><br><br>
	<header><!-- header 시작 -->
		<jsp:include page="../management/top.jsp" flush="false" />
		<nav id="navi"><!-- navi 시작 -->
			<ul>
				<li><a href="../index.jsp?CONTENTPAGE=content.jsp"> <img
						src="../img/home.png"></a></li>
				<li>&#5171;</li>
				<li>찜목록관리:목록화면</li>
			</ul>
		</nav><!-- navi 끝 -->
	</header><!-- header 끝 -->

	<!-- div center 시작 -->
	<div align="center"><br><br>
		<h3>찜목록관리:목록화면</h3><hr><br><br>
		<form>
			<h2><a href="../management/manager_list.jsp">[회원관리:목록화면]</a></h2>
			<table border="1">
				<tr>
					<th>찜목록번호</th>
					<th>회원아이디</th>
					<th>상품번호</th>
					<th>상품이름</th>
					<th>위치</th>
					<th>상품상세</th>
					<th>평점</th>
					<th>리뷰수</th>
					<th>상품구분</th>
					<th>이용시간</th>
					<th>전화번호</th>
				</tr>

				<% for (CartBook cb : (ArrayList<CartBook>) cDatas) { %>
				<tr>
					<td><%=cb.getCart_no()%></td>
					<td><%=cb.getMember_id()%></td>
					<td><%=cb.getProduct_no()%></td>
					<td><%=cb.getProduct_name()%></td>
					<td><%=cb.getLocation()%></td>
					<td><%=cb.getProduct_detail()%></td>
					<td><%=cb.getRatings()%></td>
					<td><%=cb.getReview()%></td>
					<td><%=cb.getDistinguishing()%></td>
					<td><%=cb.getTime()%></td>
					<td><%=cb.getTel()%></td>
				</tr>
				<% } %>
			</table>
		</form>
	<footer><jsp:include page="../module/bottom.jsp" flush="false" /></footer>
	</div><!-- div center 끝 -->
</body>