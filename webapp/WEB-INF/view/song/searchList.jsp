<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
	   	<!-- font-->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	    <!-- CSS -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/searchList.css" type="text/css">
	 	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
	    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

	    <!--지도관련-->
	    <script src="${pageContext.request.contextPath}/assets/js/map.js"></script>
	    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
	     <!--지도관련-->
	   
	<!--<script src="https://kit.fontawesome.com/28ef845f49.js"></script> -->
	    
	    <title>searchList</title>
	</head>
	<body>
	
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
	
    <div id="wrap" class="container-fluid">
        <!-- main -->
        <div id="search_List" class="container-fluid">
            <div id="search_button">
                 <!-- 버튼 오른쪽 -->
                <div class="search_button_left col-md-4">
      				<div class="col-xs-2 padding_0">
      					 <button type="button" class="btn btn-default">
	                	 	<a href="#">청결 </a>
	                	 </button>	
      				</div>
                    <div class="col-xs-2 padding_0">
                    	<button type="button" class="btn btn-default">
	                		<a href="#">산책 </a>
	                	</button>
                    </div>
                    <div class="col-xs-2 padding_0">
	                    <button type="button" class="btn btn-default">
		                	<a href="#">식사</a>
		               	</button>
                    </div>
                    <div class="col-xs-2 padding_0">
		                <button type="button" class="btn btn-default">
		                	<a href="#">청결 </a>
		                </button>
                    </div>
                    <div class="col-xs-2 padding_0">
	                    <button type="button" class="btn btn-default">
		               		<a href="#">소통 </a>
		                </button>
                    </div>
                </div>

                <div class="search_button_center col-md-4"></div>
                <!-- 버튼 왼쪽 -->    
                <div class="search_button_right col-md4">
       				  <div class="col-xs-2 padding_1">
	                    <button type="button" class="btn btn-default button_right1">
		               		<a href="#">어디서 </a>
		                </button>
                    </div>
                      <div class="col-xs-2 padding_1 position_1">
	                    <button type="button" class="btn btn-default button_right2">
		               		<a href="#">언제 </a>
		                </button>
                    </div>
                      <div class="col-xs-2 padding_1">
	                    <button type="button" class="btn btn-default button_right3">
		               		<a href="#">필터 </a>
		                </button>
                    </div>
                </div>
            </div>
            <div class="container-fluid search_container search_flex">
            <div class="search_web">
            	<!-- 반복영역 -->
                <div class="search_result" class="col-md-6">
	                <c:forEach items="${SearchList}" var="SearchListVo">
		                <div class="search_result_list"></div>
		                <div class="row search_cursor_pointer" onclick="location.href='/project/host2/info/${SearchListVo.hostNo}';">
		                	<div>
		                        <div class="col-md-6">
		                        <c:choose>
									<c:when test="${empty SearchListVo.path}">
										<img class="result-img" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg">
									</c:when>
									<c:otherwise>
										<img class="result-img" src="${pageContext.request.contextPath}/photo/${SearchListVo.path}">
									</c:otherwise>
								</c:choose>
		                        </div>
		                        <div class="search_result_text col-md-6">
		                            <div class="result_text row">
		                                <div class="puppy col-xs-6">
		  								    퍼피력 &nbsp;${SearchListVo.puppyPoint} 
		                                </div>
		                        		<div class="heart col-xs-6 bi-heart"></div>
		                        	</div>
		                            <div class="host_name result_text row">
		                            	${SearchListVo.hostName} ${hostNo}
		                            </div>
		                            <div class="address result_text row">
		                           		${SearchListVo.adress1}
		                            </div>
	                           		<div class="result_text row"></div>
		                            <div class="result_text row">
			                            <div class="review col-xs-6">후기(${SearchListVo.reviewPoint})</div>
			                            <div class="price col-xs-6">₩${SearchListVo.bookingDate}/ 박 </div>
			                        </div>
		                        </div>
		                	</div>
		                </div>
					</c:forEach>
            	</div>
			<!-- 반복영역 -->
            </div>
            <!-- 지도자리 -->
  		    <div id="map" class="scroll"></div>
    	</div>
        </div>
     
    </div>
    <!--지도-->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b041f9ad62c37064e496f0bc81216407"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(33.450701, 126.570667),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);    
	</script>
	
	<!--하트 클릭-->
	<script type="text/javascript" >
	    var i = 0;
	    $('.bi-heart').on('click',function(){
	        if(i==0){
	            $(this).removeClass('bi-heart');
	            $(this).addClass('bi-heart-fill');
	            i++;
	        }else if(i==1){
	            $(this).removeClass('bi-heart-fill');
	            $(this).addClass('bi-heart');
	            i--;
	        }
	        
	    });
	    
	    <!--스크롤-->
	    $(document).ready(function(){
	    	  var currentPosition = parseInt($(".scroll").css("top"));
	    	  $(window).scroll(function() {
	    	    var position = $(window).scrollTop(); 
	    	    $(".scroll").stop().animate({"top":position+currentPosition+"px"},1000);
	    	  });
	    	});
	</script>
	

	</body>
</html>