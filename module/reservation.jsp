<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/form.css">
<head>
</head>
<body>
	<header>
	<!-- header 시작 -->
		<nav id="navi">
		<!-- navi 시작 -->
            <ul>
                <li><a href="index.jsp?CONTENTPAGE=content.jsp"><img src="img/home.png"></a></li>
                <li>&#5171;</li>
                <li><a href="index.jsp?CONTENTPAGE=loginForm.jsp">항공권 예약</a></li>
            </ul>
        </nav> <!-- navi 끝 -->
    </header> <!-- header 끝 -->
    
<section id="main">
<!-- section main 시작 -->
	<section id="category1">
	<!-- section category1 시작 -->
		<div>
			<h1 class="title">여정/날짜 선택</h1>
			<input type="button" value="왕복">
			<input type="button" value="편도"><br>
			<input type="text" value="출발지">
			<input type="text" value="도착지">
			<input type="text" value="탑승일"><br>
			가는날 <input class="clear" type="date">
			오는날 <input type="date">

		</div>
		<div>
			<h1 class="title">탑승 인원 선택</h1>
			<ul>
				<li>성인<input type="text"></li><br>
				<li>소아<input type="text"></li><br>
				<li>유아<input type="text"></li><br>
			</ul>
		</div>
		<div>
			<h1 class="title">좌석등급 선택</h1>
			<input type="button" value="이코노미">
			<input type="button" value="비지니스">
			<input type="button" value="퍼스트"><br>
			<input type="checkbox" checked>출도착편 다른 좌석등급(선택)<br>
			<input type="checkbox" checked>이코노미 특가 좌석(선택)<br>
		</div>
		<input type="button" value="항공권 조회"><br>
	</section> <!-- section category1 끝 -->
	
	<section id="category2">
	<!-- section category2 시작 -->
		<h1 class="title">항공사별 가격비교</h1>
	</section> <!-- section category2 끝 -->
</section> <!-- section main 끝 -->
</body>
</html>
