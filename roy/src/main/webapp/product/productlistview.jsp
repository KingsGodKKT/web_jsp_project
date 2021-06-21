<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../sessionChk.jsp" %>
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
	header{ height: 100px; 
		border-radius: 15px; 
	font-family: 'Nanum Gothic', sans-serif; text-align: center;}
footer {font-family: 'Nanum Gothic', sans-serif; text-align: center;}
ul.nav { background-color:rgba(201, 201, 201,.5); padding: 10px;
	border-radius: 10px; }
</style>
</head>
<body >
	<jsp:include page="../module/top.jsp" />
	<div class="container">
		<table class="table table-hover">
		<input type="hidden" name="m_id" value="${m_id }">
			<tr>
				<th width="25%">상품번호</th>
				<th width="25%">이미지</th>
				<th width="25%">상품명</th>
				<th width="25%">가격</th>
			</tr>
			<c:if test="${empty list}">
				<tr>
					<th colspan=5">등록된 상품이 없습니다</th>
				</tr>
			</c:if>
			<c:if test="${not empty list }">
				<c:forEach var="product" items="${list }">
					<tr
						onClick="location.href='productview.do?p_num=${product.p_num }&m_id=${m_id }'">
						<td>${product.p_num }</td>
						<td><img alt="${product.p_img }"
							style="max-width: 100%; height: 50px;"
							src="../fileSave/${product.p_img } "></td>
						<td>${product.p_name }</td>
						<td>${product.p_cost }</td>
						<%-- <td>${product.p_date }</td> --%>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</body>
</html>