<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 질문 답변</title>

    <!-- -------------------------------------------------- CSS -------------------------------------------------- -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/common.css">
    <!-- ----- 공통 영역 (푸터) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/foot_com.css">
    
    <!-- ----- 콘텐츠 영역 (ans.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ans/css/ans.css">

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
        
        <h1>질문답변</h1>
        <hr>

        <!-- 콘텐츠 영역 >> pSearch(Search) -->
        <div id = "pSearch">
            <input type="text" placeholder="도서명, 저자 등 검색">
            <button><i class="fas fa-search"></i></button>
        </div>

        <!-- 콘텐츠 영역 >> ansWrap -->
        <div id="ansWrap">

            <div id="table">
                <table>
                    <tr>
                        <td><a href="publisher.gd?type=ansCnt">자바에서 클래스란?</a></td>
                        <td>정은아</td>
                        <td>2020-04-28</td>
                        <td>19회</td>
                    </tr>
                    <tr>
                        <td><a href="#">C언어의 포인터의 개념을 잘 모르겠어요.</a></td>
                        <td>이찬영</td>
                        <td>2020-04-23</td>
                        <td>10회</td>
                    </tr>
                    <tr>
                        <td><a href="#">네이버블로그 책에서...</a></td>
                        <td>김진주</td>
                        <td>2020-04-20</td>
                        <td>14회</td>
                    </tr>
                    <tr>
                        <td><a href="#">아두이노가 컴퓨터에 인식이 안되네요...</a></td>
                        <td>안유림</td>
                        <td>2020-04-17</td>
                        <td>11회</td>
                    </tr>
                    <tr>
                        <td><a href="#">아두이노 프로그램이 설치가 안되요 ㅠ.ㅠ</a></td>
                        <td>안유림</td>
                        <td>2020-04-13</td>
                        <td>20회</td>
                    </tr>
                    <tr>
                        <td><a href="#">클린코딩 50페이지에서</a></td>
                        <td>박지연</td>
                        <td>2020-04-13</td>
                        <td>18회</td>
                    </tr>
                    <tr>
                        <td><a href="#">리액트 프로그래밍에서 컴포넌트의 정의가 이해가 안됩니다.</a></td>
                        <td>김슬기</td>
                        <td>2020-04-02</td>
                        <td>9회</td>
                    </tr>
                    <tr>
                        <td>&nbsp; <a href="#">└ 답변입니다.</a></td>
                        <td>운영자</td>
                        <td>2020-04-03</td>
                        <td>15회</td>
                    </tr>
                    <tr>
                        <td><a href="#">배열이 이해가 안되요.</a></td>
                        <td>김지훈</td>
                        <td>2020-03-24</td>
                        <td>10회</td>
                    </tr>
                    <tr>
                        <td>&nbsp; <a href="#">└ 답변입니다.</a></td>
                        <td>운영자</td>
                        <td>2020-03-24</td>
                        <td>9회</td>
                    </tr>
                </table>
            </div>
            
        </div>
        
        <!-- 콘텐츠 영역 >> ansWrite -->
        <button type="button" id="ansWrite">글쓰기</button>

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