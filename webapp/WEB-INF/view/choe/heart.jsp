<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>찜목록</title>

    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/heart.css" rel="stylesheet" type="text/css"/>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>   
</head>


<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

    <div id="wrap">
        <div id="container" class="clearfix">      
            <!-- aside -->
            <c:import url="/WEB-INF/view/includes/aside.jsp"></c:import>
        
            <div id="content">
                <div id="content-head">
                    <p id="nav">마이 사이트 > 찜 목록</p>
                    <p id="now">찜 목록</p>
                </div>
                <div id="content-main" style="margin-left:50px;">
                    <div class="search_result">
                        <c:forEach items="${requestScope.heartList}" var="vo">
                            <div class="col-xs-6">

                                <div class="col-xs-6">
                                    <img class="result-img" src="${pageContext.request.contextPath}/photo/${searchListVo.path}">   	
                                </div>
                                <div class="col-xs-6">
                                    <div class="result_text row">
                                        <div class="puppy col-xs-6">퍼피력<strong>${requestScope.searchListVo.puppypoint}</strong></div>
                                        <button id="btn-${vo.hostNo}" class="heart col-xs-6 bi-heart" data-no="${vo.hostNo}">♥</button>
                                    </div>
                                    
                                    <div class="host_name result_text row"><strong>${vo.name}</strong></div>
                                    <div class="address result_text row">${requestScope.searchListVo.address}</div>
                                    <div class="result_text row"></div>

                                    <div class="result_text row">
                                        <div class="review col-xs-6">(후기<strong> ${requestScope.searchListVo.reviewcount}</strong>개)</div>
                                        <div class="price col-xs-6">₩<strong>${requestScope.searchListVo.hostcost}</strong>/ 1 박 x 1 마리</div>
                                    </div>
                                </div>
                            </div>	                            	
                        </c:forEach>
                    </div>
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
        
        //하트 클릭
		$(".heart").on("click", function(){
			var $this = $(this);
			var hostNo = $this.data('no');
			console.log(hostNo);
			
         $.ajax({
			//요청할때
			url : "${pageContext.request.contextPath}/user/heart",    
			type : "post",
			data : userVo,
			success : function(count) {
				$.ajax({
					url : "${pageContext.request.contextPath}/user/heart?usersNo=${sessionScope.usersNo}",    
					type : "post",
					data : formData,
					success : function(count) {
						console.log("성공");
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			} 
        });						
    </script>        
 </html>