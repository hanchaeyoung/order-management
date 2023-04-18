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
<title>신청목록조회</title>
</head>
<%@ include file="header.jsp" %>
<body>
	<div align="center">
	<br>
	<h2>신청목록조회</h2>
	<br>
		<table class="table table-bordered" style="width: 900px">
			<tr style="background-color: #CFC3FF">
				<td>상품번호</td>
				<td>상품명</td>
				<td>가격</td>
				<td>수량</td>
			</tr>
			<tr>
				<%
				Connection con = Connect.getConnection();
				Statement stmt = con.createStatement();
				String sql = "select * from article";
				ResultSet rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String f_no = rs.getString(1);
					String f_name = rs.getString(2);
					String f_price = rs.getString(3);
					String f_num = rs.getString(4);
					%>
					<td><%= f_no %></td>
					<td><%= f_name %></td>
					<td><%= f_price %></td>
					<td><%= f_num %></td>
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