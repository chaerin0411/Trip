package reservationManagement;

/**
 * File : ManagementBook.java
 * Desc : 항공권 예약 프로그램 DO 클래스
 * @author 웹프로젝트실습 기말프로젝트 1조(전채린, 엄지희)
 */

public class ReservationBook { // 멤버변수 선언

	// airport
	private String airport_no;
	private String port_name;
	private String nation;

	// airplane
	private String airpline_name;
	private String total_seatnum;

	// seat
	private String seat_no;
	private String seatnum;
	
	private String serve_seat_no; // serve_seat
	private String schedule_no; // schedule
	private Integer ticket_no; // ticket

	// reservation
	private Integer reservation_no;
	private String member_id;
	private String date;
	private String start_port;
	private String end_port;
	private Integer passenger_number;
	private String grade;
	private String seat;
	private String airplane_no;
	private String departure_time;
	private String arrival_time;
	private Integer freightfee;

	// order
	private String order;

	// airport
	public String getAirport_no() { return airport_no; }
	public void setAirport_no(String airport_no) {
		this.airport_no = airport_no;
	}
	public String getPort_name() { return port_name; }
	public void setPort_name(String port_name) {
		this.port_name = port_name;
	}
	public String getNation() { return nation; }
	public void setNation(String nation) {
		this.nation = nation;
	}
	
	// airplane
	public String getAirpline_name() { return airpline_name; }
	public void setAirpline_name(String airpline_name) {
		this.airpline_name = airpline_name;
	}
	public String getTotal_seatnum() { return total_seatnum; }
	public void setTotal_seatnum(String total_seatnum) {
		this.total_seatnum = total_seatnum;
	}

	// seat
	public String getSeat_no() { return seat_no; }
	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}
	public String getSeatnum() { return seatnum; }
	public void setSeatnum(String seatnum) {
		this.seatnum = seatnum;
	}
	
	 // serve_seat
	public String getServe_seat_no() { return serve_seat_no; }
	public void setServe_seat_no(String serve_seat_no) {
		this.serve_seat_no = serve_seat_no;
	}
	
	// schedule
	public String getSchedule_no() { return schedule_no; }
	public void setSchedule_no(String schedule_no) {
		this.schedule_no = schedule_no;
	}
	
	// ticket
	public Integer getTicket_no() { return ticket_no; }
	public void setTicket_no(Integer ticket_no) {
		this.ticket_no = ticket_no;
	}

	// reservation
	public Integer getReservation_no() { return reservation_no; }
	public void setReservation_no(Integer reservation_no) {
		this.reservation_no = reservation_no;
	}
	public String getMember_id() { return member_id; }
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getDate() { return date; }
	public void setDate(String date) {
		this.date = date;
	}
	public String getStart_port() { return start_port; }
	public void setStart_port(String start_port) {
		this.start_port = start_port;
	}
	public String getEnd_port() { return end_port; }
	public void setEnd_port(String end_port) {
		this.end_port = end_port;
	}
	public Integer getPassenger_number() { return passenger_number; }
	public void setPassenger_number(Integer passenger_number) {
		this.passenger_number = passenger_number;
	}
	public String getGrade() { return grade; }
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getSeat() { return seat; }
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public String getAirplane_no() { return airplane_no; }
	public void setAirplane_no(String airplane_no) {
		this.airplane_no = airplane_no;
	}
	public String getDeparture_time() { return departure_time; }
	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}
	public String getArrival_time() { return arrival_time; }
	public void setArrival_time(String arrival_time) {
		this.arrival_time = arrival_time;
	}
	public Integer getFreightfee() { return freightfee; }
	public void setFreightfee(Integer freightfee) {
		this.freightfee = freightfee;
	}
	
	// order
	public String getOrder() { return order; }
	public void setOrder(String order) {
		this.order = order;
	}
}
