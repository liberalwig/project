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

                    <div id="gallery" class="col-xs-7">
                        <!-- 사진 넣는 공간 -->
                        <div class="info">
                            <h2>펫사진</h2>
                            <hr>
                            
                            <c:forEach items="${pList}" var="pvo">
                            	<div class="wrapper">
	                                <div class="clearfix">
	                                    <div class="img-date"><h3>${pvo.photoDate}</h3></div>
	                                </div>
	                                <div>
	                                    <div class="item">
	                                        <div class="polaroid">
		                                        <c:if test="${pvo.photoPath == null}">
		                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
		                                		</c:if>
		                                		<c:if test="${pvo.photoPath != null}">
	                                        		<img src="${pvo.photoPath}" class="wrapper-img">
	                                        	</c:if>
	                                            <div class="caption">놀이</div>
	                                        </div>
	                                    </div>
	                                
	                                    <div class="item">
	                                        <div class="polaroid">
	                                        	<c:if test="${pvo.photoPath == null}">
		                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
		                                		</c:if>
		                                		<c:if test="${pvo.photoPath != null}">
	                                        		<img src="${pvo.photoPath}" class="wrapper-img">
	                                        	</c:if>
	                                            <div class="caption">산책</div>
	                                        </div>
	                                    </div>
	                                
	                                    <div class="item">
	                                        <div class="polaroid">
	                                        	<c:if test="${pvo.photoPath == null}">
		                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
		                                		</c:if>
		                                		<c:if test="${pvo.photoPath != null}">
	                                        		<img src="${pvo.photoPath}" class="wrapper-img">
	                                        	</c:if>
	                                            <div class="caption">식사</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="item">
	                                        <div class="polaroid">
	                                        	<c:if test="${pvo.photoPath == null}">
		                                        	<img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
		                                		</c:if>
		                                		<c:if test="${pvo.photoPath != null}">
	                                        		<img src="${pvo.photoPath}" class="wrapper-img">
	                                        	</c:if>
	                                            <div class="caption">청결</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </c:forEach>
                            
                        </div>
                    </div> 

                    <div id="information" class="col-xs-5">
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
                                    <div class="col-xs-6">${bvo.adress1} ${bvo.adress2} (${bvo.adress3})</div>
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
</body>
</html>