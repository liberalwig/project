<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	   
	   
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	    <!-- CSS -->
		 <link rel="stylesheet"  href="${pageContext.request.contextPath}/assets/css/main.css" type="text/css">
	   
	    
	    <!--jquery 버튼 링크-->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	    <!-- 부가적인 테마 -->
	    <title>header</title>
	</head>
	<body>
	
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

    <div id="wrap" class="container">
        <!-- main -->
        <div id="main" class="container-fluid">
            <div class="video-container">
                <video controlslist="nodownload" autoplay loop muted>
                    <source src="${pageContext.request.contextPath}/assets/video/main_video.mp4" type="video/mp4">
                </video>
                <div id="main-title">
                    <p class="title-a title_a_padding-right80">Easy, Fast & Convenient</p>
                    <p class><a class="title-b">Take Care of Your</a></p>
                    <p class="title-b"><a class="title-b">Puppy.</a></p>
                    <p class="title-a">Protect Your</p>
                </div>
            </div>
        </div>
         <!-- main -->

         <!-- footer -->
        <div id="footer" class="container-fluid">
            <div class="row">
                <div class="footer col-xs-4">
                    <div class="col-xs-2">
                        <img class="footer-img" src="${pageContext.request.contextPath}/assets/images/main_house.jpg">
                    </div>
                    <div class="footer-text  col-xs-2">
                        <p class="footer-h">House</p>
                        <p class="footer-b">To Your Door</p>
                    </div>  
                </div>
                <div class="footer col-xs-4">
                    <div class="col-xs-2">
                        <img class="footer-img" src="${pageContext.request.contextPath}/assets/images/main_order.jpg">
                    </div>
                    <div class="footer-text col-xs-2">
                        <p class="footer-h">Pickup</p>
                        <p class="footer-b">Check Out Location</p>
                    </div>  
                </div>
                <div class="footer col-xs-4">
                    <div class="col-xs-2">
                        <img class="footer-img" src="${pageContext.request.contextPath}/assets/images/main_pickup.jpg">
                    </div>
                    <div class="footer-text col-xs-2">
                        <p class="footer-h">Available for You</p>
                        <p class="footer-b">Online Support</p> 
                    </div>  
                </div>
                <div class="footer col-xs-4">
                    <div class="col-xs-2">
                        <img class="footer-img" src="${pageContext.request.contextPath}/assets/images/main_support.jpg">
                    </div>  
                    <div class="footer-text col-xs-2">
                       <p class="footer-h">Order on the Go</p> 
                       <p class="footer-b">Download Our App</p>
                    </div>  
                </div>
            </div>
            <div class="row">
                <div class="footer-text2 col-md-1">
                    © 2022 최승은 한상선 강소이 송성빈 유다운GariBnB.com
                </div>
            </div>
        </div>


    </div>

	</body>
</html>