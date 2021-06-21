<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, java.sql.Timestamp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="product.css?after" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
header {
	height: 100px;
	border-radius: 15px;
	font-family: 'Nanum Gothic', sans-serif;
	text-align: center;
}

footer {
	font-family: 'Nanum Gothic', sans-serif;
	text-align: center;
}

ul.nav {
	background-color: rgba(201, 201, 201, .5);
	padding: 10px;
	border-radius: 10px;
}
</style>
<title>Insert title here</title>
<script type="text/javascript">
	function order() {
		fmt.action = "orderInsert.do";
		fmt.submit();
	}
	function cancel() {
		history.go(-1);
	}
</script>

</head>

<body>
	<jsp:include page="../module/top.jsp" />
	<div class="container">
		<h3 align="center">결제</h3>
		<form name="fmt" action="" method="post">
			<input type="hidden" name="p_num" value="${product.p_num }">
			<input type="hidden" name="o_qty" value="${porder.o_qty }"> <input
				type="hidden" name="p_cost" value="${product.p_cost}"> <input
				type="hidden" name="o_cost" value="${porder.o_cost}">
			<!-- 상품 -->
			<table class="table table-bordered">
				<tr>
					<th width="12%">상품번호</th>
					<th width="40%">상품명</th>
					<th width="20%">판매가격</th>
					<th width="8%">수량</th>
					<th width="20%">총가격</th>
				</tr>
				<tr>
					<td>${porder.p_num }</td>
					<td>${product.p_name }</td>
					<td>${product.p_cost }</td>
					<td>${porder.o_qty }</td>
					<td>${porder.o_cost }</td>
				</tr>
			</table>

			<!-- 게시물 -->
			<table class="table table-hover">
				<tr>
					<th width="10%">번호</th>
					<th width="20%">제목</th>
					<th width="50%">내용</th>
					<th width="20%">작성일</th>
				</tr>
				<c:if test="${empty olist}">
					<tr>
						<th colspan=5">선택한 게시물이 없습니다</th>
					</tr>
				</c:if>
				<c:if test="${not empty olist }">
					<c:forEach var="olist" items="${olist }">
						<tr>
							<td>${olist.b_num }</td>
							<%-- <td><img alt="${product.p_img }" src="../fileSave/${product.p_img } "></td> --%>
							<td>${olist.b_name }</td>
							<td>${olist.b_cnt  }</td>
							<td>${olist.b_date  }</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>


			<!-- 배송 결제 -->
			<table width="600" border="1" cellspacing="0" cellpadding="3"
				align="center" class="table table-bordered">
				<tr class="active">
					<td colspan="2" align="center"><font size="+1"><b>주문자
								정보</b></font></td>
				</tr>
				<tr bgcolor="#E5E1D8">
					<td width="20%"><b>성명</b></td>
					<td width="80%">${omlist[0].m_name}</td>
				</tr>
				<tr bgcolor="#E5E1D8">
					<td><b>전화번호</b></td>
					<td>${omlist[0].m_tel}</td>
				</tr>
				<tr bgcolor="#E5E1D8">
					<td><b>주소</b></td>
					<td>${omlist[0].m_addr}</td>
				</tr>
				<tr bgcolor="#E5E1D8">
					<td><b>결제계좌</b></td>
					<td><select name="d_bank">
							<option value="카카오뱅크 1111-111-1111">카카오뱅크 1111-111-1111</option>
					</select></td>
				</tr>
			</table>
			<br>

			<table width="600" border="1" cellspacing="0" cellpadding="3"
				align="center" class="table table-bordered">
				<tr class="warning">
					<td colspan="2" align="center"><font size="+1"><b>배송지
								정보</b></font></td>
				</tr>

				<tr>
					<td width="20%"><b>성명</b></td>
					<td width="80%"><input type="text" name="d_name"
						placeholder="${omlist[0].m_name}"></td>
				</tr>
				<tr>
					<td><b>전화번호</b></td>
					<td><input type="text" name="d_tel" placeholder="${omlist[0].m_tel}"></td>
				</tr>
				<tr>
					<td><b>주소</b></td>
					<td><input type="text" name="d_addr"
						placeholder="${omlist[0].m_addr}" ></td>
				</tr>
				<tr>
					<td><b>주문시 요청사항</b></td>
					<td><input type="text" name="o_req"  placeholder="조심히 와주세요"
					></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" value="확인"
						class="submitButton" onclick="order()"> <input
						type="button" value="취소" class="submitButton" onclick="cancel()">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>