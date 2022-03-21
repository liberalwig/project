<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 설명</title>
	<!-- CSS-->
	<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/shopInfo.css" rel="stylesheet" type="text/css">
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
		<div id="container">
			<div id="infoArea" class="row">
				<div id="imageArea" class="col-xs-6">
					<img src="${pageContext.request.contextPath}/photo/${requestScope.itemVo.path}">
				</div>
				<div id="itemArea" class="col-xs-6">
					<div id="info1">
						<h3 class="lead">${requestScope.itemVo.title}</h3>
						<h3 class="lead">${requestScope.itemVo.cost}원</h3>
					</div>
					<div id="info2">
						<p>${requestScope.itemVo.info}</p>
					</div>
					<div id="buyinfo">
						
					</div>
					<div id="buyDetail" class="clearfix">
						<p>총 상품금액(1개)</p>
						<h4>${requestScope.itemVo.cost}원</h4>
					</div>
					<div id="buttonArea">
						<button type="button" class="btn btn-primary color">구매하기</button>
						<button type="button" class="btn btn-default">장바구니</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
</body>
</html>