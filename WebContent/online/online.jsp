<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 동영상 강의</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/common.css">
    <!-- ----- 공통 영역 (푸터) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/foot_com.css">
    
    <!-- ----- 콘텐츠 영역 (online.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/online/css/online.css">

    <!-- ------------------------ js, jquery ------------------------ -->
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
                <c:when test="${ myInfo.id eq 'admin' }">
            		<a href="publisher.gd?type=adminForm">관리페이지</a> / <a href="publisher.gd?type=logout">로그아웃</a>
                </c:when>
                <c:when test="${ myInfo.id ne 'admin' }">
                	<a href="publisher.gd?type=mypageForm">마이페이지</a> / <a href="publisher.gd?type=logout">로그아웃 </a>
                </c:when>
            </c:choose>
                
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
            <li><a href="publisher.gd?type=pdsForm">자료실</a></li>
            <li><a href="publisher.gd?type=ansForm">질문답변</a></li>
            <li><a href="publisher.gd?type=onlineForm">동영상 강의</a></li>

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
        
        <h1>동영상 강의</h1>
        <hr>

        <!-- 콘텐츠 영역 >> pSearch(Search) -->
        <div id = "pSearch">
            <input type="text" placeholder="도서명, 저자 등 검색">
            <button><i class="fas fa-search"></i></button>
        </div>

        <!-- 콘텐츠 영역 >> bWrap -->
        <div id="bWrap">

            <div class="bList" id="b1">

                <div id="bimg">
                    <img src="${pageContext.request.contextPath}/images/book1.jpg">
                </div>
                
                <div id="bCnt">
                    <ul>
                        <li><a href="publisher.gd?type=onlineCnt"><h2>지옥에서 온 문서 관리자 깃&깃허브 입문</h2></a></li>
                        <li>《Do it! 지옥에서 온 문서 관리자 깃&깃허브 입문》 - 저자 직강 무료 동영상 강의입니다.</li>
                    </ul>
                </div>
                
            </div>

            <div class="bList" id="b2">
                <div id="bimg">
                    <img src="${pageContext.request.contextPath}/images/book2.jpg">
                </div>

                <div id="bCnt">
                    <ul>
                        <li><a href="#"><h2>리액트 프로그래밍 정석</h2></a></li>
                        <li>《Do it! 리액트 프로그래밍 정석》 - 저자 직강 무료 동영상 강의입니다.</li>
                    </ul>

                </div>
            </div>

            <div class="bList" id="b3">
                <div id="bimg">
                    <img src="${pageContext.request.contextPath}/images/book3.png">
                </div>

                <div id="bCnt">
                    <ul>
                        <li><a href="#"><h2>클론 코딩 영화 평점 웹서비스</h2></a></li>
                        <li>《클론 코딩 영화 평점 웹서비스》 - 저자 직강 무료 동영상 강의입니다. </li>
                    </ul>

                </div>
            </div>

            <div class="bList" id="b4">
                <div id="bimg">
                    <img src="${pageContext.request.contextPath}/images/book4.png">
                </div>

                <div id="bCnt">
                    <ul>
                        <li><a href="#"><h2>키트 없이 만드는 아두이노</h2></a></li>
                        <li>《키트 없이 만드는 아두이노》 - 저자 직강 무료 동영상 강의입니다.</li>
                    </ul>

                </div>
            </div>

            <div class="bList" id="b5">
                <div id="bimg">
                    <img src="${pageContext.request.contextPath}/images/book5.png">
                </div>

                <div id="bCnt">
                    <ul>
                        <li><a href="#"><h2>기계는 어떻게 생각하는가?</h2></a></li>
                        <li>《기계는 어떻게 생각하는가?》 - 저자 직강 무료 동영상 강의입니다.</li>
                    </ul>

                </div>
            </div>

        </div>

        <!-- 콘텐츠 영역 >> onWrite(관리자) -->
        <c:choose>
        	<c:when test="${ myInfo.id eq 'admin' }">
        		<button type="button" id="onWrite">글쓰기</button>
	        </c:when>
	        <c:otherwise>
	        	<button type="button" id="onWrite" style="display:none;">글쓰기</button>
	        </c:otherwise>
        </c:choose>
        
        <!-- 콘텐츠 영역 >> 페이징 -->
        <div class="list_number">
            <div>
                <p>
                    <div class="list_n_menu">
                        <span class="disabled"><  이전</span>
                        <span class="current">1</span>
                        <a href="#?page=2">2</a>
                        <a href="#?page=3">3</a>
                        <a href="#?page=4">4</a>
                        <a href="#?page=5">5</a>
                        ...
                        <a href="#?page=2">다음  ></a>
                    </div>
                </p>
            </div>
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