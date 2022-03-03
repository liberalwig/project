<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
    <head>
        <!-- 메타태그 -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--메타데이터-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--CSS -->
        <link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="/project/assets/css/message.css" rel="stylesheet" type="text/css">
        <!-- 자바스크립트 -->
        <script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>

        <title>메세지</title>
    </head>
    <body>

        <div id="header">
            <div id="logo" class="col-xs-3">
                <img class="logo-img" src="/project/assets/images/logo2.jpg">
            </div>
            <div id="search" class="col-xs-4">
                <img class="logo-img" src="/project/assets/images/2.png">
            </div>
            <div id="menu" class="col-xs-2">
                <button type="button" class="btn btn-default menu">펫시터되기</button>
                <button type="button" class="btn btn-default menu"><span class="glyphicon glyphicon-envelope" aria-hidden="true" style="margin:0px;"></span><span class="badge">0</span></button>
                <button type="button" class="btn btn-default menu"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="margin:0px;"></span></button>
            </div>
        </div>
        <!--wrap-->
        <div id="wrap">

            <div id="container" >
                <div id="aside">
                    <ul id="b-aside">
                       <li class="menu">예약관리<img src="/project/assets/images/aside.png" class="aside-img"></li>
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

                <div id = "content">

                    <!-- <p id="nav">마이 사이트 > 메세지</p>
                    <p id="now">메세지</p> -->

                        <div id="content-head">
                            <div id="location" class="clearfix">
                               <ul>
                                  <li>마이페이지</li>
                                  <li class="last">메세지</li>
                               </ul>
                            </div>
                            <h1>메세지</h1>
                         </div>

                    <div id="content-main">
                        <div class=" row clearfix">
                            <div id="list" class="col-md-12">
                                <img class="profile" src="/project/assets/images/message_profile4.jpeg">
                                <p>안녕 나는 호스트</p>
                            </div>
                            <div id="pdetail" class="col-md-12 clearfix">
                                <a href=""><img class="profile" src="/project/assets/images/message_profile1.jpg"></a>
                                <p class="name"> 뿡빵 </p>
                                <p class="btn-re-gradient blue mini">승인 대기</p>
                            </div>
                        </div>
                        <div class=" row clearfix">
                            <div id="dList" class="col-md-12 clearfix scroll scroll1">
                                <a href=""><div class="clearfix">
                                    <img class="profile" src="/project/assets/images/message_profile1.jpg">
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">펫시팅 중</div></a>
                                    
                                </div>
                                <div class="clearfix">
                                    <a href=""><img class="profile" src="/project/assets/images/message_profile2.jpg"></a>
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">결제 대기</div>
                                </div>
                                <div class="clearfix">
                                    <a href=""><img class="profile" src="/project/assets/images/message_profile3.jpg"></a>
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">승인 대기</div>
                                </div>
                                <div class="clearfix">
                                    <a href=""><img class="profile" src="/project/assets/images/message_profile4.jpeg"></a>
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">문의</div>
                                </div>
                                <div class="clearfix">
                                    <a href=""><img class="profile" src="/project/assets/images/message_profile4.jpeg"></a>
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">문의</div>
                                </div>
                                <div class="clearfix">
                                    <a href=""><img class="profile" src="/project/assets/images/message_profile4.jpeg"></a>
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">문의</div>
                                </div>
                                <div class="clearfix">
                                    <a href=""><img class="profile" src="/project/assets/images/message_profile4.jpeg"></a>
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">문의</div>
                                </div>
                                <div class="clearfix">
                                    <a href=""><img class="profile" src="/project/assets/images/message_profile4.jpeg"></a>
                                    <p class="name"> 뿡빵 </p>
                                    <p class="timeL">21/02/27 19:00</p>
                                    <div class="state col-md-6">문의</div>
                                </div>
                            </div>
    
                            <div id="conver" class="col-md-12 clearfix scroll scroll1">
                                <div class="textyou"> <!--메세지창+시간-->
                                    <div class="talk-bubble">
                                        <div class="talktext">
                                            <p>메롱메롱메롱메롱메롱메롱메롱메롱v메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱
                                                메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱
                                                메롱메롱메롱메롱메롱메롱메롱메롱메롱v메롱메롱메롱메롱메롱
                                                메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱메롱v메롱메롱메롱메롱
                                                메롱메롱메롱메롱메롱메롱메롱메롱메롱
                                            </p>
                                        </div>
                                    </div>
                                    <p class="time">21/02/27 19:00</p>
                                </div>
                                <div class="textme"><!--메세지창+시간-->
                                    <div class="talk-bubblet">
                                        <div class="talktext">
                                        <p>메롱</p>
                                        </div>
                                    </div>
                                    <p class="timeme">21/02/27 22:00</p>
                                </div>

                            </div>
                            <div id="text" class="clearfix">
                                <textarea id="insert" class="col-md-7" placeholder="메세지를 입력하세요"></textarea>
                                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
								<button class="btn btn-default" type="submit">보내기</button>
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