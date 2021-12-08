<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- information.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>항공권 예약 사이트 - 여행지 정보</title>
<link rel="stylesheet" href="css/information.css" type="text/css" media="screen" />
</head>
<body>
<%
	String verified = (String)session.getAttribute("verified");
	if (verified != null) { %>
		<script>alert("이미 찜한 상품입니다!");</script><%
		session.removeAttribute("verified");
	}
%>
<header>
<!-- header 시작 -->
	<nav id="navi">
	<!-- navi 시작 -->
		<ul>
			<li><a href="index.jsp?CONTENTPAGE=content.jsp">
				<img src="img/home.png"></a></li>
			<li>&#5171;</li>
			<li><a href="index.jsp?CONTENTPAGE=information.jsp">여행지 정보</a></li>
		</ul>
	</nav><!-- navi 끝 -->
</header><!-- header 끝 -->

<section id="main">
<!-- section main 시작 -->
	<section id="category1">
	<!-- section category1 시작 -->
			<h3>국내여행</h3>
			<ul>
				<li>가평·양평</li>
				<li>강릉·속초</li>
				<li>경주</li>
				<li style="color: rgba(32, 104, 143, 0.5);">부산</li>
				<li>여수</li>
				<li>인천</li>
				<li>전주</li>
			</ul>
			<select>
				<option value="국내">국내
				<option value="해외">해외	
			</select>
			<input type="search" placeholder="search">
	</section> <!-- section category1 끝 -->
		
	<section id="category2">
	<!-- section category2 시작 -->
		<div id="category2_title">
			<h3>관광명소</h3>
			<h4>요새 부산에서 핫한 관광지는?</h4>
		</div>
		<div id="category2_travel">
		<!-- category2_travel 시작 -->           
			<div class="items">
				<a href="cart/cart_control.jsp?action=search&product_no=P001"><img src="img/bridge.JPG"></a>
				<div class="itemp">
				<p class="title">광안대교</p>
				<p class="comment">관광명소 부산 수영구<br>교량, 다리</p>
				<p class="price">평점 4.5(252)</p>
				</div>
			</div>                    
			<div class="items">
				<a href="cart/cart_control.jsp?action=search&product_no=P002"><img src="img/thebay.jpg"></a>
				<div class="itemp">
				<p class="title">더베이101</p>
				<p class="comment">관광명소 부산 해운대구<br>문화시설</p>
				<p class="price">평점 4.8(124)</p>
				</div>
			</div>                                       
			<div class="items">	
				<a href="cart/cart_control.jsp?action=search&product_no=P003"><img src="img/sujung.jpg"></a>
				<div class="itemp">
				<p class="title">수정동</p>
				<p class="comment">관광명소 부산 동구<br>마을</p>
				<p class="price">평점 4.1(156)</p>
				</div>
			</div> 
		</div> <!-- category2_travel 끝 -->
	</section> <!-- section category2 끝 -->
	
	<section id="category2">
	<!-- section category2 시작 -->
		<div id="category2_title">
			<h3>맛집</h3>
			<h4>요새 부산에서 핫한 맛집은?</h4>
		</div>
		<div id="category2_travel">
		<!-- category2_travel 시작 -->           
			<div class="items">
				<a href="cart/cart_control.jsp?action=search&product_no=P004"><img src="img/gukbab.png"></a>
				<div class="itemp">
				<p class="title">수변최고돼지국밥</p>
				<p class="comment">맛집 부산 수영구<br>국밥</p>
				<p class="price">평점 4.2(115)</p>
				</div>
			</div>                    
			<div class="items">
				<a href="cart/cart_control.jsp?action=search&product_no=P005"><img src="img/magnate.png"></a>
				<div class="itemp">
				<p class="title">메그네이트</p>
				<p class="comment">맛집 부산 남구<br>카페</p>
				<p class="price">평점 3.9(227)</p>
				</div>
			</div>                                       
			<div class="items">
				<a href="cart/cart_control.jsp?action=search&product_no=P006"><img src="img/pizza.jpg"></a>
				<div class="itemp">
				<p class="title">이재모피자</p>
				<p class="comment">맛집 부산 중구<br>피자</p>
				<p class="price">평점 4.5(571)</p>
				</div>
			</div>                 
		</div> <!-- category2_travel 끝 -->
	</section> <!-- section category2 끝 -->
</section> <!-- section main 끝 -->
</body>
</html>