<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function chk2() {
		if (frm.password.value != frm.confirmPass.value) {
			alert("암호와 암호 확인이 다릅니다");		frm.password.focus();
			frm.password.value = "";			return false;		}
	}
</script></head><body>
<!-- onsubmit="return chk2()"는 submit를 눌렀을 때 chk2를 실행하고 에러가 없으면 action에 있는 join.jsp실행
에러가 있으면 action을 하지 마라 -->
<form action="update.do" method="post" name="frm" onsubmit="return chk2()">
	<input type="hidden" name="id" value="${member.id}">
<table><caption>회원 가입</caption>
	<tr><th>아이디</th><td>${member.id}</td></tr>
	<tr><th>암호</th><td><input type="password" name="m_pass" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>암호확인</th><td><input type="password" name="confirmPass" 
		required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="m_name" 
		required="required" value="${member.name }"></td></tr>
	<tr><th>주소</th><td><input type="text" name="m_addr" 
		required="required" value="${member.address }"></td></tr>
	<tr><th>전화</th><td><input type="tel" name="m_tel" title="전화형식 3-3,4-4"
		required="required" pattern="\d{3}-\d{3,4}-\d{4}" placeholder="010-1111-1111"
		value="${member.tel }"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
<button onclick="location.href='loginForm.do'">로그인</button>
</body>
</html>