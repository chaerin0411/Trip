<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*, memberManagement.*"%>

<section id="top">
<!-- section top 시작 -->
	<a id="logo" href="../index.jsp"><img id="logo_img" src="../img/logo.png"></a>
	<nav id="top_menu">
		<ul>
			<li>관리자님</li>
			<li class="bdright"><a href="../module/logoutProcess.jsp">로그아웃</a></li>
			<li><a href="index.jsp?CONTENTPAGE=joinForm.jsp">회원가입</a></li>
			<li id="member"><a href="../index.jsp?CONTENTPAGE=myPage.jsp"><img id="member_img" src="../img/member.png"></a></li>
		</ul>
	</nav>
	<nav id="main_menu">
		<ul>
			<li><a href="../index.jsp">메인</a></li>
			<li><a href="../reservation/reservation_control.jsp?action=search">항공권 예약</a></li>
			<li><a href="../index.jsp?CONTENTPAGE=information.jsp">여행지 정보</a></li>
			<li><a href="../index.jsp?CONTENTPAGE=myPage.jsp">마이페이지</a></li>
		</ul>
	</nav>
</section> <!-- section top 끝 -->