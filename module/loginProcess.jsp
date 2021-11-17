<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>

<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String link = null;
		
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/tripdb?" +
							"useUnicode=true&characterEncoding=utf-8&" +
							"serverTimezone=UTC&useSSL=false";
		String query = "select * from member order by MEMBER_ID";
		String dbUser = "root"; String dbPass = "admin";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()) {
			String memberId = (String)rs.getString("MEMBER_ID");
			String memberPwd = (String)rs.getString("MEMBER_PWD");
			String memberName = (String)rs.getString("MEMBER_NAME");
			
			if(id.equals(memberId) && pw.equals(memberPwd)) {
				session.setAttribute("memberLogin", "ok");
				if(request.getParameter("save") == null) {
					session.removeAttribute("loginSave");
				} else { session.setAttribute("loginSave", "check"); }
				session.setAttribute("memberId", memberId);
				session.setAttribute("memberPwd", memberPwd);
				session.setAttribute("memberName", memberName);
				
				if(id.equals("admin") && pw.equals("admin")) {
					link = "../management/manager.jsp"; break;
				} else {
					link = "../index.jsp?CONTENTPAGE=content.jsp"; break;
				}
			}
			else {
				session.setAttribute("loginPcs", "false");
				link = "../index.jsp?CONTENTPAGE=loginForm.jsp"; continue;
			}
		}
	} catch (SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		if (rs != null) try { rs.close(); } catch (SQLException ex) {}
		if (stmt != null) try { stmt.close(); } catch (SQLException ex) {}
		if (conn != null) try { conn.close(); } catch (SQLException ex) {}
		response.sendRedirect(link);
	}
%>