<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBPKG.Connect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<%@ include file="header.jsp" %>
<body>
	<%
	Connection con = Connect.getConnection();
	String sql = "insert into article values((select max(f_no) + 1 from article),?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	String f_name = request.getParameter("f_name");
	String f_price = request.getParameter("f_price");
	String f_num = request.getParameter("f_num");
	
	pstmt.setString(1, f_name);
	pstmt.setString(2, f_price);
	pstmt.setString(3, f_num);
	
	pstmt.executeUpdate();
	pstmt.close();
	con.close();
	%>
	<h2 align="center">발주신청이 완료되었습니다.</h2>
</body>
<%@ include file="footer.jsp" %>
</html>