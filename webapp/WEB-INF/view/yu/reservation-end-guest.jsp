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

<script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
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
							<tr>
								<td><input type="radio" name="list-radio"></td>
								<td id="no">11111</td>
								<td><img src="/project/assets/images/reservation-dog.png"></td>
								<td>개장수</td>
								<td>22/05/01 ~ 22/05/03
								</td>
								<td>₩ 20,000</td>
								<td>010-1111-1111</td>
								<td><div class="btn-re-gradient yellow mini">예약완료</div></td>
							</tr>
							<tr>
								<td><input type="radio" name="list-radio"></td>
								<td id="no">22222</td>
								<td><img src="/project/assets/images/reservation-dog.png""></td>
								<td>강형욱</td>
								<td>22/05/01 ~ 22/05/03
								</td>
								<td>₩ 20,000</td>
								<td>010-1111-1111</td>
								<td><div class="btn-re-gradient orange mini">펫시팅중</div></td>
							</tr>
							<tr>
								<td><input type="radio" name="list-radio"></td>
								<td id="no">33333</td>
								<td><img src="/project/assets/images/reservation-dog.png"></td>
								<td>이경규</td>
								<td>22/05/01 ~ 22/05/03
								</td>
								<td>₩ 20,000</td>
								<td>010-1111-1111</td>
								<td>
									<div class="btn-re-gradient blue mini">&nbsp&nbsp&nbsp완료&nbsp&nbsp&nbsp</div>
								</td>
							</tr>
							<tr>
								<td><input type="radio" name="list-radio"></td>
								<td id="no">33333</td>
								<td><img src="/project/assets/images/reservation-dog.png"></td>
								<td>이경규</td>
								<td>22/05/01 ~ 22/05/03
								</td>
								<td>₩ 20,000</td>
								<td>010-1111-1111</td>
								<td>
									<div class="btn-re-gradient blue mini">&nbsp&nbsp&nbsp완료&nbsp&nbsp&nbsp</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
</body>

<script>

	/* aside */
	// html dom 이 다 로딩된 후 실행된다.
	$(document).ready(function() {
		// memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$(".menu").click(function() {
			// 현재 클릭한 태그가 a 이기 때문에
			// a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
			$(this).next("ul").toggleClass("hide");
		});
	});

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

			// 요일 클릭 이벤트
			dateClick : function() {
				alert('요일 클릭!');
			},

			// 일정 클릭 이벤트
			eventClick : function() {
				alert('일정 클릭!');
			},

		});

		// 데이터 삽입방식

		calendar.addEvent({
			'title' : '개장수',
			'start' : '2022-02-01'
		});

		calendar.addEvent({
			'title' : '고객2-펌',
			'start' : '2020-07-18T22:00'
		});

		calendar.addEvent({
			'title' : '강형욱',
			'start' : '2022-02-18',
			'end' : '2022-02-23'
		});

		// 렌더링

		calendar.render();

	});
</script>
</html>