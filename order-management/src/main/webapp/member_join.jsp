<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
		if (document.frm.userid.value == "") {
			alert("아이디를 입력하세요.");
			frm.userid.focus();
			return null;
		} else if (document.frm.marketnm.value == "") {
			alert("가게이름을 입력하세요.");
			frm.marketnm.focus();
			return null;
		} else if (document.frm.usernm.value == "") {
			alert("이름을 입력하세요.");
			frm.usernm.focus();
			return null;
		} else if (document.frm.passwd.value == "") {
			alert("비밀번호를 입력하세요.");
			frm.passwd.focus();
			return null;
		} else if (document.frm.passwd.value < 4) {
			alert("비밀번호를 4자리 이상 입력하세요.");
			frm.passwd.focus();
			return null;
		} else if (document.frm.passwdcheck.value == "") {
			alert("비밀번호 확인을 입력하세요.");
			frm.passwdcheck.focus();
			return null;
		} else if (document.frm.passwd.value != document.frm.passwdcheck.value) {
			alert("비밀번호를 한번 더 확인해주세요.");
			frm.passwdcheck.focus();
			return null;
		} else if (document.frm.jumin1.value == "") {
			alert("주민번호 앞자리를 입력하세요.");
			frm.jumin1.focus();
			return null;
		} else if (document.frm.jumin2.value == "") {
			alert("주민번호 뒷자리를 입력하세요.");
			frm.jumin2.focus();
			return null;
		} else if (document.frm.gender.value == "") {
			alert("성별을 선택하세요.");
			frm.gender.focus();
			return null;
		} else if (document.frm.address.value == "") {
			alert("주소를 입력하세요.");
			frm.address.focus();
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
		<h2>회원가입</h2>
		<br>
		<form action="member_join_ok.jsp" method="post" name="frm">
			<table class="table table-bordered" style="width: 600px">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid" minlength="4" maxlength="12"></td>
				</tr>
				
				<tr>
					<td>가게이름</td>
					<td><input type="text" name="marketnm" maxlength="20"></td>
				</tr>
				
				<tr>
					<td>이름</td>
					<td><input type="text" name="usernm"></td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd" minlength="4"></td>
				</tr>
				
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="passwdcheck" minlength="4"></td>
				</tr>
				
				<tr>
					<td>주민번호</td>
					<td><input type="text" name="jumin1" maxlength="6"> - <input type="password" name="jumin2" maxlength="7"></td>
				</tr>
				
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="1"> 남
						<input type="radio" name="gender" value="2"> 여
					</td>
				</tr>
				
				<tr>
					<td>주소</td>
					<td><input type="text" name="address"></td>
				</tr>
				
				<tr>
					<td>메일수신여부</td>
					<td><input type="checkbox" name="mailrcv"></td>
				</tr>
				
				<tr align="center">
					<td colspan="2">
						<input type="button" onclick="check()" value="가입하기"  class="btn">
						<input type="button" onclick="rewrite()" value="다시쓰기"  class="btn">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>