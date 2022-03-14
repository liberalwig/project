<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--CSS-->
    <link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="/project/assets/css/yu_main.css" rel="stylesheet" type="text/css">
    <link href="/project/assets/css/booking.css" rel="stylesheet" type="text/css"/>
	<link href="/project/assets/css/poto-upload.css" rel="stylesheet" type="text/css"/>

    <!--자바스크립트-->
    <script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="/project/assets/js/bootstrap.js"></script>
</head>

<body>

	<!-- header -->
    <c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

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
                            <li>예약신청관리</li>
							<li class="last">예약상세</li>
						</ul>
					</div>
					<h1>예약상세</h1>
				</div>

                <div id="content-main" class="clearfix container-fluid">

                    <div id="btn-area2">
                        <button class="btn btn-default add-img" onclick = "window.history.back()">목록으로 돌아가기</button>
                    </div>

                    <div id="gallery" class="col-xs-8">
                        <!-- 사진 넣는 공간 -->
                        <div class="info">
                            <h2>펫사진</h2>
                            <hr>
                            <c:if test="${!empty pList}">
                            	<div id="galleryArea">업로드된 인증사진이 없습니다.</div>
                            </c:if>
                            <%-- <c:if test="${pList}"> --%>
                            	<c:forEach items="${pList}" var="pListDate">
	                            	<div class="wrapper">
	                            	<c:if test="${pListDate[0].photoDate != null}">
		                                <div class="clearfix">
		                                    <div class="img-date"><h3>${pListDate[0].photoDate}</h3></div>
		                                </div>
		                                <div>
		                                	<c:if test="${pListDate[0].photoPath != null}">
			                                    <div class="item">
			                                        <div class="polaroid">
				                                        <c:if test="${pListDate[0].photoPath == null}">
				                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
				                                		</c:if>
				                                		<c:if test="${pListDate[0].photoPath != null}">
			                                        		<img data-no="${pListDate[0].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[0].saveName}" class="wrapper-img viewImg">
			                                        	</c:if>
			                                            <div class="caption">${pListDate[0].category}</div>
			                                        </div>
			                                    </div> 
		                                    </c:if>
		                                	<c:if test="${pListDate[1].photoPath != null}">
			                                    <div class="item">
			                                        <div class="polaroid">
			                                        	<c:if test="${pListDate[1].photoPath == null}">
				                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
				                                		</c:if>
				                                		<c:if test="${pListDate[1].photoPath != null}">
			                                        		<img data-no="${pListDate[1].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[1].saveName}" class="wrapper-img viewImg">
			                                        	</c:if>
			                                            <div class="caption">${pListDate[1].category}</div>
			                                        </div>
			                                    </div>
		                                	</c:if>
		                                	<c:if test="${pListDate[2].photoPath != null}">
			                                    <div class="item">
			                                        <div class="polaroid">
			                                        	<c:if test="${pListDate[2].photoPath == null}">
				                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
				                                		</c:if>
				                                		<c:if test="${pListDate[2].photoPath != null}">
			                                        		<img data-no="${pListDate[2].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[2].saveName}" class="wrapper-img viewImg">
			                                        	</c:if>
			                                            <div class="caption">${pListDate[2].category}</div>
			                                        </div>
			                                    </div>
		                                    </c:if>
		                                    <c:if test="${pListDate[3].photoPath != null}">
			                                    <div class="item">
			                                        <div class="polaroid">
			                                        	<c:if test="${pListDate[3].photoPath == null}">
				                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
				                                		</c:if>
				                                		<c:if test="${pListDate[3].photoPath != null}">
			                                        		<img data-no="${pListDate[3].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[3].saveName}" class="wrapper-img viewImg">
			                                        	</c:if>
			                                            <div class="caption">${pListDate[3].category}</div>
			                                        </div>
			                                    </div>
		                                   </c:if>
		                                </div> 
		                            </c:if>
		                           	</div>
	                            </c:forEach>
                            <%-- </c:if> --%>
                            
                            
                        </div>
                    </div> 

                    <div id="information" class="col-xs-4">
                        <!-- 펫시터 정보 넣는 공간 -->
                        <div class="info">
                            <h2>펫시터 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6">호스트이름</div>
                                    <div class="col-xs-6">${bvo.hostName}</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">연락처</div>
                                    <div class="col-xs-6">${bvo.hostHp}</div>
                                </div>
                            </div>
                        </div>

                        <!-- 예약정보 넣는 공간 -->
                        <div class="info">
                            <h2>예약 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6">위치</div>
                                    <div class="col-xs-6">${bvo.adress1} ${bvo.adress2} ${bvo.adress3}</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">펫설명/요청사항</div>
                                    <div class="col-xs-6">${bvo.note}</div>
                                </div>
                            </div>
                        </div>

                        <!-- 결제정보 넣는 공간 -->
                        <div class="info">
                            <h2>결제 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6">가격(1박)</div>
                                    <div class="col-xs-6">₩ ${bvo.bookingDate}</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">시팅일수</div>
                                    <div class="col-xs-6">${bvo.days}일</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">반려견 수</div>
                                    <div class="col-xs-6">${bvo.ea}마리</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">총 결제 금액</div>
                                    <div class="col-xs-6">₩ ${bvo.bookingDate * bvo.days * bvo.ea}</div>
                                </div>
                            </div>
                        </div>

                        <!-- 리뷰 넣는 공간 -->
                        <div class="info container-fluid">
                            <h2>리뷰 & 별점</h2>
                            <hr>
                            <div id="review" class="row">
                                <div class="col-xs-6">
                                    <h3>식사</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>

                                <div class="col-xs-6 review2">
                                    <h3>산책</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>
                            </div>

                            <div id="review" class="row">
                                <div class="col-xs-6">
                                    <h3>청결</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>

                                <div class="col-xs-6 review2">
                                    <h3>놀이</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>
                            </div>


                            <div id="review" class="row">
                                <div class="col-xs-6">
                                    <h3>소통</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>
                            </div>

                            <div id="review" class="row">
                                <div class="col-xs-6 review-text">
                                    <h3>후기</h3>
                                    <textarea>${bvo.review}</textarea>
                                </div>
                            </div>


                        </div>

                    </div>

                </div>
            
            
            </div>
        </div>
    </div>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none">
        <symbol id="star" viewBox="0 0 26 28">
          <path d="M26 10.109c0 .281-.203.547-.406.75l-5.672 5.531 1.344 7.812c.016.109.016.203.016.313 0 .406-.187.781-.641.781a1.27 1.27 0 0 1-.625-.187L13 21.422l-7.016 3.687c-.203.109-.406.187-.625.187-.453 0-.656-.375-.656-.781 0-.109.016-.203.031-.313l1.344-7.812L.39 10.859c-.187-.203-.391-.469-.391-.75 0-.469.484-.656.875-.719l7.844-1.141 3.516-7.109c.141-.297.406-.641.766-.641s.625.344.766.641l3.516 7.109 7.844 1.141c.375.063.875.25.875.719z"/>
        </symbol>
    </svg>
    
