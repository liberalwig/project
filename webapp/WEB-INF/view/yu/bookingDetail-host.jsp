<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!--CSS-->
    <link href="${pageContext.request.contextPath}/assets/yu/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/assets/css/yu_main.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/assets/css/booking.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/css/poto-upload.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/css/myDog.css" rel="stylesheet" type="text/css">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--자바스크립트-->
    <script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>
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

                    <div id="btn-area1">
                    	<c:if test="${bvo.status == '펫시팅중' || bvo.status == '예약완료'}">
                    		<button name="imgupload" class="btn btn-default add-img4" data-photodate="${pListDate[0].photoDate}">이미지 업로드</button>
                    		<button id="h-messeage" data-usersno="${bvo.usersNo}" data-hostno="${bvo.hostNo}" class="btn btn-default hover-boot list-btn" type="submit">메세지보내기</button>
                    		<button class="btn btn-default add-img2" onclick = "window.history.back()">목록으로 돌아가기</button>
                    	</c:if>
                    	<c:if test="${bvo.status != '펫시팅중' && bvo.status != '예약완료'}">
                    		<button id="messeage" data-usersno="${bvo.usersNo}" data-hostno="${bvo.hostNo}" class="btn btn-default hover-boot list-btn" type="submit">메세지보내기</button>
                    		<button class="btn btn-default add-img3" onclick = "window.history.back()">목록으로 돌아가기</button>
                    	</c:if>
                    </div>

                    <div id="gallery" class="col-xs-8">
                        <!-- 사진 넣는 공간 -->
                        <div class="info">
                            <h2>펫사진</h2>
                            <hr>
                            <c:if test="${empty pList[0]}">
                            	<div id="galleryArea">
                            		<img id="fileless" src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" >
									<p class="message">아직 업로드된 이미지가 없습니다.</p>
                            	</div>
                            </c:if>
                            <c:if test="${!empty pList[0]}">
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
			                                		
		                                        		<img data-no="${pListDate[0].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[0].saveName}" class="wrapper-img viewImg">
		                                        	
		                                            <div class="caption">${pListDate[0].category}</div>
		                                        </div>
		                                    </div> 
	                                    </c:if>
	                                	<c:if test="${pListDate[1].photoPath != null}">
		                                    <div class="item">
		                                        <div class="polaroid">
		                                        		<img data-no="${pListDate[1].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[1].saveName}" class="wrapper-img viewImg">
		                                            <div class="caption">${pListDate[1].category}</div>
		                                        </div>
		                                    </div>
	                                    </c:if>
	                                	<c:if test="${pListDate[2].photoPath != null}">
		                                    <div class="item">
		                                        <div class="polaroid">
		                                        		<img data-no="${pListDate[2].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[2].saveName}" class="wrapper-img viewImg">
		                                            <div class="caption">${pListDate[2].category}</div>
		                                        </div>
		                                    </div>
	                                    </c:if>
	                                    <c:if test="${pListDate[3].photoPath != null}">
		                                    <div class="item">
		                                        <div class="polaroid">
			                                		
		                                        		<img data-no="${pListDate[3].photoNo}" src="${pageContext.request.contextPath }/photo/${pListDate[3].saveName}" class="wrapper-img viewImg">
		                                        	
		                                            <div class="caption">${pListDate[3].category}</div>
		                                        </div>
		                                    </div>
	                                    </c:if>
	                                   
	                                </div>
	                            </c:if>
	                            </div>
	                            
                            </c:forEach>
                            </c:if>
                           
                        </div>
                    </div>

                    <div id="information" class="col-xs-4">
                        <!-- 게스트 정보 넣는 공간 -->
                        <div class="info">
                            <h2>게스트 정보</h2>
                            <hr>
                            <c:if test="${!empty mvo.name}">
	                            <div id="dogCard">
									<div class="row"></div>
									<div id="cardHeader">
										<p id="headerText" class="text-center">강아지 등록증</p>
									</div>
									<hr>
									<div id="cardBody" class="clearfix">
										<form action="">
											<div id="imgFile" data-usersno="${bvo.usersNo}">
												<c:if test="${empty mvo.photo}">
													<img id="myDogImg" src="${pageContext.request.contextPath}/assets/images/myDogImg2.png">
												</c:if>
												<c:if test="${!empty mvo.photo}">
													<img id="myDogImg" src="${pageContext.request.contextPath}/photo/${mvo.photo}">
												</c:if>
												<p>갤러리보기</p>
											</div>
											<div id="myDogInfo">
												<p id="pName" class="text-center">${mvo.name}</p>
												<p><strong class="index">생년월일 :</strong> ${mvo.birth}</p>
												<p><strong class="index">성별 :</strong> ${mvo.gender}</p>
												<p><strong class="index">품종 :</strong> ${mvo.breed}</p>
												<p><strong class="index">몸무게 :</strong> ${mvo.weight}kg</p>
												<c:if test="${mvo.neuter == 1}">
													<p><strong class="index">중성화 :</strong> O</p>
												</c:if>
												<c:if test="${mvo.neuter == 0}">
													<p><strong class="index">중성화 :</strong> X</p>
												</c:if>
											</div>
										</form>
									</div>
								</div>
							</c:if>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6 catalog f-b">게스트이름</div>
                                    <div class="col-xs-6">${bvo.guestName}</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 f-b">연락처</div>
                                    <div class="col-xs-6">${bvo.guestHp}</div>
                                </div>
                            </div>
                        </div>

                        <!-- 예약정보 넣는 공간 -->
                        <div class="info">
                            <h2>예약 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6 f-b">위치</div>
                                    <div class="col-xs-6">${bvo.adress1} ${bvo.adress2} ${bvo.adress3}</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 f-b">펫설명/요청사항</div>
                                    <div class="col-xs-6">${bvo.note}</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 f-b">펫시팅일자</div>
                                    <div class="col-xs-6">${bvo.checkin} ~ ${bvo.checkout}</div>
                                </div>
                            </div>
                        </div>

                        <!-- 결제정보 넣는 공간 -->
                        <div class="info">
                            <h2>결제 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6 f-b">가격(1박)</div>
                                    <div class="col-xs-6">₩ ${bvo.bookingDate}</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 f-b">시팅일수</div>
                                    <div class="col-xs-6">${bvo.days}일</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 f-b">반려견 수</div>
                                    <div class="col-xs-6">${bvo.ea}마리</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 f-b">총 결제 금액</div>
                                    <div class="col-xs-6">₩ ${bvo.bookingDate * bvo.days * bvo.ea}</div>
                                </div>
                            </div>
                        </div>

                        <!-- 리뷰 넣는 공간 -->
                        <div class="info container-fluid">
                            <h2>리뷰 & 별점</h2>
                            <hr>
                            <div id="review" class="row">
                            	<c:if test="${bvo.status != '시팅완료'}">
                            		<div id="reviewEmpty">작성된 리뷰가 없습니다</div>
                            	</c:if>
                            	<c:if test="${bvo.status == '시팅완료'}">
	                                <div class="col-xs-6">
	                                    <h3 class="f-b">식사</h3>
	                                    <div class="rating">
					                           	<input type="radio" name="food" class="rating__control screen-reader" id="food1" value=1> 
												<input type="radio" name="food" class="rating__control screen-reader" id="food2" value=2> 
												<input type="radio" name="food" class="rating__control screen-reader" id="food3" value=3> 
												<input type="radio" name="food" class="rating__control screen-reader" id="food4" value=4> 
												<input type="radio" name="food" class="rating__control screen-reader" id="food5" value=5> 
		                                         
					                           <label for="food1" class="rating__item"> 
					                              <svg class="rating__star">
					                                     <use xlink:href="#star"></use>
					                                  </svg> 
					                                    <span class="screen-reader">1</span>
					                           </label> 
					                           <label for="food2" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                    </svg> 
					                                    <span class="screen-reader">2</span>
					                           </label> 
					                           <label for="food3" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                    </svg> 
					                                    <span class="screen-reader">3</span>
					                           </label> 
					                           <label for="food4" class="rating__item"> 
					                              <svg class="rating__star">
					                                         <use xlink:href="#star"></use>
					                                    </svg> 
					                                    <span class="screen-reader">4</span>
					                           </label> 
					                           <label for="food5" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                   </svg> 
					                                   <span class="screen-reader">5</span>
					                           </label>
					                        </div>
	                                </div>
	
	                                <div class="col-xs-6 review2">
	                                    <h3 class="f-b">산책</h3>
	                                    <div class="rating">
					                           	<input type="radio" name="walk" class="rating__control screen-reader" id="walk1" value=1> 
												<input type="radio" name="walk" class="rating__control screen-reader" id="walk2" value=2> 
												<input type="radio" name="walk" class="rating__control screen-reader" id="walk3" value=3> 
												<input type="radio" name="walk" class="rating__control screen-reader" id="walk4" value=4> 
												<input type="radio" name="walk" class="rating__control screen-reader" id="walk5" value=5> 
		                                        
					                           <label for="walk1" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                   </svg> 
					                                   <span class="screen-reader">1</span>
					                           </label> 
					                           <label for="walk2" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                    </svg> 
					                                    <span class="screen-reader">2</span>
					                           </label> 
					                           <label for="walk3" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                     </svg> 
					                                     <span class="screen-reader">3</span>
					                           </label> 
					                           <label for="walk4" class="rating__item"> 
					                              <svg class="rating__star">
					                                     <use xlink:href="#star"></use>
					                                  </svg> 
					                                    <span class="screen-reader">4</span>
					                           </label> 
					                           <label for="walk5" class="rating__item"> 
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
	                                    <h3 class="f-b">청결</h3>
	                                    <div class="rating">
					                           	<input type="radio" name="clean" class="rating__control screen-reader" id="clean1" value=1> 
												<input type="radio" name="clean" class="rating__control screen-reader" id="clean2" value=2> 
												<input type="radio" name="clean" class="rating__control screen-reader" id="clean3" value=3> 
												<input type="radio" name="clean" class="rating__control screen-reader" id="clean4" value=4> 
												<input type="radio" name="clean" class="rating__control screen-reader" id="clean5" value=5> 
		                                        
					                           <label for="clean1" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                    </svg> 
					                                   <span class="screen-reader">1</span>
					                           </label> 
					                           <label for="clean2" class="rating__item"> 
					                              <svg class="rating__star">
					                                     <use xlink:href="#star"></use>
					                                   </svg> 
					                                   <span class="screen-reader">2</span>
					                           </label> 
					                           <label for="clean3" class="rating__item"> 
					                              <svg class="rating__star">
					                                       <use xlink:href="#star"></use>
					                                     </svg> 
					                                     <span class="screen-reader">3</span>
					                           </label> 
					                           <label for="clean4" class="rating__item"> 
					                              <svg class="rating__star">
					                                     <use xlink:href="#star"></use>
					                                   </svg> 
					                                  <span class="screen-reader">4</span>
					                           </label> 
					                           <label for="clean5" class="rating__item"> 
					                              <svg class="rating__star">
					                                       <use xlink:href="#star"></use>
					                                    </svg> 
					                                    <span class="screen-reader">5</span>
					                           </label>
					                        </div>
	                                
	                                </div>
	
	                                <div class="col-xs-6 review2">
	                                    <h3 class="f-b">놀이</h3>
	                                    <div class="rating">
					                        <input type="radio" name="play" class="rating__control screen-reader" id="play1" value=1> 
											<input type="radio" name="play" class="rating__control screen-reader" id="play2" value=2> 
											<input type="radio" name="play" class="rating__control screen-reader" id="play3" value=3> 
											<input type="radio" name="play" class="rating__control screen-reader" id="play4" value=4> 
											<input type="radio" name="play" class="rating__control screen-reader" id="play5" value=5> 
	                                         
					                           <label for="play1" class="rating__item"> 
					                              <svg class="rating__star">
					                                      <use xlink:href="#star"></use>
					                                    </svg> 
					                                   <span class="screen-reader">1</span>
					                           </label> 
					                           <label for="play2" class="rating__item"> 
					                              <svg class="rating__star">
					                                     <use xlink:href="#star"></use>
					                                  </svg> 
					                                    <span class="screen-reader">2</span>
					                           </label> 
					                           <label for="play3" class="rating__item"> 
					                              <svg class="rating__star">
					                                     <use xlink:href="#star"></use>
					                              </svg> 
					                                    <span class="screen-reader">3</span>
					                           </label> 
					                           <label for="play4" class="rating__item"> 
					                              <svg class="rating__star">
					                                     <use xlink:href="#star"></use>
					                                  </svg> 
					                                    <span class="screen-reader">4</span>
					                           </label> 
					                           <label for="play5" class="rating__item"> 
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
	                                    <h3 class="f-b">소통</h3>
	                                    <div class="rating">
					                           	<input type="radio" name="communication" class="rating__control screen-reader" id="communication1" value=1> 
												<input type="radio" name="communication" class="rating__control screen-reader" id="communication2" value=2> 
												<input type="radio" name="communication" class="rating__control screen-reader" id="communication3" value=3> 
												<input type="radio" name="communication" class="rating__control screen-reader" id="communication4" value=4> 
												<input type="radio" name="communication" class="rating__control screen-reader" id="communication5" value=5> 
		                                        
					                           <label for="communication1" class="rating__item"> 
					                              <svg class="rating__star">
					                                 <use xlink:href="#star"></use>
					                              </svg> 
					                              <span class="screen-reader">1</span>
					                           </label> 
					                           <label for="communication2" class="rating__item"> 
					                              <svg class="rating__star">
					                                 <use xlink:href="#star"></use>
					                              </svg> 
					                              <span class="screen-reader">2</span>
					                           </label> 
					                           <label for="communication3" class="rating__item"> 
					                              <svg class="rating__star">
					                                 <use xlink:href="#star"></use>
					                              </svg> 
					                              <span class="screen-reader">3</span>
					                           </label> 
					                           <label for="communication4" class="rating__item"> 
					                              <svg class="rating__star">
					                                 <use xlink:href="#star"></use>
					                              </svg> 
					                              <span class="screen-reader">4</span>
					                           </label> 
					                           <label for="communication5" class="rating__item"> 
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
	                                    <h3 class="f-b">후기</h3>
	                                    <textarea id="review-text" disabled="disabled">${bvo.review}</textarea>
	                                </div>
	                            </div>
	                            
							</c:if>

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
    <!-- tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" -->
    
    
