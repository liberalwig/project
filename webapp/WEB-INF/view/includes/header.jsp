<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	    <!-- CSS -->
	  
	   	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
	 
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
                           <input type="text" class="search_text1 small form-control ps-0 pointer" placeholder="어디를 찾으세요?" aria-label="Search" aria-describedby="basic-addon2">
                       </div> 
                       <div class="searchboxin_2 input-group input-group-joined">
                           <input class="search_text2 form-control small ps-0 pointer" id="litepickerRangePlugin" value="" placeholder="체크인 / 체크아웃" />
                       </div> 
                       <button class="search_text3 btn btn-primary" type="button">
                       <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                       </button>
                   </div>
               </form>
           </div>

            <!--menu  로그인 로그아웃 영역 나누기-->
            <!--menu  로그인-->
           <div class="menu col-md-2">
                <div class="menu_btn1">
                    <button type="button" class="btn btn-default">펫시터되기</button>
                </div>
                
                <div class="menu_btn2">
                    <button type="button" class="btn btn-default">
                        <a href="#">Messages <span class="badge"><!--메세지 갯수 입력-->3</span></a>
                    </button>
                </div>
                
                <div class="btn-group pull-right menu_btn3">
                    <button type="button" class="menu_text3 btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                      <!--  <li class="divider"></li> 줄넣는 방법-->
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </div>
           	</div>
           	
           	
           	 <!--menu  로그아웃
           	  
           	<div class="menu col-md-2">
                <div class="menu_btn1">
                    <button type="button" class="btn btn-default">펫시터되기</button>
                </div>
                <div class="menu_btn2">
                    <button type="button" class="btn btn-default">
                        <a href="#">Messages <span class="badge"><!--메세지 갯수 입력   3</span></a>
                    </button>
                </div>
                <div class="btn-group menu_btn3">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                    </button>
                    드롭다운 메뉴
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                      <!--  <li class="divider"></li> 줄넣는 방법
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </div>
           	</div>
           	-->
           	
           	
        </div>
    </header>


    <!-- 달력-->
    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/assets/js/litepicker.js"></script>




