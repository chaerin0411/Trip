<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
	<link rel="stylesheet" href="css/form.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/my.css" type="text/css" media="screen" />
</head>

<!-- myReview.jsp -->
<body>
<header><!-- header 시작 -->
	<nav id="navi"><!-- navi 시작 -->
		<ul>
			<li><a href="index.jsp?CONTENTPAGE=content.jsp">
				<img src="img/home.png"></a></li>
			<li>&#5171;</li>
			<li><a href="index.jsp?CONTENTPAGE=myReview.jsp">나의 리뷰</a></li>
		</ul>
	</nav><!-- navi 끝 -->
	<jsp:include page="left.jsp" flush="false"/>
</header><!-- header 끝 -->

<!-- section main 시작 -->
<section id="main">

	<!-- section category1 시작 -->
	<section id="category1">
		<div id="search">
			<h3>나의 리뷰</h3>
			<input type="button" value="관광명소" style="background-color: #BBB;">
			<input type="button" value="맛집"><br>
			<select><option value="카테고리 전체">카테고리 전체</select>
			<input type="date" placeholder="search"> ~
			<input type="date" placeholder="search"> <input type="search" placeholder="search">
		</div>

		<h3>2021.09.27</h3><br>
		<!-- category1_list 시작 -->
		<div id="category1_list">
			<div class="items">
				<a href="#"><img src="img/ellisia.png"></a>
				<div class="itemp">
					<p class="title">엘리시아</p>
					<p class="comment">
						룸B 402호<br> 2021.10.08(금) ~ 2021.10.09(토), 1박<br> 자차<br>
						체크인 15:00 ~ 체크아웃 11:00<br> 호텔 · 비지니스, 부산광역시 해운대구 XX로 123<br>
						<br> 대표전화: 000-0000-0000<br>
						<br> 리뷰 내용<br> 방도 넓고 깨끗하고 직원들도 친절하고
						<br> 사랑하는 사람들이랑 좋은 시간 보내다왔어요 ㅎㅎ
					</p>
				</div>
			</div>
		</div><!-- category1_list 끝 -->
	</section><!-- section category1 끝 -->
</section><!-- section main 끝 -->
</body>