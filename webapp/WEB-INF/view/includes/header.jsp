<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="${pageContext.request.contextPath}/assets/css/header.css" rel="stylesheet" type="text/css">

<div id="header">
    <div id="logo" class="col-xs-3">
        <img class="logo-img" src="${pageContext.request.contextPath}/assets/images/header_logo.jpg">
    </div>
    <div id="search" class="col-xs-4">
    	<img class="logo-img" src="${pageContext.request.contextPath}/assets/images/header_search.png">
    </div>
    <div id="menu" class="col-xs-2">
        <button type="button" class="btn btn-default menu">펫시터되기</button>
        <button type="button" class="btn btn-default menu"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><span class="badge">0</span></button>
        <p class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></p>
    </div>
</div>