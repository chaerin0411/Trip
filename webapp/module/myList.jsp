<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>myList.jsp</title>
	<link rel="stylesheet" href="css/reservation.css" type="text/css" media="screen" />
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
				<li><a href="index.jsp?CONTENTPAGE=myPage.jsp">마이페이지</a></li>
				<li>&#5171;</li>
				<li><a href="index.jsp?CONTENTPAGE=myList.jsp">나의 찜목록</a></li>
			</ul>
		</nav><!-- navi 끝 -->
	</header><!-- header 끝 -->
	
	<section id="main">
    <!-- section main 시작 -->
    	<section id="category1">
        <!-- section category1 시작 -->
        	<h3>나의 찜목록</h3>
        	<div>
				<input type="button" value="관광명소" style="background-color: #bbb;">
            	<input type="button" value="맛집">
      		</div>
        </section> <!-- section category1 끝 -->
        <br>

        <section id="category2">
        <!-- section category2 시작 -->
            <h3>피자</h3>
            <div id="category2_travel">
                <!-- category2_travel 시작 -->          
                <div class="items">
                    <a href="#"><img src="img/osaka.jpg"></a>
                    <div class="itemp">
                        <p class="title">이재모피자</p>
                        <p class="comment">
                        	치즈가 듬뿍 들어간 30년 전통의 로컬 피자 맛집<br>
                        	4.5(571)  ·  찜 723<br>
                        	330km ｜ 맛집 · 피자<br><br>
                        	주소: 부산광역시 중구 광복중앙로 XX<br>
							전화:+82-1234-1234<br>
							홈페이지: https://www.instagram.com/leejeamo…<br><br>
							이용가능시간: 평일 11:00 - 22:00 (일요일 휴무)                       	
                       	</p>
                        <p class="price"></p>
                        <hr>
                    </div>
                    <div class="itemp">
                        <p class="title">이재모피자</p>
                        <p class="comment">
                        	치즈가 듬뿍 들어간 30년 전통의 로컬 피자 맛집<br>
                        	4.5(571)  ·  찜 723<br>
                        	330km ｜ 맛집 · 피자<br><br>
                        	주소: 부산광역시 중구 광복중앙로 XX<br>
							전화:+82-1234-1234<br>
							홈페이지: https://www.instagram.com/leejeamo…<br><br>
							이용가능시간: 평일 11:00 - 22:00 (일요일 휴무)          	
                       	</p>
                        <p class="price"></p>
                        <hr>
                    </div> 
                </div>                                      
            </div> <!-- category2_travel 끝 -->
        </section> <!-- section category2 끝 -->
    </section> <!-- section main 끝 -->
</body>
</html>