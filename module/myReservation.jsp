<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>myReservation.jsp</title>
</head>
<body>
	<h3>나의 예약</h3>
	
	<section>
		<jsp:include page="myPageLeft.jsp" flush="false"/>
	</section>
	<section id="main">
    <!-- section main 시작 -->
    	<ul>
    		<li><a href="index.jsp?CONTENTPAGE=myReservation.jsp">나의 예약</a></li>
    		<li><a href="index.jsp?CONTENTPAGE=myReview.jsp">나의 리뷰</a></li>
    		<li><a href="index.jsp?CONTENTPAGE=myList.jsp">나의 찜목록</a></li>
    		<li> ----- </li>
    		<li><a href="index.jsp?CONTENTPAGE=myInformation.jsp">나의 정보</a></li>
    	</ul>
    
    	<section id="category1">
        <!-- section category1 시작 -->
            <div id="category1_menu">
                <ul>
                    <li><a href="#">항공</a></li>
                    <li class="selected"><a href="#">숙박</a></li>
                    <li><a href="#">투어 · 티켓</a></li>
                </ul>
            </div>
        </section> <!-- section category1 끝 -->
        <br>

        <section id="category2">
        <!-- section category2 시작 -->
            <div id="category2_title">
                <h3>2021.09.27</h3>
            </div>
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
                        	호텔 비지니스, 부산광역시 해운대구 XX로 123<br><br>
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