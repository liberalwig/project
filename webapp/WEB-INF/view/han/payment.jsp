<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>결제하기</title>

<!--CSS-->
<link href="${pageContext.request.contextPath}/assets/css/booking2.css?after" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/finishP.css?after" rel="stylesheet" type="text/css">

<!--자바스크립트-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>

<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
    <div id="wrap">
        <div id="container">
        
            <div id="booking" class="col-xs-7 left info">
                <div class="row">
                    <h2>결제하기</h2>                    
                </div>
                <div class="row">
                    <div class="Q">
                        <h4>1단계. 체크인, 체크아웃 날짜</h4>
                        <img src="${pageContext.request.contextPath}/assets/images/booking_calendar.png" width="430px" style="margin-left:150px">
                        <div style="border:1px solid #bbb; text-align:center;">
                        	<h4>체크인: ${requestScope.bookingVo.checkin}</h4>
	                        <h4>체크아웃: ${requestScope.bookingVo.checkout}</h4>
                        </div>
                    </div>
                </div>
                    <div class="Q">
                        <h4>2단계. 반려견 마릿수</h4>
                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                            <div class="btn-group" role="group">
                            <button type="button" data-ea="1" class="btn btn-default active" value="1">1마리</button>
                            </div>
                            <div class="btn-group" role="group">
                            <button type="button" data-ea="2" class="btn btn-default" value="2">2마리</button>
                            </div>
                            <div class="btn-group" role="group">
                            <button type="button" data-ea="3" class="btn btn-default" value="3">3마리</button>
                            </div>
                        </div>
                    </div>
                    <div class="Q">
                        <h4>3단계. 펫 설명 및 요청사항</h4>
                        <p>강아지에 대한 설명과 요청사항을 적어주세요! 입력하신 정보는 펫시터에게 같이 전달됩니다.</p>
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">펫시터가 당신의 애완동물에게 알고싶은 것</h3>
                            </div>
                            <div class="panel-body">
                                ${requestScope.hostVo.asking}
                            </div>
                          </div>
                          <div class="well well-sm">
                      		<span>${requestScope.bookingVo.note}</span>
                      </div>
                    </div>
                </div>
            <div id="hostprofile" class="col-xs-4">
                <div id="profile" class="row">
                    <img id="hostimg" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg" class="img-circle">
                    <h3>${requestScope.hostVo.name}님</h3>
                    <h4>${requestScope.hostVo.adress1}</h4>
                    <button id="btn1" type="button" class="btn btn-default"><h5><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;메시지 보내기</h5></button>
                </div>
                <div id="checkbox" class="row">
                    <h4>결제정보</h4>
                    <div class="row">
                        <div id="check" class="col-xs-5">
                            <h4>일수</h4>
                            <h4>마릿수</h4>
                            <h4>총 금액</h4>
                        </div>
                        <div id="check2" class="col-xs-3">
                            <h4><span id="bookingDate">${requestScope.bookingVo.bookingDate}</span><span>원/1박</span></h4>
                            <h4><span id="ea">${requestScope.bookingVo.ea}</span><span>마리</span></h4>
                            <h4><span id="cost">${requestScope.bookingVo.totalCost}</span><span>원</span></h4>
                        </div>
                    </div>
                    <div class="row">
                        <br>
                        <p><span class="label label-danger">!</span>&nbsp;결제하기를 누르면 결제가 이루어집니다.</p>
                        <button id="btn2" type="button" class="btn btn-primary">결제하기</button>
                        <input type="text" id="bookingNo" value="${requestScope.bookingVo.bookingNo}">
                    </div>
                </div>       
            </div>   
        </div>
    </div>
    
	<!-- 예약완료 모달창 -->
	<div class="modal fade" id="paymentOk">
    	<div class="modal-dialog">
        	<div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <div id="modal-header" class="row">
            	<h3>결제가 완료 되었습니다.</h3>
            </div>
            <div class="modal-body">
                <h4 class="mar">펫시터 정보</h4>
                <div class="inform">
                    <div class="row">
                        <p class="col-md-6">이름</p>
                        <p class="col-md-6">${requestScope.hostVo.name}</p>
                    </div>
                
                    <div class="row">
                        <p class="col-md-6">전화번호</p>
                        <p class="col-md-6">${requestScope.hostVo.hp}</p>
                    </div>
                    
                    <div class="line row">
                        <p class="col-md-6">위치</p>
                        <p class="col-md-6">${requestScope.hostVo.adress1} ${requestScope.hostVo.adress2} ${requestScope.hostVo.adress3}</p>
                    </div>
                </div>
                <h4 class="mar">예약정보</h4>
                <div class="inform">
                    <div class="row">
                        <p class="col-md-6">체크인</p>
                        <p class="col-md-6">${requestScope.bookingVo.checkin}</p>
                    </div>
                    <div class="row">
                        <p class="col-md-6">체크아웃</p>
                        <p class="col-md-6">${requestScope.bookingVo.checkout}</p>
                    </div>
                    <div class="line row">
                        <p class="col-md-6">펫 설명 및 요청사항</p>
                        <p class="col-md-6 scroll scroll1" id="re">${requestScope.bookingVo.checkin}</p>
                    </div>
                </div>
                <h4 class="mar">결제 정보</h4>
                <div class="inform">
                    <div class="row">
                        <p class="col-md-6">시팅일수</p>
                        <p class="col-md-6">${requestScope.bookingVo.days} 일</p>
                    </div>
                    
                    <div class="row">
                        <p class="col-md-6">반려견 마릿수</p>
                        <p class="col-md-6">${requestScope.bookingVo.ea} 마리</p>
                    </div>
                    
                    <div class="row">
                        <p class="col-md-6">총 결제 금액</p>
                        <p class="col-md-6">${requestScope.bookingVo.totalCost} 원</p>
                    </div>
                </div>
            </div>

          <div class="modal-footer">
                <p>마이페이지의 예약 상세에서 볼 수 있습니다.</p>
                <button id="btn3"class="w-btn-outline w-btn-blue-outline" type="button">
                    확인
                </button>
          </div>

        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog-->
	</div>
	<!-- /.modal -->
</body>
<script>
//예약완료 버튼 클릭
$("#btn2").on("click", function(){
	console.log("결제하기")
	var bookingVo = {
		bookingNo : $("#bookingNo").val(),
	};
	console.log(bookingVo);
	
    //요청
	$.ajax({
		//요청할때
		url : "${pageContext.request.contextPath}/host2/payment",    
		type : "post",
		data : bookingVo,
		
		success : function(count) {
			console.log(count + "모달팝업");
			$('#paymentOk').modal('show');
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});
$("#btn3").on("click", function() {
	console.log("페이지 리다이렉트");
	location.replace("${pageContext.request.contextPath}/host2/info?hostNo=1")
});
</script>
</html>