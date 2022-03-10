<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/yu_main.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/reservation.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/fullcalendar.css" rel="stylesheet" type="text/css">
</head>

<script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/project/assets/js/fullcalendar.js"></script>
<script type="text/javascript" src="/project/assets/js/locales-all.js"></script>

<body>

	<!-- header -->
    <c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

    <div id="header_line" class="container-fluid"></div>

	<div id="wrap">

		<div id="container" class="clearfix">
			
			<!-- aside -->
            <c:import url="/WEB-INF/view/includes/aside.jsp"></c:import>

			<div id="content" class="clearfix">
				<div id="content-head">
					<div id="location" class="clearfix">
						<ul>
							<li>마이페이지</li>
							<li>예약관리</li>
							<li class="last">예약관리</li>
						</ul>
					</div>
					<h1>예약관리</h1>
				</div>

				<div id="content-main" class="clearfix">
					<button class="btn btn-default hover-boot list-btn" type="submit">메세지보내기</button>

					<table class="table table-hover">
						<thead id="guest-table">
							<tr>
								<th></th>
								<th>예약번호</th>
								<th>프로필사진</th>
								<th>닉네임</th>
								<th>예약날짜</th>
								<th>가격</th>
								<th>휴대전화</th>
								<th>예약현황</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${bList}" var="BookingVo">
									<tr onClick="location.href='${pageContext.request.contextPath}/bookingDetailHost?bookingNo=${BookingVo.bookingNo}'">
	                                    <td><input type="radio" name="list-radio"></td>
										<td id="no">${BookingVo.bookingNo}</td>
										<td><img src="/project/assets/images/reservation-dog.png"></td>
										<td>${BookingVo.hostName}</td>
										<td>${BookingVo.checkin} ~ ${BookingVo.checkout}</td>
										<td>₩ ${BookingVo.bookingDate * BookingVo.days * BookingVo.ea}</td>
										<td>${BookingVo.hostHp}</td>
										<c:choose>
											<c:when test="${BookingVo.status == '예약완료'}">
												<td><div class="btn-re-gradient yellow mini">예약완료</div></td>
											</c:when>
											<c:when test="${BookingVo.status == '펫시팅중'}">
												<td><div class="btn-re-gradient orange mini">펫시팅중</div></td>
											</c:when>
											<c:when test="${BookingVo.status == '시팅완료'}">
												<td><div class="btn-re-gradient blue mini">시팅완료</div></td>
											</c:when>
										</c:choose>
									</tr>
								</c:forEach>
							
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
</body>

<script>

	
</script>
</html>