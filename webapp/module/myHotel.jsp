<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session"/>

<head>
	<link rel="stylesheet" href="css/index.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/form.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/reserve.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/my.css" type="text/css" media="screen" />
</head>

<!-- myHotel.jsp -->
<body>
<header><!-- header 시작 -->
	<nav id="navi"><!-- navi 시작 -->
		<ul>
			<li><a href="index.jsp?CONTENTPAGE=content.jsp">
				<img src="img/home.png"></a></li>
			<li>&#5171;</li>
			<li><a href="index.jsp?CONTENTPAGE=myFlight.jsp">마이 페이지</a></li>
			<li>&#5171;</li>
			<li><a href="index.jsp?CONTENTPAGE=myHotel.jsp">나의 예약 - 숙박</a></li>
		</ul>
	</nav><!-- navi 끝 -->
	<jsp:include page="left.jsp" flush="false"/>
</header><!-- header 끝 -->

<!-- section main 시작 --> 
<section id="main">
	<!-- section category 시작 -->
	<section id="category">
		<h3>나의 예약</h3>
		<input type="button" value="항공">
        <input class="selected" type="button" value="숙박" >
        <input type="button" value="투어·티켓"><br>

		<div id="search">
            <select><option value="카테고리 전체">카테고리 전체</select>
			<input type="date" placeholder="search"> ~
			<input type="date" placeholder="search">
			<input type="search" placeholder="search">
        </div>
      	
        <!-- category_list 시작 -->
       	<div id="category_list">
			<div class="items">
				<div class="ihead">
					<h3>2021.09.27(월)</h3>
					<a href="#">상세보기 》</a>
				</div>
				<div class="idetail">숙소 예약번호: 210927123454732891029</div>
				<img src="img/ellisia.png">
				<div class="itemp">
					<p class="title">엘리시아</p>
					<p class="comment">
						<b>룸B 402호</b><br>
						2021.10.08(금) ~ 2021.10.09(토), 1박<br>
						자차<br>
						체크인 15:00 ~ 체크아웃 11:00<br>
						호텔 비지니스, 부산광역시 해운대구 XX로 123<br><br>
						대표전화: 000-0000-0000
					</p>
				</div>
				<div class="ibtn">
					<input type="submit" value="취소 요청">
					<input type="submit" value="이용 정보">
				</div>
			</div>
		</div><!-- category_list 끝 -->
	</section><!-- section category 끝 -->
</section><!-- section main 끝 -->
</body>