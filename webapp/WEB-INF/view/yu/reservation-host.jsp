<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/yu_main.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/fullcalendar.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/reservation.css" rel="stylesheet" type="text/css">
</head>

<script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/project/assets/js/fullcalendar.js"></script>
<script type="text/javascript" src="/project/assets/js/locales-all.js"></script>

<body>

	<!-- header -->
    <c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

	<div id="wrap">

		<div id="container" class="clearfix">
			
			<!-- aside -->
            <c:import url="/WEB-INF/view/includes/aside.jsp"></c:import>

			<div id="content">
				<div id="content-head">
					<div id="location">
						<ul>
							<li>마이페이지</li>
							<li>예약관리</li>
							<li class="last">대기내역</li>
						</ul>
					</div>
					<h1>대기내역</h1>
				</div>

				<div id="content-main" class="clearfix">
					<div id="l-calendar"></div>
					<div id="l-calendar2"></div>

					<div id="r-list">

						<div id="list-btn">
							<button class="btn btn-default hover-boot" type="submit">메세지보내기</button>
							<button class="btn btn-default hover-boot" type="submit">예약거절</button>
						</div>
						<table class="table table-hover">
							<colgroup>
								<col style="width: 5%;">
								<col style="width: 10%;">
								<col style="width: 10%;">
								<col style="width: 10%;">
								<col style="width: 25%;">
								<col style="width: 15%;">
								<col style="width: 15%;">
								<col style="width: 10%;">
							</colgroup>
							<thead id="guest-table">
								<tr>
									<th></th>
									<th>예약번호</th>
									<th>프로필사진</th>
									<th>게스트이름</th>
									<th>예약날짜</th>
									<th>가격</th>
									<th>휴대전화</th>
									<th>예약현황</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${bList}" var="BookingVo">
						
									<tr>
										<td><input type="radio" name="list-radio"></td>
										<td id="no" onClick="location.href='${pageContext.request.contextPath}/bookingDetailHost?bookingNo=${BookingVo.bookingNo}'">
											${BookingVo.bookingNo}</td>
										<td><img src="/project/assets/images/reservation-dog.png"></td>
										<td>${BookingVo.guestName}</td>
										<td>${BookingVo.checkin} ~ ${BookingVo.checkout}</td>
										<td>₩ ${BookingVo.bookingDate * BookingVo.days * BookingVo.ea}</td>
										<td>${BookingVo.guestHp}</td>
										<c:choose>
											<c:when test="${BookingVo.status == '승인대기'}">
												<td onClick="location.href='${pageContext.request.contextPath}/statusChange?bookingNo=${BookingVo.bookingNo}&hostNo=${param.hostNo}'">
												<div class="btn-re-gradient blue mini">예약승인</div></td>
											</c:when>
											<c:when test="${BookingVo.status == '결제대기'}">
												<td><div class="btn-re-gradient orange mini">결제대기</div></td>
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
	</div>
</body>

<script>

	
	/* 달력 */
	document.addEventListener('DOMContentLoaded', function() {

		var calendarEl = document.getElementById('l-calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {

			initialView : 'dayGridMonth', // 월 달력

			// 달력 툴
			headerToolbar : {
				left : 'prev',
				center : 'title',
				right : 'next today,dayGridMonth'
			},

			editable : true, // 드래그 수정 가능
			locale : 'ko', // 한국어 설정(lib/locales/ko.js)
			
			// 일정 클릭 이벤트
			eventClick : function() {
				if(info.event.extendedProps.status == 'booking'){
					window.location.href = '${pageContext.request.contextPath}/bookingDetailHost?bookingNo='+document.getElementById('no').getAttribute('data-bookingno');
				}
			},
			
			//날짜 클릭 이벤트
		  	dateClick: function(info) {
		  		
			    window.location.href = '/project/bookingBeforeHostDate?hostNo=${param.hostNo}&date='+info.dateStr;
			},
			
			events: [
				// ajax 처리로 데이터를 로딩 시킨다. 
				$.ajax({ 
					type:"get", 
					url:"${pageContext.request.contextPath}/calendar?hostNo=${param.hostNo}", 
					dataType : "json",
					success: function (bList) {
						for(var i=0; i<bList.length; i++) {
							calendar.addEvent({
								title: bList[i].guestName+'('+bList[i].status+')',
								start: bList[i].checkin,
								end: bList[i].checkout,
								status: 'booking',
								color: '#ffafb0',
								textColor: '#000000',
								status: 'booking'
							});
						}
						
					}
				}),

			$.ajax({ 
				type:"get", 
				url:"${pageContext.request.contextPath}/calendarAble?hostNo=${param.hostNo}", 
				dataType : "json",
				success: function (aList) {
					for(var i=0; i<aList.length; i++) {
						calendar.addEvent({
							start: aList[i].ableDate,
							end: aList[i].ableDate,
							allDay: true,
							status: 'done',
							display: 'background',
							overlap: false,
							backgroundColor: 'rgb(255, 255, 255)'
						});
					}
					
				}
			})
		],
		
		 eventDidMount: function(info) {
			if(info.event.extendedProps.status == 'done') {
				info.el.style.opacity = '1';
			}
		} 

	});
		
		// 렌더링
		calendar.render();

	});
	
	
	

	document.addEventListener('DOMContentLoaded', function() {

		var calendarEl = document.getElementById('l-calendar2');
		var calendar = new FullCalendar.Calendar(calendarEl, {

			initialView : 'dayGridMonth', // 월 달력
			initialDate : '2022-04-01',

			// 달력 툴
			headerToolbar : {
				left : 'prev',
				center : 'title',
				right : 'next today,dayGridMonth'
			},

			editable : true, // 드래그 수정 가능
			locale : 'ko', // 한국어 설정(lib/locales/ko.js)

			// 일정 클릭 이벤트
			eventClick : function(info) {
				if(info.event.extendedProps.status == 'booking'){
					window.location.href = '${pageContext.request.contextPath}/bookingDetailHost?bookingNo='+document.getElementById('no').getAttribute('data-bookingno');
				}
			},
			
			//날짜 클릭 이벤트
		  	dateClick: function(info) {
			    window.location.href = '/project/bookingBeforeHostDate?hostNo=${param.hostNo}&date='+info.dateStr;
			},
			
			events: [
				// ajax 처리로 데이터를 로딩 시킨다. 
				$.ajax({ 
					type:"get", 
					url:"${pageContext.request.contextPath}/calendar?hostNo=${param.hostNo}", 
					dataType : "json",
					success: function (bList) {
						for(var i=0; i<bList.length; i++) {
							calendar.addEvent({
								title: bList[i].guestName+'('+bList[i].status+')',
								start: bList[i].checkin,
								end: bList[i].checkout,
								status: 'booking',
								color: '#ffafb0',
								textColor: '#000000',
								status: 'booking'
							});
						}
						
					}
				}),

			$.ajax({ 
				type:"get", 
				url:"${pageContext.request.contextPath}/calendarAble?hostNo=${param.hostNo}", 
				dataType : "json",
				success: function (aList) {
					for(var i=0; i<aList.length; i++) {
						calendar.addEvent({
							start: aList[i].ableDate,
							end: aList[i].ableDate,
							allDay: true,
							status: 'done',
							display: 'background',
							overlap: false,
							backgroundColor: 'rgb(255, 255, 255)'
						});
					}
					
				}
			})
		],
		
		 eventDidMount: function(info) {
			if(info.event.extendedProps.status == 'done') {
				info.el.style.opacity = '1';
			}
		} 

	});
		
		// 렌더링
		calendar.render();

	});
	
	
</script>
</html>