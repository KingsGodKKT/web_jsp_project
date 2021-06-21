<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<%
String path = request.getContextPath();
if (session.getAttribute("m_id") == null) {
%>
</head>
<body>
	<header>
		<nav>
			<a href="index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><a class="active" href="loginForm.do">로그인</a></li>
				<li><a href="joinForm.jsp">회원가입</a></li>
			</ul>
		</nav>
	</header>
	<%
	} else {
	%>
	
	<nav>
			<a href="../index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><b>${m_id}</b></li>
				<li><a href="../logout.do">로그아웃</a></li>
			</ul>
		</nav>
	
	<%
	}
	%>
</body>
</html>