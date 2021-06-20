<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="roy.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="roy.dao.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<%
MemberDao2 md = MemberDao2.getInstance();
	int result   = md.insert(member);
	if (result >0) {
%>
<script type="text/javascript">
	alert("입력 성공"); 
	location.href="main.jsp";
</script>
<%  } else { %>
<script type="text/javascript">
	alert("입력 실패"); 
	history.go(-1);
</script>
<%  } %>
</body>
</html>