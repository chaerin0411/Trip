<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>myList.jsp</title>
</head>
<body>
	<h3>나의 찜목록</h3>
	
	<section>
		<jsp:include page="myPageLeft.jsp" flush="false"/>
	</section>
	<section id="main">
    <!-- section main 시작 -->
    	<section id="category1">
        <!-- section category1 시작 -->
            <div id="category1_menu">
                <ul>
                    <li><a href="#">관광명소</a></li>
                    <li class="selected"><a href="#">맛집</a></li>
                </ul>
            </div>
        </section> <!-- section category1 끝 -->
        <br>

        <section id="category2">
        <!-- section category2 시작 -->
            <div id="category2_title">
                <h3>피자</h3>
            </div>
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