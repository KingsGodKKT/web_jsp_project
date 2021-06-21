<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">

</head>
<body>
	<jsp:include page="../module/top.jsp" />
	<form action="login.do" class="loginForm">
		<table class="loginTable">
			<caption>로그인</caption>
			<tr>
				<th><h3>아이디</h3></th>
				<td><input class="loginInput" type="text" name="m_id"
					required="required" placeholder="아이디"></td>
			</tr>
			<tr>
				<th><h3>비밀번호</h3></th>
				<td><input class="loginInput" type="password" name="m_pass"
					required="required" placeholder="비밀번호"></td>
			</tr>
		</table>
		<div class="buttonBox">
			<button type="submit" value="확인">로그인</button>
			<button onclick="location.href='joinForm.jsp'">회원가입</button>
		</div>
	</form>

</body>
</html>