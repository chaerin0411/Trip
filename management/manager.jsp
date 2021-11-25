<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>

<!-- contentM.jsp -->
<div>
	<p>MEMBER 테이블의 내용</p>
	<a href="../module/logoutProcess.jsp">로그아웃</a>
</div>

<form>
<table width="100%" border="1">
<tr>
	<th>회원아이디</th>
	<th>비밀번호</th>
	<th>이름</th>
	<th>생년월일</th>
	<th>전화번호</th>
	<th>이메일</th>
	<th>주소</th>
	<th>회원정보수정</th>
	<th>회원삭제</th>
</tr>
<%
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
		
		while(rs.next()) { %>
		<tr>
			<td><%= rs.getString("MEMBER_ID") %></td>
			<td><%= rs.getString("MEMBER_PWD") %></td>
			<td><%= rs.getString("MEMBER_NAME") %></td>
			<td><%= rs.getString("MEMBER_BIRTH") %></td>
			<td><%= rs.getString("MEMBER_TEL") %></td>
			<td><%= rs.getString("MEMBER_EMAIL") %></td>
			<td><%= rs.getString("MEMBER_ADDR") %></td>
			<td><input type="submit" value="수정"></td>
			<td><input type="submit" value="삭제"></td>
		</tr>
		<% }
	} catch (SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		if (rs != null) try { rs.close(); } catch (SQLException ex) {}
		if (stmt != null) try { stmt.close(); } catch (SQLException ex) {}
		if (conn != null) try { conn.close(); } catch (SQLException ex) {}
	}
%>
</table>
</form>