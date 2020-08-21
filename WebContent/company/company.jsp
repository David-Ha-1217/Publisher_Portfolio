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
    
    <!-- ----- 콘텐츠 영역 (company.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/company/css/company.css">

    <!-- -------------------------------------------------- js, jquery -------------------------------------------------- -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
    <!-- ----- js, jquery (공통 영역) ----- -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/prefixfree.min.js"></script>
    
</head>

<body>

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

    <!-- ---------------------------- 콘텐츠 영역 ------------------------------- -->
    
    <div id="contents">

        <h1>회사소개</h1>
        <hr>

        <!-- 콘텐츠 영역 >> 회사 로고 -->
        <img src="${pageContext.request.contextPath}/images/logo.jpg" alt="회사 로고">

        <!-- 콘텐츠 영역 >> aUs(About Us) -->
        <div id="aUs">
            <h2>JACOB'S LADDER</h2>
            <h3>
                '지식이 넘치는 책을 만드는 이곳'<br>
                JACOB'S LADDER에 오신걸 환영합니다.
            </h3>
            <p>
                사람에게는 구체적으로 도움을 주는 책<br>
                우리는 열심히 사는 사람들에게 도움이 되고 싶습니다.<br>
                우리는 책을 출간하기 전에 질문할 것입니다.<br>
                "이 책이 사람들에게 도움이 됩니까?"<br>
            </p>
            <p>
                손에 잡히는 이익을 얻을 수 있도록<br>
                도움이 되는 책을 만들고 싶습니다.
            </p>
            <p>
                <b>JACOB'S LADDER</b>에 참여하는<br>
                모든 사람에게 도움을 주고 싶습니다.<br>
            </p>
            <p>
                함께 참여해서 만드는 기쁨,<br>
                우리의 미래를 원하는 대로 스스로 만드는 터전.<br>
                그곳이 바로 <b>JACOB'S LADDER</b>입니다.<br>
            </p>
        </div>

    </div>

    <!-- ---------------------------- 콘텐츠 영역 END ------------------------------- -->

    <!-- ---------------------------- 푸터 영역 ------------------------------- -->

	<footer class="ft_com">

        <div id="ftWrap">
            <h1>JACOB'S LADDER</h1>
            <address>
                <p>
                    서울특별시 금천구 가산디지털2로 115(우편번호 08505) TEL (02)552-1722 FAX (02)552-1723 <br>
                    사업자등록번호 115-87-44457 대표자 : 홍길동 / Email : jacob@jcl.co.kr<br>
                    Copyright(c)2020 제이콥스 래더㈜ Jacob's Ladder Co., Ltd. All Rights Reserved
                </p>
            </address>
        </div>
        
    </footer>

    <!-- ---------------------------- 푸터 영역 END ------------------------------- -->

</body>
</html>