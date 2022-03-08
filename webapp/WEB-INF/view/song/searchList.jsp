<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <!-- CSS -->
	 
	    <!--menu 버튼 링크-->
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/searchList.css" type="text/css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" type="text/css">
	    
	    <!--지도관련-->
	    <script src="${pageContext.request.contextPath}/assets/js/map.js"></script>
	    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
	     <!--부트스트랩-->
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	   
	    <!-- 부가적인 테마 -->
	    <title>searchList</title>
	</head>
	<body>
	
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
	
    <div id="wrap" class="container">
        <!-- main -->
        <div id="search_list" class="container">
            <div id="search_button" class="row">
                 <!-- 버튼 오른쪽 -->
                <div class="search_button_left col-md-4">
      				<div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">청결</a></div>
                    <div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">산책</a></div>
                    <div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">환경</a></div>
                    <div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">소통</a></div>
                    <div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">식사</a></div>
                </div>

                <div class="search_button col-md-4 offset-md-4"></div>
                <!-- 버튼 왼쪽 -->    
                <div class="search_button_right col-md-4 ">
                    <div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">어디서</a></div>
                    <div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">언제</a></div>
                    <div class="col-xs-2"><a href="" id="filter_button_width" class="button fast white">필터</a></div>
                </div>
            </div>
            <div class="row">
                <div class="search_result" class="col-md-6">
                    <!--리스트 반복 구역-->
                    <div class="search_result_list"></div>
                    <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지 주인7.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                     <!--리스트 반복 구역-->
                     <div class="search_result_list"></div>
                     <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--리스트 반복 구역-->
                    <div class="search_result_list"></div>
                    <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지주인8.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                     <!--리스트 반복 구역-->
                     <div class="search_result_list"></div>
                     <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지주인7.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    
                     <!--리스트 반복 구역-->
                     <div class="search_result_list"></div>
                     <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지주인7.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                        <!--리스트 반복 구역-->
                        <div class="search_result_list"></div>
                        <div class="row">
                           <div>
                               <div class="col-md-6">
                                   <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                               </div>
                               <div class="search_result_text col-md-6">
                                   <div class="result_text row">
                                       <div class="puppy col-xs-6">퍼피력9.0</div>
                                       <div class="heart col-xs-6 bi-heart"></div>
                                   </div>
                                   <div class="host_name result_text row">개장수</div>
                                   <div class="address result_text row">서울시 관악구</div>
                                   <div class="result_text row"></div>
                                   <div class="result_text row">
                                   <div class="review col-xs-6">(후기108개)</div>
                                   <div class="price col-xs-6">₩54,870/ 박 </div>
                                   </div>
                               </div>
                           </div>
                       </div>

                           <!--리스트 반복 구역-->
                     <div class="search_result_list"></div>
                     <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                        <!--리스트 반복 구역-->
                        <div class="search_result_list"></div>
                        <div class="row">
                           <div>
                               <div class="col-md-6">
                                   <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                               </div>
                               <div class="search_result_text col-md-6">
                                   <div class="result_text row">
                                       <div class="puppy col-xs-6">퍼피력9.0</div>
                                       <div class="heart col-xs-6 bi-heart"></div>
                                   </div>
                                   <div class="host_name result_text row">개장수</div>
                                   <div class="address result_text row">서울시 관악구</div>
                                   <div class="result_text row"></div>
                                   <div class="result_text row">
                                   <div class="review col-xs-6">(후기108개)</div>
                                   <div class="price col-xs-6">₩54,870/ 박 </div>
                                   </div>
                               </div>
                           </div>
                       </div>

                           <!--리스트 반복 구역-->
                     <div class="search_result_list"></div>
                     <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                        <!--리스트 반복 구역-->
                        <div class="search_result_list"></div>
                        <div class="row">
                           <div>
                               <div class="col-md-6">
                                   <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                               </div>
                               <div class="search_result_text col-md-6">
                                   <div class="result_text row">
                                       <div class="puppy col-xs-6">퍼피력9.0</div>
                                       <div class="heart col-xs-6 bi-heart"></div>
                                   </div>
                                   <div class="host_name result_text row">개장수</div>
                                   <div class="address result_text row">서울시 관악구</div>
                                   <div class="result_text row"></div>
                                   <div class="result_text row">
                                   <div class="review col-xs-6">(후기108개)</div>
                                   <div class="price col-xs-6">₩54,870/ 박 </div>
                                   </div>
                               </div>
                           </div>
                       </div>

                           <!--리스트 반복 구역-->
                     <div class="search_result_list"></div>
                     <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>

                        <!--리스트 반복 구역-->
                        <div class="search_result_list"></div>
                        <div class="row">
                           <div>
                               <div class="col-md-6">
                                   <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                               </div>
                               <div class="search_result_text col-md-6">
                                   <div class="result_text row">
                                       <div class="puppy col-xs-6">퍼피력9.0</div>
                                       <div class="heart col-xs-6 bi-heart"></div>
                                   </div>
                                   <div class="host_name result_text row">개장수</div>
                                   <div class="address result_text row">서울시 관악구</div>
                                   <div class="result_text row"></div>
                                   <div class="result_text row">
                                   <div class="review col-xs-6">(후기108개)</div>
                                   <div class="price col-xs-6">₩54,870/ 박 </div>
                                   </div>
                               </div>
                           </div>
                       </div>

                           <!--리스트 반복 구역-->
                     <div class="search_result_list"></div>
                     <div class="row">
                        <div>
                            <div class="col-md-6">
                                <img class="result-img" src="./assets/image/강아지 주인5.jpg">
                            </div>
                            <div class="search_result_text col-md-6">
                                <div class="result_text row">
                                    <div class="puppy col-xs-6">퍼피력9.0</div>
                                    <div class="heart col-xs-6 bi-heart"></div>
                                </div>
                                <div class="host_name result_text row">개장수</div>
                                <div class="address result_text row">서울시 관악구</div>
                                <div class="result_text row"></div>
                                <div class="result_text row">
                                <div class="review col-xs-6">(후기108개)</div>
                                <div class="price col-xs-6">₩54,870/ 박 </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!--리스트 반복 구역-->
                    <div class="search_result_list"></div>
                </div>

                <!-- 지도 자리-->
                    <div id="search_map" class="col-md-6">
                            <div id="sidebox"> 
                                <div id="map">
                            </div>
                        </div>
                    </div>
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
	<script  type="text/javascript">
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
	
	    var currentPosition = parseInt($("#sidebox").css("top")); $(window).scroll(function() { var position = $(window).scrollTop(); $("#sidebox").stop().animate({"top":position+currentPosition+"px"},1000); });
	</script>
	</body>
</html>