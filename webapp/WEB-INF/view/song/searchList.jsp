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
      					<form action="${pageContext.request.contextPath}/searchList" method="get">
      						<input type="hidden" name="orderType" id="orderType" value="1" >
		      					 <button class="btn btn-default" type="submit">
			                	 		청결 
			                	 </button>	
	                	 </form>
      				</div>
                    <div class="col-xs-2 padding_0">
                    	<form action="${pageContext.request.contextPath}/searchList" method="get">
      						<input type="hidden" name="orderType" id="orderType" value="2" >
		      					 <button class="btn btn-default" type="submit">
			                	 		산책 
			                	 </button>	
	                	 </form>
                    </div>
                    <div class="col-xs-2 padding_0" >
	                    <form action="${pageContext.request.contextPath}/searchList" method="get">
      						<input type="hidden" name="orderType" id="orderType" value="3" >
		      					 <button class="btn btn-default" type="submit">
			                	 		식사 
			                	 </button>	
	                	 </form>
                    </div>
                    <div class="col-xs-2 padding_0">
		                <form action="${pageContext.request.contextPath}/searchList" method="get">
      						<input type="hidden" name="orderType" id="orderType" value="4" >
		      					 <button class="btn btn-default" type="submit">
			                	 		놀이
			                	 </button>	
	                	 </form>
                    </div>
                    <div class="col-xs-2 padding_0">
	                    <form action="${pageContext.request.contextPath}/searchList" method="get">
      						<input type="hidden" name="orderType" id="orderType" value="5" >
		      					 <button class="btn btn-default" type="submit">
			                	 		소통 
			                	 </button>	
	                	 </form>
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
	                <c:if test="${empty SearchList}">
			                <c:forEach items="${SearchList}" var="SearchListVo">
				                <div class="search_result_list"></div>
				                <div class="row search_cursor_pointer" onclick="location.href='/project/host2/info/${SearchListVo.hostNo}';">
				                	<div>
				                        <div class="col-md-6">
				                        <c:choose>
											<c:when test="${not empty SearchListVo.path}">
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
				                            	${SearchListVo.hostName}
				                            </div>
				                            <div class="address result_text row">
				                           		${SearchListVo.adress1}
				                            </div>
			                           		<div class="result_text row"></div>
				                            <div class="result_text row">
					                            <div class="review col-xs-6">후기(${SearchListVo.review}개)</div>
					                            <div class="price col-xs-6">₩${SearchListVo.hostCost}/ 박 </div>
					                        </div>
				                        </div>
				                	</div>
				                </div>
							</c:forEach>
						</c:if>
						<c:if test="${empty SearchList}">
							<h3>검색결과가 없습니다.</h3>
						</c:if>
            	</div>
            
			<!-- 반복영역 -->
            </div>
            <!-- 지도자리 -->
  		    <div id="map" class="scroll"></div>
    	</div>
        </div>
     
    </div>
    <!--지도-->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b041f9ad62c37064e496f0bc81216407&&libraries=services,clusterer"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(37.48128882577437, 126.95302167673873),
				level: 4
			};
			
			 <!--지도생성-->
			 var map = new kakao.maps.Map(container, options);   
			 
			 var positions = [
				    {
				        title: '한상선', 
				        latlng: new kakao.maps.LatLng(37.48128882577437, 126.95302167673873)
				    },
				    {
				        title: '개장수', 
				        latlng: new kakao.maps.LatLng(37.48128882577437, 126.95302167673875)
				    },
				    {
				        title: '조인성', 
				        latlng: new kakao.maps.LatLng(37.48128882577437, 126.95302167673878)
				    },
				    {
				        title: '윤개상',
				        latlng: new kakao.maps.LatLng(37.48128882577437, 126.95302167673872)
				    }
				];

				// 마커 이미지의 이미지 주소입니다
				var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
				    
				for (var i = 0; i < positions.length; i ++) {
				    
				    // 마커 이미지의 이미지 크기 입니다
				    var imageSize = new kakao.maps.Size(24, 35); 
				    
				    // 마커 이미지를 생성합니다    
				    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
				    
				    // 마커를 생성합니다
				    var marker = new kakao.maps.Marker({
				        map: map, // 마커를 표시할 지도
				        position: positions[i].latlng, // 마커를 표시할 위치
				        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				        image : markerImage // 마커 이미지 
				    });
				}
	
			 <!--지도 타입변경 컨트롤을 생성한다 -->
			 var mapTypeControl = new kakao.maps.MapTypeControl();
			 
			 <!-- 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다 -->
			 map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

			 <!-- 지도에 확대 축소 컨트롤을 생성한다 -->
			 var zoomControl = new kakao.maps.ZoomControl();

			 <!-- 지도의 우측에 확대 축소 컨트롤을 추가한다 -->
			 map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			 
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