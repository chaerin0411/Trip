<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="js/index.js"></script>
        <title>항공권 예약 사이트</title>
    </head>

    <body>
        <header>
            <!-- header 시작 -->
            <section id="top">
                <!-- section top 시작 -->
                <a id="logo" href="index.jsp"><img id="logo_img" src="img/logo.png"></a>
                <nav id="top_menu">
                    <ul>
                        <li class="bdright"><a href="#">로그인</a></li>
                        <li><a href="#">회원가입</a></li>
                        <li id="member"><a href="#"><img id="member_img" src="img/member.png"></a></li>
                    </ul>
                </nav>
                <nav id="main_menu">
                    <ul>
                        <li><a href="index.jsp">메인</a></li>
                        <li><a href="#">항공권 예약</a></li>
                        <li><a href="#">여행지 정보</a></li>
                        <li><a href="#">마이페이지</a></li>
                    </ul>
                </nav>
            </section> <!-- section top 끝 -->
        </header> <!-- header 끝 -->

        <section id="main">
            <!-- section main 시작 -->

            <section id="category1">
                <!-- section category1 시작 -->
                <div id="category1_carousel">
                    <img id="cimg_1" src="img/c1.jpg">
                    <ul>
                        <li>
                            <div class="selected"></div>
                        </li>
                        <li>
                            <div></div>
                        </li>
                        <li>
                            <div></div>
                        </li>
                        <li>
                            <div></div>
                        </li>
                    </ul>
                    <img id="clarr" class="carr" src="img/larrow.png">
                    <img id="crarr" class="carr" src="img/rarrow.png">
                </div>
                <div id="category1_menu">
                    <ul>
                        <li class="selected"><a href="#"><b>&#128462;</b> 예약 조회</a></li>
                        <li><a href="#"><b>&#128477;</b> 체크인</a></li>
                        <li><a href="#"><b>&#9992;</b> 항공권 현황</a></li>
                    </ul>
                </div>
            </section> <!-- section category1 끝 -->
            <br>

            <section id="category2">
                <!-- section category2 시작 -->
                <div id="category2_title">
                    <h3>여행지 추천</h3>
                </div>
                <div id="category2_travel">
                    <!-- category2_travel 시작 -->
                    <a href="#">
                        <div class="item">
                            <img src="img/osaka.jpg">
                            <div class="itemp">
                                <p class="title">서울/인천 - 오사카</p>
                                <p class="comment">일반석 왕복</p>
                                <p class="price">KRW 270,000원 ~</p>
                            </div>
                        </div>
                    </a>
                    <a href="#">
                        <div class="item">
                            <img src="img/hongkong.jpg">
                            <div class="itemp">
                                <p class="title">서울/인천 - 홍콩</p>
                                <p class="comment">일반석 왕복</p>
                                <p class="price">KRW 380,000원 ~</p>
                            </div>
                        </div>
                    </a>
                    <a href="#">
                        <div class="item">
                            <img src="img/brazil.jpg">
                            <div class="itemp">
                                <p class="title">서울/인천 - 브라질</p>
                                <p class="comment">일반석 왕복</p>
                                <p class="price">KRW 520,000원 ~</p>
                            </div>
                        </div>
                    </a>
                    <a href="#">
                        <div class="item">
                            <img src="img/hawaii.jpg">
                            <div class="itemp">
                                <p class="title">서울/인천 - 하와이</p>
                                <p class="comment">일반석 왕복</p>
                                <p class="price">KRW 700,000원 ~</p>
                            </div>
                        </div>
                    </a>
                </div> <!-- category2_travel 끝 -->

                <div id="category2_travel_img">
                    <div id="category2_travel_imgcmt">
                        <p><b>여행의 모든 것</b></p>
                        <p><b>TRIP으로 한번에</b></p>
                        <p class="firstp">흩어져 있는 여행정보를 한눈에</p>
                        <p>깔끔하고 자세한 도시별 가이드</p>
                        <p>여행을 공유하는 소통의 장소</p>
                        <p>검색 지옥에서 해방될 시간</p>
                    </div>
                    <img src="img/triple.png">
                </div>
            </section> <!-- section category2 끝 -->
        </section> <!-- section main 끝 -->

        <footer>
            <!-- footer 시작 -->
            <section id="footer_menu_box">
                <!-- section footer_menu_box 시작 -->
                <nav id="footer_menu">
                    <!-- footer_menu 시작 -->
                    <ul>
                        <li class="footer_title"><a href="#">회사소개</a></li>
                        <li><a href="#">TRIP에 대하여</a></li>
                        <li><a href="#">기업지배구조</a></li>
                        <li><a href="#">투자정보</a></li>
                        <li><a href="#">지속가능경영</a></li>
                        <li><a href="#">뉴스룸</a></li>
                    </ul>
                    <ul>
                        <li class="footer_title">고객지원</li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">챗봇 서비스</a></li>
                        <li><a href="#">자주 묻는 질문</a></li>
                        <li><a href="#">고객의 말씀</a></li>
                        <li><a href="#">서비스 센터</a></li>
                        <li><a href="#">e-서식함</a></li>
                    </ul>
                    <ul>
                        <li class="footer_title">약관 및 규정</li>
                        <li><a href="#">개인정보 처리방침</a></li>
                        <li><a href="#">이용약관</a></li>
                        <li><a href="#">운송약관 및 고지사항</a></li>
                        <li><a href="#">소비자 안전 관련 정보</a></li>
                        <li><a href="#">운임 및 서비스 요금표</a></li>
                    </ul>
                    <ul>
                        <li class="footer_title">기타안내</li>
                        <li><a href="#">초등학생 견학 신청</a></li>
                        <li><a href="#">고객 안내 서비스</a></li>
                        <li><a href="#">항공교통이용자 서비스 계획</a></li>
                        <li><a href="#">항공교통이용자 피해 구제</a></li>
                        <li><a href="#">관련 사이트</a></li>
                        <li><a href="#">사이트맵</a></li>
                    </ul>
                </nav> <!-- footer_menu 끝 -->
            </section> <!-- section footer_menu_box 끝 -->

            <section id="menu_box">
                <!-- section footer_box 시작 -->
                <div id="left_menu_box">
                    <div id="left_menu_box_top">
                        <ul>
                            <li style="background-color: #F3F3F3;">대한민국</li>
                            <li style="text-decoration: underline;"><b>한국어</b></li>
                            <li style="color: gray">English</li>
                        </ul>
                    </div>
                    <div id="left_menu_box_bottom">
                        <p>본 콘텐츠의 저작권은 저작권자 또는 제공처에 있으며,</p>
                        <p>이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.</p>
                        <p>　</p>
                        <p>Copyright © Trip Corp. All Rights Reserved</p>
                    </div>
                </div>
                <div id="right_menu_box">
                    <ul>
                        <li style="margin-bottom: 8px;"><b>(주)TRIP &#x1F4AC;</b></li>
                        <li>사업자 등록번호: 000-0000-0000</li>
                        <li>대표이사: 전채린, 엄지희</li>
                        <li>대표전화: 1588-1598</li>
                        <li>주소: 경기도 파주시 광탕면 분수리 47306</li>
                    </ul>
                </div>
            </section> <!-- section footer_box 끝 -->
        </footer> <!-- footer 끝 -->
    </body>

    </html>