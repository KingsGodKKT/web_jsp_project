<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	function buycheck() {
		frm.action = "buycheck.do";
		frm.submit();
	}
</script>
</head>
<body>
<jsp:include page="../module/top.jsp" />
	<div class="container">
		<form action="buycheckForm.do">
			<input type="submit" value="확인">
		</form>
		<a href="../managerMain.jsp">관리자 메인으로</a>
		<form action="" name="frm">
			<table class="table table-hover">
				<thead>
					<tr>
						<th width="5%">상품번호</th>
						<th width="10%">아이디</th>
						<th width="5%">주문번호</th>
						<th width="35%">배송시 요청사항</th>
						<th width="10%">주문수량</th>
						<th width="10%">주문금액</th>
						<th width="10%">주문일</th>
						<th width="5%">결제상태</th>
						<th width="10%">결제확인</th>
					</tr>
				</thead>
				<c:if test="${empty olist}">
					<tr>
						<th colspan=8">주문 목록이 없습니다</th>
					</tr>
				</c:if>
				<c:if test="${not empty olist }">
					<c:forEach var="porder" items="${olist }">
						<tr>
							<td>${porder.p_num}</td>
							<td>${porder.m_id }</td>
							<td>${porder.o_num }</td>
							<td>${porder.o_req }</td>
							<td>${porder.o_qty }</td>
							<td>${porder.o_cost }</td>
							<td>${porder.o_date}</td>
							<td>${porder.o_pay}</td>
							<td><button type="submit" onclick="buycheck()" name="p_num"
									value="${porder.p_num}">확인</button></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</form>
	</div>
</body>
</html>