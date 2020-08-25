<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 로그인 실패</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/common.css">
    <!-- ----- 공통 영역 (푸터) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/foot_com.css">
    
    <!-- ----- 콘텐츠 영역 (join_ok.jsp) ----- -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/member/css/login_fail.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
    <!-- ----- js, jquery (공통 영역) ----- -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/prefixfree.min.js"></script>
    
    <script>
    
    	function loginGo() {
    		var theForm = document.login_f;
   		 	theForm.method = "POST";
            theForm.action = "publisher.gd?type=loginForm";
            
            theForm.submit();
    	}
    
    </script>
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
    <form name="login_f" onsubmit="return false">
	    <div id="contents">
	        
	        <h1>로그인 실패</h1>
	        <hr>
	        <h2>
	        	입력한 아이디(비밀번호)가 잘못 입력되었습니다.<br>
	        	아이디(비밀번호)를 확인 후 다시 한번 입력해 주세요.
	        </h2>
	
	        <!-- 콘텐츠 영역 >> 가입 완료 -->
	        <img src="${pageContext.request.contextPath}/images/fail.png" alt="로그인 실패">
	        <!-- <div>Icons made by <a href="https://www.flaticon.com/authors/flat-icons" title="플랫 아이콘">플랫 아이콘</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div> -->
	
	        <button type="submit" id="logingo" onclick="loginGo();">로그인</button>
	
	
	    </div>
	</form>
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