<!--class="modal fade"-->
<div class="modal fade" id="imgupdateModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">이미지 업로드하기</h4>
			</div>
			<div class="modal-body" class="container-fluid">
				<div class="row">
					<div class="col-xs-2">
					</div>
					<div class="col-xs-8">
						<div id="root">
							<form id="uploadForm" enctype="multipart/form-data" action="${pageContext.request.contextPath}/photoInsert?bookingNo=${bvo.bookingNo}" method="post">
								<div id="cate">
									<label>카테고리</label>
									<select id="modalCate" class="bo_w_select" name="category">
									  <option>식사</option>  
									  <option>산책</option>  
									  <option>청결</option>
									  <option>놀이</option>
									</select>
								</div>
								<div>
									<label class="pDate">등록일</label>
									<select class="bo_w_select" name="photoDate">
										<option>2022</option>
									</select>
									년
									<select id="photoDateM" class="bo_w_select" name="photoDate">
										<option>03</option>
										<option>04</option>
									</select>
									월
									<select id="photoDateD" class="bo_w_select" name="photoDate">
										<c:forEach begin="1" end="31" varStatus="status">
											<c:if test="${status.count >= 10}"><option>${status.count}</option></c:if>
											<c:if test="${status.count < 10}"><option>0${status.count}</option></c:if>
										</c:forEach>
									</select>
									일
								</div>
									<%-- <label class="pDate days">일차</label>
									<select id="days" class="bo_w_select" name="day">
										<c:forEach begin="1" end="62" varStatus="status">
											<option>${status.count}</option>
										</c:forEach>
									</select>
									일차 --%>
								<div>
								</div>
								<div>
									<label>글제목</label>
									<input id="modalTitle" type="text" name="photoTitle">
								</div>
								<hr>
								<div class="contents">
									<div class="upload-box">
										<div id="drop-file" class="drag-file">
											<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image" >
											<p class="message">파일 선택 버튼을 눌러 이미지를 추가해주세요</p>
											<input id="uploadDate" type="hidden" name="uploadDate" value="">
											<img id="View" src="" alt="" class="preview">
											<label class="file-label" for="myFile">파일 선택</label>
											<input class="file" name="file" type="file" id="myFile">
										</div>
										<label for="submitBtn" id="modalSubmit" class="file-label">확인</label>
										<input type="submit" id="submitBtn" style="display: none">
							      	</div>
								</div>
						    </form>
						</div>
					</div>
			    </div>
			</div>
		</div><!--/.modal-content-->
	</div><!--/.modal-dialog--> 
 </div><!--/.modal-->
	  
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

	<!--class="modal fade"-->
	<div class="modal fade" id="galleryModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">갤러리</h4>
				</div>
				<div class="modal-body">
					<div id="listArea"></div>
					<hr>
					<div class="contents">
					</div>
				</div>
			</div><!--/.modal-content-->
		</div><!--/.modal-dialog--> 
	 </div><!--/.modal-->

  	
