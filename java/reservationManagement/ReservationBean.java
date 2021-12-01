package reservationManagement;

import java.sql.*;
import java.util.*;

/**
 * File : ReservationBean.java
 * Desc : 항공권 예약 프로그램 DAO 클래스
 * @author 웹프로젝트실습 기말프로젝트 1조(전채린, 엄지희)
 */

public class ReservationBean {

	Connection conn = null;
	PreparedStatement pstmt = null;

	/*
	 * Oracle 연결정보 String jdbc_driver = "oracle.jdbc.driver.OracleDriver"; String
	 * jdbc_url = "jdbc:oracle:thin:@220.68.14.7:1521";
	 */

	/* MySQL 연결정보 */
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/tripdb?" + 
			   		  "useUnicode=true&characterEncoding=utf-8&" + 
			   		  "serverTimezone=UTC&useSSL=false";
	
	// DB 연결 메서드
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "root", "admin");
		} catch (Exception e) { e.printStackTrace(); }
	}

	void disconnect() {
		if (pstmt != null) {
			try { pstmt.close(); }
			catch (SQLException e) { e.printStackTrace(); }
		}
		if (conn != null) {
			try { conn.close(); }
			catch (SQLException e) { e.printStackTrace(); }
		}
	}

	// 항공권 예약 수정 메서드
	public boolean updateDB(ReservationBook reservationbook) {
		connect();
		String sql = "update reservation set date=?, start_port=?, end_port=?, "+
					 "passenger_number=?, grade=?, seat=?, airplane_no=?, "+
					 "departure_time=?, arrival_time=?, freightfee=? "+
					 "where reservation_no=?;";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservationbook.getDate());
			pstmt.setString(2, reservationbook.getStart_port());
			pstmt.setString(3, reservationbook.getEnd_port());
			pstmt.setInt(4, reservationbook.getPassenger_number());
			pstmt.setString(5, reservationbook.getGrade());
			pstmt.setString(6, reservationbook.getSeat());
			pstmt.setString(7, reservationbook.getAirplane_no());
			pstmt.setString(8, reservationbook.getDeparture_time());
			pstmt.setString(9, reservationbook.getArrival_time());
			pstmt.setInt(10, reservationbook.getFreightfee());
			pstmt.setInt(11, reservationbook.getReservation_no());
			pstmt.executeUpdate();
		}
		catch (SQLException e) { e.printStackTrace(); return false; }
		finally { disconnect(); } return true;
	}

	// 항공권 예약 삭제 메서드
	public boolean deleteDB(Integer reservation_no) {
		connect();
		String sql = "delete from reservation where reservation_no=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, reservation_no);
			pstmt.executeUpdate();
		}
		catch (SQLException e) { e.printStackTrace(); return false; }
		finally { disconnect(); } return true;
	}

	// 항공권 예약 추가 메서드
	public boolean insertDB(ReservationBook reservationbook) {
		connect(); // sql 문자열 , reservation_no, member_id 는 자동 등록 되므로 입력하지 않는다.
		String sql = "insert into reservation(member_id, date,start_port, end_port, "+
					 "passenger_number, grade, seat, airplane_no, departure_time, "+
					 "arrival_time,freightfee) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservationbook.getMember_id());
			pstmt.setString(2, reservationbook.getDate());
			pstmt.setString(3, reservationbook.getStart_port());
			pstmt.setString(4, reservationbook.getEnd_port());
			pstmt.setInt(5, reservationbook.getPassenger_number());
			pstmt.setString(6, reservationbook.getGrade());
			pstmt.setString(7, reservationbook.getSeat());
			pstmt.setString(8, reservationbook.getAirplane_no());
			pstmt.setString(9, reservationbook.getDeparture_time());
			pstmt.setString(10, reservationbook.getArrival_time());
			pstmt.setInt(11, reservationbook.getFreightfee());
			pstmt.executeUpdate();
		}
		catch (SQLException e) { e.printStackTrace(); return false; }
		finally { disconnect(); } return true;
	}

	// 항공권 예약 정보 조회 메서드
	public ReservationBook getDB(Integer reservation_no) {
		connect();
		String sql = "select * from reservation where reservation_no=?";
		ReservationBook reservationbook = new ReservationBook();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, reservation_no);
			ResultSet rs = pstmt.executeQuery();

			rs.next(); // 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
			reservationbook.setReservation_no(rs.getInt("reservation_no"));
			reservationbook.setMember_id(rs.getString("member_id"));
			reservationbook.setDate(rs.getString("date"));
			reservationbook.setStart_port(rs.getString("start_port"));
			reservationbook.setEnd_port(rs.getString("end_port"));
			reservationbook.setPassenger_number(rs.getInt("passenger_number"));
			reservationbook.setGrade(rs.getString("grade"));
			reservationbook.setSeat(rs.getString("seat"));
			reservationbook.setAirplane_no(rs.getString("airplane_no"));
			reservationbook.setDeparture_time(rs.getString("departure_time"));
			reservationbook.setArrival_time(rs.getString("arrival_time"));
			reservationbook.setFreightfee(rs.getInt("freightfee"));
			rs.close();
		}
		catch (SQLException e) { e.printStackTrace(); }
		finally { disconnect(); } return reservationbook;
	}

	// 항공권 예약 목록 조회 메서드
	public ArrayList<ReservationBook> getDBList(String member_id) {
		connect();
		ArrayList<ReservationBook> rDatas = new ArrayList<ReservationBook>();
		String sql = "select * from reservation where member_id=? order by reservation_no;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ReservationBook reservationbook = new ReservationBook();
				reservationbook.setReservation_no(rs.getInt("reservation_no"));
				reservationbook.setMember_id(rs.getString("member_id"));
				reservationbook.setDate(rs.getString("date"));
				reservationbook.setStart_port(rs.getString("start_port"));
				reservationbook.setEnd_port(rs.getString("end_port"));
				reservationbook.setPassenger_number(rs.getInt("passenger_number"));
				reservationbook.setGrade(rs.getString("grade"));
				reservationbook.setSeat(rs.getString("seat"));
				reservationbook.setAirplane_no(rs.getString("airplane_no"));
				reservationbook.setDeparture_time(rs.getString("departure_time"));
				reservationbook.setArrival_time(rs.getString("arrival_time"));
				reservationbook.setFreightfee(rs.getInt("freightfee"));
				rDatas.add(reservationbook);
			} rs.close();
		}
		catch (SQLException e) { e.printStackTrace(); }
		finally { disconnect(); } return rDatas;
	}

	// 항공사 스케줄 목록 조회 메서드
	public ArrayList<ReservationBook> getScheduleList() {
		connect();
		ArrayList<ReservationBook> sDatas = new ArrayList<ReservationBook>();
		String sql = "select * from schedule order by freightfee;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ReservationBook reservationbook = new ReservationBook();
				reservationbook.setSchedule_no(rs.getString("schedule_no"));
				reservationbook.setDeparture_time(rs.getString("departure_time"));
				reservationbook.setArrival_time(rs.getString("arrival_time"));
				reservationbook.setStart_port(rs.getString("start_port"));
				reservationbook.setEnd_port(rs.getString("end_port"));
				reservationbook.setAirplane_no(rs.getString("airplane_no"));
				reservationbook.setFreightfee(rs.getInt("freightfee"));
				sDatas.add(reservationbook);
			} rs.close();
		}
		catch (SQLException e) { e.printStackTrace(); }
		finally { disconnect(); } return sDatas;
	}

	// 특정 도시 항공사 스케줄 가져오는 메서드
	public ArrayList<ReservationBook> getSchedule(String start_port, String end_port) {
		connect();
		ArrayList<ReservationBook> sDatas = new ArrayList<ReservationBook>();
		String sql = "select * from schedule where start_port=? and end_port=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, start_port);
			pstmt.setString(2, end_port);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ReservationBook reservationbook = new ReservationBook();
				reservationbook.setSchedule_no(rs.getString("schedule_no"));
				reservationbook.setDeparture_time(rs.getString("departure_time"));
				reservationbook.setArrival_time(rs.getString("arrival_time"));
				reservationbook.setStart_port(rs.getString("start_port"));
				reservationbook.setEnd_port(rs.getString("end_port"));
				reservationbook.setAirplane_no(rs.getString("airplane_no"));
				reservationbook.setFreightfee(rs.getInt("freightfee"));
				sDatas.add(reservationbook);
			} rs.close();
		}
		catch (SQLException e) { e.printStackTrace(); }
		finally { disconnect(); } return sDatas;
	}

	// 특정 항공사 스케줄 가져오는 메서드
	public ReservationBook getScheduleDB(String schedule_no) {
		connect();
		String sql = "select * from schedule where schedule_no=?";
		ReservationBook reservationbook = new ReservationBook();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, schedule_no);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next(); // 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
			reservationbook.setSchedule_no(rs.getString("schedule_no"));
			reservationbook.setDeparture_time(rs.getString("departure_time"));
			reservationbook.setArrival_time(rs.getString("arrival_time"));
			reservationbook.setStart_port(rs.getString("start_port"));
			reservationbook.setEnd_port(rs.getString("end_port"));
			reservationbook.setAirplane_no(rs.getString("airplane_no"));
			reservationbook.setFreightfee(rs.getInt("freightfee"));
			rs.close();
		}
		catch (SQLException e) { e.printStackTrace(); }
		finally { disconnect(); } return reservationbook;
	}
}