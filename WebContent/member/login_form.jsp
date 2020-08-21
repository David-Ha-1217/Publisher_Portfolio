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
    
    <!-- ----- 콘텐츠 영역 (login_form.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/member/css/login_form.css">

    <!-- -------------------------------------------------- js, jquery -------------------------------------------------- -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
    <!-- ----- js, jquery (공통 영역) ----- -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/prefixfree.min.js"></script>
    
    <!-- ----- js, jquery (login_form.jsp) ----- --> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/member/js/login_form.js"></script>
    
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

    <!-- ---------------------------- 콘텐츠 영역 ------------------------------- -->
    <div id="contents">
        
        <h1>로그인</h1>
        <hr>

        <!-- 콘텐츠 영역 >> loginInput -->
        <form id="loginForm" name="frm" action="publisher.gd?type=login" method="post">
	        <div id="loginInput">
	            <div id="inputId">
	                <label for="member_id"><i class="fas fa-user"></i></label>
	                <input type="text" id="member_id" name="member_id" minlength="5" maxlength="11" placeholder="아이디를 입력해주세요.">
	            </div>
	
	            <div id="inputPwd">
	                <label for="member_pwd"><i class="fas fa-key"></i></label>
	                <input type="password" id="member_pwd" name="member_pwd" minlength="8" maxlength="20" placeholder="비밀번호를 입력해주세요.">
	            </div>
	
	            <div id="saveId">
	                <input type="checkbox" id="sv_member" name="sv_member">
	                <label for="sv_member">아이디 저장</label>
	            </div>
	
	            <button type="submit" id="loginBtn">로그인</button>
	
	        </div>
        </form>

        <!-- 콘텐츠 영역 >> btnWrap -->
        <form id="btnWrap" name="btnWrap" method="post">
	        <div id="btnWrap">
	            <button type="button" id="id_findBtn" onclick="login_id()">아이디 찾기</button>
	            <button type="button" id="pwd_findBtn" onclick="login_pwd();">비밀번호 찾기</button>
	            <button type="submit" id="join" onclick="login_agree();">회원가입</button>
	        </div>
        </form>
        

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