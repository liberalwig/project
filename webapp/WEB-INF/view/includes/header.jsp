<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header_gairbnb.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" type="text/css">
 
    <!-- Icon -->
    <script src="https://kit.fontawesome.com/28ef845f49.js" crossorigin="anonymous"></script>
    
    <header>
        <div class="header container-fluid">
        
            <!--logo-->
            <div class="logo col-md-4">
                <a href="">
                    <img class="logo-img" src="${pageContext.request.contextPath}/assets/images/header_logo.jpg">
                </a>
            </div>
                <!--search-->
            <div class="searchbox col-md-4">
                <!-- Topbar Search -->
                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group input-group-joined border-0">
                        <div class="searchboxin_1 input-group input-group-joined"> 
                            <input type="text" class="search_text1 small form-control ps-0 pointer" 
                                   placeholder="어디를 찾으세요?" aria-label="Search" aria-describedby="basic-addon2">
                        </div> 
                        <div class="searchboxin_2 input-group input-group-joined" style="width: 16.5rem">
                              <!-- spen 아이콘 넣을 자리 -->
                            <input class="search_text2 form-control ps-0 pointer" id="litepickerRangePlugin" placeholder="체크인/체크아웃" />
                        </div> 
                            <button class="search_text3 btn btn-primary" type="button">
                     	 		검색
                       		</button>
                    </div>
                </form>
            </div>

            <!--menu  로그인 로그아웃 영역 나누기-->
            <!--menu  로그인-->
            <div class="menu col-md-2">
                <!-- User Dropdown-->
                <div class="menu_btn1">
                    <a href="">
                        <button class="btn1_text btn btn-primary" type="button">펫시터되기</button>
                    </a>
                </div>
                    <!-- Messages Dropdown-->
                    <div class="menu_btn2 nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
           
                        <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i data-feather="mail"></i>아이콘</a>
                        <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownMessages">
                            <h6 class="dropdown-header dropdown-notifications-header">
                                <i class="fa-solid fa-circle-envelope"></i>
                                Message Center
                            </h6>
                            <!-- Example Message 1  -->
                            <a class="dropdown-item dropdown-notifications-item" href="#!">
                                <img class="dropdown-notifications-item-img" src="${pageContext.request.contextPath}/assets/images/header_profile2.png" />  <!--메세지 보낸사람 이미지 경로 자리  -->
                                <div class="dropdown-notifications-item-content">
                                    <div class="dropdown-notifications-item-content-text">[OOO]님의 메세지 입니다.</div>
                                </div>
                            </a>
                            <!-- Example Message 2-->
                            <a class="dropdown-item dropdown-notifications-item" href="#!">
                                <img class="dropdown-notifications-item-img" src="${pageContext.request.contextPath}/assets/images/header_profile3.png" /> <!--메세지 보낸사람 이미지 경로 자리  -->
                                <div class="dropdown-notifications-item-content">
                                    <div class="dropdown-notifications-item-content-text">[OOO]님의 메세지 입니다.</div>
                                </div>
                            </a>
                            <!-- Example Message 3-->
                            <a class="dropdown-item dropdown-notifications-item" href="#!">
                                <img class="dropdown-notifications-item-img" src="${pageContext.request.contextPath}/assets/images/header_profile4.png"/> <!--메세지 보낸사람 이미지 경로 자리  -->
                                <div class="dropdown-notifications-item-content">
                                    <div class="dropdown-notifications-item-content-text">[OOO]님의 메세지 입니다..</div>
                                </div>
                            </a>
                            <!-- Example Message 4-->
                            <a class="dropdown-item dropdown-notifications-item" href="#!">
                                <img class="dropdown-notifications-item-img" src="${pageContext.request.contextPath}/assets/images/header_profile5.png" /> <!--메세지 보낸사람 이미지 경로 자리  -->
                                <div class="dropdown-notifications-item-content">
                                    <div class="dropdown-notifications-item-content-text">[OOO]님의 메세지 입니다.</div>
                                </div>
                            </a>
                            <!-- Footer Link-->
                            <a class="dropdown-item dropdown-notifications-footer" href="#!">Read All Messages</a>
                        </div>
           
                    </div>
                    <!-- User Dropdown-->
                    <div class="menu_btn3 nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
                        <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/images/menu_img.jpg" /> <!--로그인 사용자 프로필  -->
                        </a>
                        <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownUserImage">
                            <h6 class="dropdown-header d-flex align-items-center">
                                <img class="dropdown-user-img" src="${pageContext.request.contextPath}/assets/images/menu_img.jpg" /> <!--로그인 사용자 프로필  -->
                                <div class="dropdown-user-details">
                                    <div class="dropdown-user-details-name">송성빈</div>
                                    <div class="dropdown-user-details-email">aktm1004@naver.com</div>
                                </div>
                            </h6>
                            <div class="dropdown-divider"></div>
                              <!--menu 추가-->
                            <a class="dropdown-item" href="#!">
                                <div class="dropdown-item-icon"><i data-feather="settings"></i></div>
                                Account
                            </a>
                            <a class="dropdown-item" href="#!">
                                <div class="dropdown-item-icon"><i data-feather="log-out"></i></div>
                                Logout
                            </a>
                        </div>
                    </div>
                    <!--menu  로그아웃
                    <div class="menu_btn3 nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
                        <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="img-fluid" src="./assets/img/menu-img.jpg" /> <!--로그인 사용자 프로필  
                        </a>
                        <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownUserImage">
                            <h6 class="dropdown-header d-flex align-items-center">
                                <img class="dropdown-user-img" src="./assets/img/menu-img.jpg" /> <!--로그인 사용자 프로필  
                                <div class="dropdown-user-details">
                                    <div class="dropdown-user-details-name">송성빈</div>
                                    <div class="dropdown-user-details-email">aktm1004@naver.com</div>
                                </div>
                            </h6>
                            <div class="dropdown-divider"></div>
                              <!--menu 추가
                            <a class="dropdown-item" href="#!">
                                <div class="dropdown-item-icon"><i data-feather="settings"></i></div>
                                Account
                            </a>
                            <a class="dropdown-item" href="#!">
                                <div class="dropdown-item-icon"><i data-feather="log-out"></i></div>
                                Logout
                            </a>
                        </div>
                    </div>
                    -->
            </div>
          
        </div>
    </header>

    <!-- header-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	       <script src="${pageContext.request.contextPath}/assets/js/header.js"></script>

    <!-- 달력-->
    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/litepicker.js"></script>
    
 