<!-- 이미지보기 팝업(모달)창 -->
<div class="modal fade" id="viewModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">이미지보기</h4>
			</div>
			<div class="modal-body">
				<div class="formgroup">
					<img id="viewModelImg" src="">
					<!-- ajax로 처리 : 이미지출력 위치-->
				</div>
				<div class="formgroup">
					<p id="viewModelContent"></p>
				</div>
				<input type="hidden" id="listNo" val="">
			</div>
		</div> <!-- /.modal-content -->
	</div> <!-- /.modal-dialog -->
</div> <!-- /.modal -->
    
</body>

<script type="text/javascript">
//이미지 눌렀을때(이미지보기)
$(".viewImg").on("click", function() {
	var $this = $(this);
	var no = $this.data("no");
	getImg(no);
});

//이미지 불러오기(이미지보기)
function getImg(no) {

	//var authUserNo = $("#btnImgUpload").data("uno");

	$.ajax({
		
		url : "${pageContext.request.contextPath}/viewImg",
		type : "post",
		//contentType : "application/json",
		data : { no : no },
		dataType : "json",
		success : function(pvo) {
			$("#viewModal").modal('show');
			$("#viewModelImg").attr("src", '${pageContext.request.contextPath}/photo/' + pvo.saveName);
			$("#viewModelContent").html(pvo.photoTitle);
			$("#listNo").val(pvo.photoNo);
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}
</script>

</html>