<%@page import="DBPKG.Connect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<%@ include file="header.jsp" %>
<body>
	<div align="center">
	<br>
	<h2>회원목록</h2>
	<br>
		<table class="table table-bordered" style="width: 900px">
			<tr style="background-color: #CFC3FF">
				<td>회원아이디</td>
				<td>가게이름</td>
				<td>회원이름</td>
				<td>생년월일</td>
				<td>성별</td>
				<td>주소</td>
				<td>메일수신여부</td>
			</tr>
			<tr>
				<%
				Connection con = Connect.getConnection();
				Statement stmt = con.createStatement();
				String sql = "select * from member_info";
				ResultSet rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String userid = rs.getString(1);
					String marketnm = rs.getString(2);
					String usernm = rs.getString(3);
					String jumin = rs.getString(5);
					if (jumin.substring(6, 7).equals("1") || jumin.substring(6, 7).equals("2"))
					jumin = "19" + jumin.substring(0, 2) + "년 " + jumin.substring(2, 4) + "월 " + jumin.substring(4, 6) + "일";
					if (jumin.substring(6, 7).equals("3") || jumin.substring(6, 7).equals("4"))
					jumin = "20" + jumin.substring(0, 2) + "년 " + jumin.substring(2, 4) + "월 " + jumin.substring(4, 6) + "일";
					String gender = rs.getString(6);
					if (gender.equals("1")) gender = "남";
					else gender = "여";
					String address = rs.getString(7);
					String mailrcv = rs.getString(8);
					
					
					%>
					<td><%= userid %></td>
					<td><%= marketnm %></td>
					<td><%= usernm %></td>
					<td><%= jumin %></td>
					<td><%= gender %></td>
					<td><%= address %></td>
					<td><%= mailrcv %></td>
				</tr>
				<%
				}
				
				stmt.close();
				con.close();
				%>
		</table>
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>