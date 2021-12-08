<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="reservationManagement.*"%>

<jsp:useBean id="cb" scope="session" class="cartManagement.CartBook" />

<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="css/form.css" type="text/css" media="screen" />
<script type="text/javascript">
function delcheck() {
	result = confirm("정말로 삭제하시겠습니까 ?");
	if (result == true) {
		document.cart.action.value = "delete";
		document.cart.submit();
	} else return;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜목록관리:수정화면</title>
</head>

<body>
	<div id="main" align="center">
		<H3>찜목록:수정화면</H3>
		<form name=cart method=post action=cart/cart_control.jsp>
			<input type=hidden name="member_id" value="<%=cb.getCart_no()%>">
			<input type=hidden name="action" value="delete">

			<table border="1">
				<tr>
					<th>찜목록번호</th>
					<td><%=cb.getCart_no() %></td>
				</tr>
				<tr>
					<th>상품번호</th>
					<td><%=cb.getProduct_no() %></td>
				</tr>
				<tr>
					<th>상품이름</th>
					<td><%=cb.getProduct_name() %></td>
				</tr>
				<tr>
					<th>위치</th>
					<td><%=cb.getLocation() %></td>
				</tr>
				<tr>
					<th>상품상세</th>
					<td><%=cb.getProduct_detail() %></td>
				</tr>
				<tr>
					<th>평점</th>
					<td><%=cb.getRatings() %></td>	
				</tr>
				<tr>
					<th>리뷰수</th>
					<td><%=cb.getReview() %></td>	
				</tr>
				<tr>
					<th>상품구분</th>
					<td><%=cb.getDistinguishing() %></td>
				</tr>				
				<tr>
					<th>이용시간</th>
					<td><%=cb.getTime() %></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><%=cb.getTel() %></td>
				</tr>
				<tr>
					<th>경로</th>
					<td><%=cb.getSrc() %></td>
				</tr>
				<tr>
					<td colspan=2 align=center>
						<input type=submit value="찜취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>