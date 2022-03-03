<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8"/>

<!--CSS-->
<link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/finishP.css" rel="stylesheet" type="text/css">
<!-- 자바스크립트 -->
<script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>

<title>결제 완료</title>

</head>

  <body>
    <div><!--class="modal fade"-->

      <div class="modal-dialog">

        <div class="modal-content">

       
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            <div class="modal-body">
                <div id="header" class="row">
                    <i class="bi bi-check2-circle col-md-2"></i>
                    <h4 class="modal-title col-md-10">결제가 완료 되었습니다.</h4>
                </div>
                <h4>상세 정보</h4>
                <p class="mar">펫시터 정보</p>
                <div class="inform">
                    <div class="row">
                        <p class="col-md-6"> 이름</p>
                        <p class="col-md-6">황일영</p>
                    </div>
                
                    <div class="line row">
                        <p class="col-md-6">전화번호</p>
                        <p class="col-md-6">010-1111-1111</p>
                    </div>
                </div>
                <p class="mar">예약 정보</p>
                <div class="inform">
                    <div class="row">
                        <p class="col-md-6">위치</p>
                        <p class="col-md-6">서울시 관악구 남부순환로 1820 에그옐로우빌딩 14층</p>
                    </div>
                    <div class="line row">
                        <p class="col-md-6">펫 설명 및 요청사항</p>
                        <p class="col-md-6 scroll scroll1" id="re">저희 강아지 이름은 뿡빵이에요. 뿡빵이는 물을 좋아해서 물 그릇을 항상 채워주세요. 그리고 식탐이 많아서 다른 아이 밥을 뺏어먹을 수가 있으니까 지켜봐주세요.</p>
                    </div>
                </div>
                <p class="mar">결제 정보</p>
                <div class="inform">
                    <div class="row">
                        <p class="col-md-6">날짜</p>
                        <p class="col-md-6">09.02.21 ~ 11.02.21</p>
                    </div>
                    
                    <div class="row">
                        <p class="col-md-6">반려견 마릿수</p>
                        <p class="col-md-6">2 마리</p>
                    </div>
                    
                    <div class="row">
                        <p class="col-md-6">총 결제 금액</p>
                        <p class="col-md-6">60,000 원</p>
                    </div>
                </div>
            </div>

          <div class="modal-footer">
                <p>마이페이지에서 예약 상세을 볼수 있습니다.</p>
                <button class="w-btn-outline w-btn-blue-outline" type="button">
                    확인
                </button>
          </div>

        </div><!-- /.modal-content -->

      </div><!-- /.modal-dialog-->

    </div><!-- /.modal -->
  </body> 
</html>