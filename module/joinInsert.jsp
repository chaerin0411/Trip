<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String member_id	= request.getParameter("member_id");
	String member_pwd	= request.getParameter("member_pwd");
	String member_name	= request.getParameter("member_name");
	String member_birth	= request.getParameter("member_birth");
	String member_tel	= request.getParameter("member_tel");
	String member_email	= request.getParameter("member_email");
	String member_addr	= request.getParameter("member_addr");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/tripdb?" + 
							"useUnicode=true&characterEncoding=utf-8&" + 
							"serverTimezone=UTC&useSSL=false";
		String dbUser = "root";
		String dbPass = "admin";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement("insert into member values (?,?,?,?,?,?,?);");
		pstmt.setString(1, member_id);
		pstmt.setString(2, member_pwd);
		pstmt.setString(3, member_name);
		pstmt.setString(4, member_birth);
		pstmt.setString(5, member_tel);
		pstmt.setString(6, member_email);
		pstmt.setString(7, member_addr);
		pstmt.executeUpdate();
	} finally {
		// 6. 사용한 Statement 종료
		if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) {}
		if (conn != null) try { conn.close(); } catch (SQLException ex) {}
	}
%>