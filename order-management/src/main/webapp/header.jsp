<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<style>
body {
	height: 100%;
}

h1 {
	margin-top: 0;
	margin-bottom: 0;
}

.margin {
	margin: 0;
	height: 20px;
	background-color: #B4A3FD;
}

header {
	text-align: center;
	font-size: 20px;
	font-weight: 900;
	background-color: #B4A3FD;
	width: 100%;
	color: white;
}

nav {
	height: 50px;
	line-height: 50px;
	background-color: #CFC3FF;
}

a {
	text-decoration-line: none;
}

a:visited {
	color: white
}

;
a:hover {
	color: #B4A3FD
}

;
a:active {
	color: white
}
;
</style>
<body>
	<div class="margin"></div>
	<header align="center">
		<h1>발주신청 프로그램</h1>
	</header>
	<div class="margin"></div>


	<nav>
		&emsp;&emsp;<a href="member_join.jsp">회원가입</a>
		&emsp;&emsp;<a href="member_list.jsp">회원목록</a>
		&emsp;&emsp;<a href="article_order.jsp">발주신청</a>
		&emsp;&emsp;<a href="article_order_list.jsp">신청목록조회</a>
		&emsp;&emsp;<a href="index.jsp">홈으로</a>
	</nav>
</body>
</html>