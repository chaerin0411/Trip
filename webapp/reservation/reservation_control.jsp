<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="../management/manager_error.jsp" import="reservationManagement.*, memberManagement.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="rbean" class="reservationManagement.ReservationBean" scope="session"/> 
<jsp:useBean id="rb" class="reservationManagement.ReservationBook" scope="session"/>
<jsp:useBean id="mb" class="memberManagement.ManagementBook" scope="session"/>
<jsp:setProperty name="rb" property="*"/> 

<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");

	// 파라미터에 따른 요청 처리
	// 항공권 예약정보 목록 요청인 경우
	if(action.equals("list")) {
		ArrayList<ReservationBook> rDatas = rbean.getDBList(mb.getMember_id());
		session.setAttribute("rDatas", rDatas);
		response.sendRedirect("../index.jsp?CONTENTPAGE=myReservation.jsp");
	}
	
	// 항공권 예약 요청인 경우
	else if(action.equals("insert")) {		
		if(rbean.insertDB(rb)) {
			response.sendRedirect("reservation_control.jsp?action=list");
		} else throw new Exception("DB 입력오류");
	}
	
	// 항공권 예약정보 수정 페이지 요청인 경우
	else if(action.equals("edit")) {
		ReservationBook rbook = rbean.getDB(rb.getReservation_no());
		session.setAttribute("rb",rbook);
		response.sendRedirect("../index.jsp?CONTENTPAGE=reservation_edit_form.jsp");
	}
	
	// 항공권 예약정보 수정 등록 요청인 경우
	else if(action.equals("update")) {
		if(rbean.updateDB(rb)) {
			response.sendRedirect("reservation_control.jsp?action=list");
		} else throw new Exception("DB 갱신오류");
	}
	
	// 항공권 예약 삭제 요청인 경우
	else if(action.equals("delete")) {
		if(rbean.deleteDB(rb.getReservation_no())) {
			response.sendRedirect("reservation_control.jsp?action=list");
		} else throw new Exception("DB 삭제 오류");
	}
	
	// 전체 항공권 검색 요청인 경우
	else if(action.equals("search")) {
			ArrayList<ReservationBook> sDatas = rbean.getScheduleList();
			session.setAttribute("sDatas", sDatas);
			response.sendRedirect("../index.jsp?CONTENTPAGE=reservation.jsp");
	}
	
	// 특정 도시 항공권 검색 요청인 경우
	else if(action.equals("csearch")) {
			ArrayList<ReservationBook> sDatas = rbean.getSchedule(rb.getStart_port(), rb.getEnd_port());
			session.setAttribute("sDatas", sDatas);
			response.sendRedirect("../index.jsp?CONTENTPAGE=reservationProcess1.jsp");
	}
	// 특정 항공권 검색 요청인 경우
	else if(action.equals("ssearch")) {
		ReservationBook sbook = rbean.getScheduleDB(rb.getSchedule_no());
		session.setAttribute("sb",sbook);
		response.sendRedirect("../index.jsp?CONTENTPAGE=reservationProcess2.jsp");
	}
	else out.println("<script>alert('action 파라미터를 확인해 주세요!')</script>");
%>