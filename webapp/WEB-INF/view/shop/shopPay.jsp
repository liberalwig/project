<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 설명</title>
	<!-- CSS-->
	<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/shopPay.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

	<!-- JS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
	<div id="wrap">
		<div id="container" class="clearfix">
			<h3>결제하기</h3>
			<div id="payArea">
				<div id="iteminfo">
					<h4>주문상품정보</h4>
					<img src="${pageContext.request.contextPath}/assets/images/shopinfo_sample.png">
					<p>상품정보</p>
					<p>선택한 정보</p>
					<h4>얼마인지</h4>
				</div>
				<div id="userinfo">
					<h4>주문자 정보</h4>
					<p>상품정보</p>
					<p>선택한 정보</p>
					<h4>얼마인지</h4>
				</div>
				<div id="payinfo">
					<h4>주문자 정보</h4>
					<p>상품정보</p>
					<p>선택한 정보</p>
					<h4>얼마인지</h4>
				</div>
				<button type="button" class="btn btn-primary color">결제하기</button>
			</div>
		</div><!-- container -->
	</div><!-- wrap -->
	
	<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
</body>
</html>