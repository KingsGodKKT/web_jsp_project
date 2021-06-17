<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="roy.*,java.util.*"%>
<%@ include file="sessionCheck.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<%	final int ROWPERPAGE = 10;
	final int PAGEPERBLOCK = 10;
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null || pageNum.equals("")) pageNum = "1";
	int currentPage = Integer.parseInt(pageNum);
	MemberDao md = MemberDao.getInstance();
	int total   = md.getTotal();  
	int startRow  = (currentPage - 1)*ROWPERPAGE + 1;
	int endRow  = startRow + ROWPERPAGE - 1; 
	int number  = total - startRow + 1;
	List<Member> list = md.list(startRow, endRow);	
	int totPage = (int)Math.ceil((double)total/ROWPERPAGE);
	int startPage = currentPage - (currentPage - 1)%PAGEPERBLOCK;
	// startPage  = currentPage/PAGEPERBLOCK * PAGEPERBLOCK + 1;
	int endPage   = startPage + PAGEPERBLOCK - 1;
	if (endPage > totPage) endPage = totPage;	 
%>
	<table>
		<caption>회원정보</caption>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>주소</th>
			<th>전화</th>
			<th>가입일</th>
			<th>삭제여부</th>
		</tr>
		<% if (list.size() ==0 ) { %>
		<tr>
			<td colspan="6">데이터가 없습니다</td>
		</tr>
		<% } else {
	  for (Member mem : list) {  %>
		<tr>
			<td><%=mem.getId() %></td>
			<td><%=mem.getName() %></td>
			<td><%=mem.getAddress()%></td>
			<td><%=mem.getTel()%></td>
			<td><%=mem.getReg_date()%>
			<td><%=mem.getDel()%></td>
		</tr>
		<%    }
   }
%>
	</table>
	<div align="center">
		<%	if (startPage > PAGEPERBLOCK) { %>
		<a href="list.jsp?pageNum=<%=endPage-PAGEPERBLOCK%>">[이전]</a>
		<%  } %>
		<%	for (int i = startPage; i <=endPage ;i++) { %>
		<a href="list.jsp?pageNum=<%=i%>">[<%=i%>]
		</a>
		<%  } %>
		<%	if (endPage < totPage) { %>
		<a href="list.jsp?pageNum=<%=startPage+PAGEPERBLOCK%>">[다음]</a>
		<%  } %>
	</div>
</body>

</html>