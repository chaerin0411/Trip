<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	String member_id = request.getParameter("member_id");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/tripdb?" + 
							"useUnicode=true&characterEncoding=utf-8&" + 
							"serverTimezone=UTC&useSSL=false";
		String dbUser = "root";
		String dbPass = "admin";
		
		String query = "select * from member order by MEMBER_ID";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()) {
			if(member_id.equals(rs.getString("MEMBER_ID"))) {
				session.setAttribute("varified", null); break;
			} else {
				session.setAttribute("varified", "success");
			}
		}
	} catch (SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		if (rs != null) try { rs.close(); } catch (SQLException ex) {}
		if (stmt != null) try { stmt.close(); } catch (SQLException ex) {}
		if (conn != null) try { conn.close(); } catch (SQLException ex) {}
		response.sendRedirect("joinForm.jsp");
	}
%>