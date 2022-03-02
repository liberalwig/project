<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>찜목록</title>

        <link href="../../../assets/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="../../../assets/css/heart.css" rel="stylesheet" type="text/css">
        
        <script type="text/javascript" src="../../../assets/bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="../../../assets/js/jquery-1.12.4.js"></script>   
    </head>
    
    
    <body>
        <div id="header">
            <div id="logo" class="col-xs-3">
                <img class="logo-img" src="../../../assets/images/logo2.jpg">
            </div>
            <div id="search" class="col-xs-4">
                <img class="logo-img" src="../../../assets/images/2.png">
            </div>
            <div id="menu" class="col-xs-2">
                <button type="button" class="btn btn-default menu">펫시터되기</button>
                <button type="button" class="btn btn-default menu"><span class="glyphicon glyphicon-envelope" aria-hidden="true" style="margin:0px;"></span><span class="badge">0</span></button>
                <button type="button" class="btn btn-default menu"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="margin:0px;"></span></button>
            </div>
        </div>

        <div id="wrap">
            <div id="container" class="clearfix">            
                <div id="aside">
                    <ul id="b-aside">
                       <li class="menu">예약관리<img src="../../../assets/images/aside.png" class="aside-img"></li>
                       <ul id="s-aside" class="hide">
                          <li>대기내역</li>
                          <li>예약신청관리</li>
                       </ul>
                       <li>나의 강아지</li>
                       <li>메세지</li>
                       <li>찜목록</li>
                       <li>내 정보 수정</li> 
                    </ul>
                </div>
            
                <div id="content">
                    <div id="content-head">
                        <p id="nav">마이 사이트 > 찜 목록</p>
                        <p id="now">찜 목록</p>
                    </div>

                    <div id="content-main" style="margin-left:50px;">
                        <div class="row">
                            <div class="search_result" class="col-md-6">
                                <!--리스트 반복 구역-->
                                <div class="search_result_list">
                                <div class="row">
                                    <div>
                                        <div class="col-md-6">
                                            <img class="result-img" src="../../../assets/images/hostSample01.jpeg">
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
                                            <img class="result-img" src="../../../assets/images/hostSample02.jpeg">
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
                                            <img class="result-img" src="../../../assets/images/hostSample03.jpeg">
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
    </script>
</html>