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
	String sql = "insert into member_info values(?,?,?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	String userid = request.getParameter("userid");
	String marketnm = request.getParameter("marketnm");
	String usernm = request.getParameter("usernm");
	String passwd = request.getParameter("passwd");
	String jumin = request.getParameter("jumin1") + request.getParameter("jumin2");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String mailrcv = request.getParameter("mailrcv");
	if (mailrcv != null && mailrcv.equals("on")) mailrcv = "Y";
	else mailrcv = "N";
	
	pstmt.setString(1, userid);
	pstmt.setString(2, marketnm);
	pstmt.setString(3, usernm);
	pstmt.setString(4, passwd);
	pstmt.setString(5, jumin);
	pstmt.setString(6, gender);
	pstmt.setString(7, address);
	pstmt.setString(8, mailrcv);
	
	
	pstmt.executeUpdate();
	pstmt.close();
	con.close();
	%>
	<h2 align="center"><%= usernm %>님의 회원가입이 완료되었습니다.</h2>
</body>
<%@ include file="footer.jsp" %>
</html>