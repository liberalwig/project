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
<link href="/project/assets/css/finishP.css" rel="stylesheet" type="text/css">
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
			
			<div id="content" >
				<div id="content-head">
					<div id="location">
						<ul>
							<li>마이페이지</li>
							<li>예약관리</li>
							<li class="last">결제대기내역</li>
						</ul>
					</div>
					<h1>결제대기내역</h1>
				</div>
				
				<div id="content-main">
					<div id="list-btn">
						<button class="btn btn-default hover-boot" type="submit">메세지보내기</button>
						<button class="btn btn-default hover-boot" type="submit">결제취소</button>
					</div>
					
					<table class="table table-hover">
						<thead>
							<tr>
								<th> </th>
								<th>예약번호</th>
								<th>프로필사진</th>
								<th>호스트이름</th>
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
									<td id="no"  onClick="location.href='${pageContext.request.contextPath}/bookingDetailGuest?bookingNo=${BookingVo.bookingNo}'">${BookingVo.bookingNo}</td>
									<td><img src="/project/assets/images/reservation-dog.png"></td>
									<td>${BookingVo.hostName}</td>
									<td>${BookingVo.checkin} ~ ${BookingVo.checkout}</td>
									<td>₩ ${BookingVo.bookingDate * BookingVo.days * BookingVo.ea}</td>
									<td>${BookingVo.hostHp}</td>
									<c:choose>
										<c:when test="${BookingVo.status == '승인대기'}">
											<td><div class="btn-re-gradient yellow mini">${BookingVo.status}</div></td>
										</c:when>
										<c:when test="${BookingVo.status == '결제대기'}">
											<td id="payForm" data-no="${BookingVo.bookingNo}"><div class="btn-re-gradient orange mini">결제대기</div></td>
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
	<div class="modal fade" id ="finishP">
		<!--class="modal fade"-->

		<div class="modal-dialog">

			<div class="modal-content">


				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>

				<div class="modal-body">
					<div id="header" class="row">
						<i class="bi bi-check2-circle col-md-2"></i>
						<h4 class="modal-title col-md-10">결제가 완료 되었습니다.</h4>
					</div>
					<h4>상세 정보</h4>
					<p class="mar">펫시터 정보</p>
					<div class="inform">
						<div class="row">
							<p class="col-md-6">이름</p>
							<p class="col-md-6">${BookingVo.name}</p>
						</div>

						<div class="line row">
							<p class="col-md-6">전화번호</p>
							<p class="col-md-6">${BookingVo.hp}</p>
						</div>
					</div>
					<p class="mar">예약 정보</p>
					<div class="inform">
						<div class="row">
							<p class="col-md-6">위치</p>
							<p class="col-md-6">${BookingVo.adress1} ${BookingVo.adress2} ${finishPVo.adress3}</p>
						</div>
						<div class="line row">
							<p class="col-md-6">펫 설명 및 요청사항</p>
							<p class="col-md-6 scroll scroll1" id="re">${BookingVo.note}</p>
						</div>
					</div>
					<p class="mar">결제 정보</p>
					<div class="inform">
						<div class="row">
							<p class="col-md-6">날짜</p>
							<p class="col-md-6">${BookingVo.checkin} ~ ${BookingVo.checkout}</p>
						</div>

						<div class="row">
							<p class="col-md-6">반려견 마릿수</p>
							<p class="col-md-6">${BookingVo.ea} 마리</p>
						</div>

						<div class="row">
							<p class="col-md-6">총 결제 금액</p>
							<p class="col-md-6">${BookingVo.bookingDate*BookingVo.days*BookingVo.ea} 원</p>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<p>마이페이지에서 예약 상세을 볼수 있습니다.</p>
					<input type="hidden" id="bookingNo" name= "bookingNo" value="">
					<input type="hidden" id="usersNo" name= "usersNo" value="${param.usersNo}">
					<button type="button" id="btnsub" >
						확인
					</button>
				</div>

			</div>
			<!-- /.modal-content -->

		</div>
		<!-- /.modal-dialog-->

	</div>
	<!-- /.modal -->

	
	

</body>

<script>

/* 결제대기 눌렀을때 */
$("#payForm").on("click", function(){
	$("#bookingNo").val($("#payForm").data("no"));
	$("#finishP").modal("show");
	
});

/* 리뷰확인버튼 눌름 */
$("#btnsub").on("click",function(){
	 var bookingNo = $("#bookingNo").val();
	 var usersNo = $("#usersNo").val();
	/*  var bookingVo {
		 bookingNo: bookingNo,
		 usersNo: usersNo
	 }; */
	 
	 $.ajax({ 
			type:"post", 
			url:"${pageContext.request.contextPath}/updateStatusP", 
			dataType : "json",
			data: {bookingNo, usersNo},
			success: function (result) {
				
			}
		});
	 
 });
</script>
</html>