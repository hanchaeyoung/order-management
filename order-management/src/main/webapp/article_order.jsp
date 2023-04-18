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
<title>발주신청</title>
</head>
<%@ include file="header.jsp" %>
<style>
	.btn {
		background-color: #CFC3FF;
		color: white;
		border: none;
		padding: 9px 25px;
		text-decoration: none;
  		display: inline-block;
		margin: 4px 2px;
		cursor: pointer;
	}
	
	.btn:hover {
		background: #B4A3FD; 
		color: white;
	}
</style>
<script type="text/javascript">
	function check() {
		if (document.frm.f_name.value == "") {
			alert("상품명을 입력하세요.");
			frm.f_name.focus();
			return null;
		} else if (document.frm.f_price.value == "") {
			alert("가격을 입력하세요.");
			frm.f_price.focus();
			return null;
		} else if (document.frm.f_num.value == "") {
			alert("수량을 입력하세요.");
			frm.f_num.focus();
			return null;
		} else {
			document.frm.submit();
		}
	}
	
	function rewrite() {
		alert("정보를 지우고 처음부터 다시 작성합니다!");
		history.go(0);
	}
</script>
<body>
	<div align="center">
		<br>
		<h2>발주신청</h2>
		<br>
		<form action="article_order_ok.jsp" name="frm" method="post">
			<table class="table table-bordered" style="width: 600px">
				<tr>
					<td>상품번호</td>
					<td><input type="text" name="f_no" readonly value="자동입력"></td>
				</tr>
				
				<tr>
					<td>상품명</td>
					<td><input type="text" name="f_name"></td>
				</tr>
				
				<tr>
					<td>가격</td>
					<td><input type="text" name="f_price"></td>
				</tr>
				
				<tr>
					<td>수량</td>
					<td><input type="number" name="f_num"></td>
				</tr>
				
				<tr align="center">
					<td colspan="2">
						<input type="button" onclick="check()" value="신청하기"  class="btn">
						<input type="button" onclick="rewrite()" value="다시쓰기"  class="btn">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>