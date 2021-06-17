<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="roy.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<%
	Member mem = new Member();
	MemberDao md = MemberDao.getInstance();
	for (int i = 10; i <=209; i++) {
		mem.setId("k"+i);
		mem.setPassword("k"+i);
		mem.setName("길동"+i);
		mem.setAddress("서울 강남 "+i);
		mem.setTel("011-1111-111"+i);
		md.insert(mem);
	}
%>
입력완료
</body>

</html>