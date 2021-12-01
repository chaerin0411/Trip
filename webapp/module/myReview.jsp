<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>myReview.jsp</title>
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
				<li><a href="index.jsp?CONTENTPAGE=myReview.jsp">나의 리뷰</a></li>
			</ul>
		</nav><!-- navi 끝 -->
	</header><!-- header 끝 -->
		
	<section id="main">
    <!-- section main 시작 -->
		
    	<section id="category1">
        <!-- section category1 시작 -->
        	<h3>나의 리뷰</h3>
        <div>
			<input type="button" value="항공" style="background-color: #bbb;">
            <input type="button" value="숙박">
            <input type="button" value="투어·티켓" style="background-color: #bbb;">
      	</div>
        </section> <!-- section category1 끝 -->
        <br>

        <section id="category2">
        <!-- section category2 시작 -->
                <h3>2021.09.27</h3>
            <div id="category2_travel">
                <!-- category2_travel 시작 -->          
                <div class="items">
                    <a href="#"><img src="img/osaka.jpg"></a>
                    <div class="itemp">
                        <p class="title">엘리시아</p>
                        <p class="comment">
                        	룸B 402호<br>
                        	2021.10.08(금) ~ 2021.10.09(토), 1박<br>
                        	자차<br>
                        	체크인 15:00 ~ 체크아웃 11:00<br>
                        	호텔 · 비지니스, 부산광역시 해운대구 XX로 123<br><br>
                        	대표전화: 000-0000-0000
                       	</p>
                        <p class="price"></p>
                    </div>
                </div>                                      
            </div> <!-- category2_travel 끝 -->
        </section> <!-- section category2 끝 -->
    </section> <!-- section main 끝 -->
</body>
</html>