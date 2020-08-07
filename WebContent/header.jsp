<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER</title>

    <!-- -------------------------------------------------- CSS -------------------------------------------------- -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/common.css">
    <!-- ----- 공통 영역 (푸터) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/foot_com.css">
    
    <!-- ----- 콘텐츠 영역 (index.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <!-- ----- 콘텐츠 영역 (login_form.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/member/css/login_form.css">
    <!-- ----- 콘텐츠 영역 (company.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/company/css/company.css">
    <!-- ----- 콘텐츠 영역 (direction.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/company/css/directions.css">

    <!-- ----- bxslider plugin (index.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/jquery.bxslider.css">

    <!-- -------------------------------------------------- js, jquery -------------------------------------------------- -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
    <!-- ----- js, jquery (공통 영역) ----- -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/prefixfree.min.js"></script>
    
    <!-- ----- js, jquery (index.jsp) ----- --> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
    <!-- ----- js, jquery (login_form.jsp) ----- --> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/member/js/login_form.js"></script>
    
    <!-- ----- bxslider plugin (index.jsp) ----- -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugin/jquery.bxslider.min.js"></script>
</head>

<body>

    <!--
        > index.jsp - 메인 페이지
        > (2020-05-15) 헤더, 푸터 마크업 완료.
        > (2020-06-09) 컨텐츠 마크업 완료.
        > (2020-06-23) 최종 마크업 완료.
    -->

    <!-- ---------------------------- 헤더 영역 ------------------------------- -->

    <header>

        <!-- 헤더 영역 >> logoWrap -->
        <div id="logoWrap">

            <h1><a href="publisher.gd?type=index">JACOB'S LADDER</a></h1>
            <p>
            
            <c:choose>
            	<c:when test="${ empty sessionScope.loginUserInfo }">
            		<a href="publisher.gd?type=agreeForm">회원가입</a> / <a href="publisher.gd?type=loginForm">로그인</a>
                </c:when>
                <c:otherwise>
                	<a href="publisher.gd?type=mypageForm">마이페이지</a> / <a href="publisher.gd?type=logout">로그아웃</a>
                </c:otherwise>
            </c:choose>
                
                <!--
                 <a href="#">관리페이지</a> / <a href="#">로그아웃</a>
                -->

            </p>

        </div>
        
    </header>

    <!-- ---------------------------- 헤더 영역 END ------------------------------- -->

    <!-- ---------------------------- 네비게이션 영역 ------------------------------- -->

    <nav role="navigation">

        <!-- 네비게이션 영역 >> main-menu-->
        <ul id="main-menu">

            <li><a href="publisher.gd?type=companyForm">회사소개</a>
                <ul id="sub-menu">
                    <li><a href="publisher.gd?type=companyForm" aria-label="subemnu">회사소개</a></li>
                    <li><a href="publisher.gd?type=directionsForm" aria-label="subemnu">찾아오시는 길</a></li>
                </ul>
            </li>
            <li><a href="publisher.gd?type=bookForm">도서</a></li>
            <li><a href="./pds/pds.jsp">자료실</a></li>
            <li><a href="./ans/ans.jsp">질문답변</a></li>
            <li><a href="./online/online.jsp">동영상 강의</a></li>

            <!-- 네비게이션 영역 >> search-->
            <li id="search">
                <input type="text" placeholder="도서명, 저자 등 검색">
                <button><i class="fas fa-search"></i></button>
            </li>

        </ul>

    </nav>

    <!-- ---------------------------- 네비게이션 영역 END ------------------------------- -->