<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
<script type="text/javascript">
	function chk() {
		if (!frm.id.value) { alert("아이디 입력후에 체크하세요");
			frm.id.focus();  return false;		}
		window.open("confirm.jsp?id="+frm.id.value,"",
			"width=300 height=300");
	}
</script>
</head><body><form action="join.jsp" method="post" name="frm">
<table><caption>회원가입</caption>
	<tr><th>아이디</th><td><input type="text" name="m_id" 
		required="required"><input type="button"
		value="중복체크" onclick="return chk()"></td></tr>
	<tr><th>암호</th><td><input type="password" name="m_pass" 
		required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="m_name" 
		required="required"></td></tr>
	<tr><th>주소</th><td><input type="text" name="m_addr" 
		required="required"></td></tr>
	<tr><th>전화번호</th><td><input type="tel" name="m_tel" 
		required="required" pattern="\d{3}-\d{3,4}-\d{4}"
		title="전화번호 형식 3-3,4-4" placeholder="010-1111-1111"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table></form></body></html>