</body>

<script>

	//모바일
	function Mobile(){
	return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);}
	
    if (Mobile()){// 모바일일 경우
    	location.assign('${pageContext.request.contextPath}/m/bookingDetailHost?bookingNo=${param.bookingNo}');
    }

	//메세지 버튼클릭
	$("#h-messeage").on("click", function(){
		var $this = $(this);
		var hostNo = $this.data("hostno");
		var usersNo = $this.data("usersno");
		console.log(hostNo+', '+usersNo);
		
		location.href = "${pageContext.request.contextPath}/message/getm?usersNo="+hostNo+"&target="+usersNo;
	});

	//리뷰별표시
	$(document).ready(function(){
		var clean = '<c:out value="${bvo.clean}"/>';
		var food = '<c:out value="${bvo.food}"/>';
		var play = '<c:out value="${bvo.play}"/>';
		var walk = '<c:out value="${bvo.walk}"/>';
		var communication = '<c:out value="${bvo.communication}"/>';
	
		
		var reviewArryValue = [clean, food, play, walk, communication];
		var reviewArryName = ['clean', 'food', 'play', 'walk', 'communication'];
		
		//DB에 있는값과 매칭시켜서 cheaked속성 추가
		for(var i=0; i<=4; i++) {
			for(var j=1; j<=5; j++) {
				if(reviewArryValue[i]/2 == j){
					$("#"+ reviewArryName[i] + j).attr("checked", "checked");
					break;
				}
			}
		}
		
	});
	
	//이미지업로드 버튼을 눌렀을때
	$("[name='imgupload']").on("click", function(){
		//데이터수집
		var $this = $(this);
		
		//초기화
		$("#modalCate").val("");
		$("#modalTitle").val("");
		$("#myFile").val();
		$("#photoDateM").val("");
		$("#photoDateD").val("");
		
		$('#imgupdateModal').modal('show');
		
	});	
	
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
	
	//미리보기
	$(function() {
	    $("#myFile").on('change', function(){
	    readURL(this);
	    });
	});
	
	function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        $('#View').attr('src', e.target.result);
	        $('#View').attr('style', 'display: block');
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	var cnt=0;
	//이미지업로드 버튼을 눌렀을때
	$("#imgFile").on("click", function(){
		cnt++;
		var $this = $(this);
		var usersNo = $this.data("usersno");
		
		if(cnt==1) {
			viewGallery(usersNo);
		}else {
			$("#galleryModal").modal('show');
		}
		
	});	
	
	function viewGallery(usersNo) {
		
		$.ajax({
			url : "${pageContext.request.contextPath}/gallerySelect",
			type : "post",
			//contentType : "application/json",
			data : { usersNo : usersNo },
			dataType : "json",
			success : function(gList) {
				
				$("#galleryModal").modal('show');
				for(var i=0; i<gList.length; i++){
					var str = '';
					str += '	<div class="item">';
					str += '		<div class="polaroid">';
					str += '			<img data-usersno='+usersNo+' data-photono='+gList[i].photoNo+' src="${pageContext.request.contextPath}/photo/'+gList[i].saveName+'" class="wrapper-img viewImg"> ';
					str += '			<div class="caption"></div>';
					str += '		</div>';
					str += '	</div>';
					$("#listArea").append(str);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
  </script>
</html>