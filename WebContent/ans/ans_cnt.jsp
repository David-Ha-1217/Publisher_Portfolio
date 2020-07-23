<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 질문답변</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="../css/common/common.css">
    <!-- ----- 공통 영역 (ans.html) ----- -->
    <link rel="stylesheet" href="../css/common/foot_com.css">
    <!-- ----- 콘텐츠 영역 (ans_cnt.html) ----- -->
    <link rel="stylesheet" href="../ans/css/ans_cnt.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
</head>
<body>

    <!--
        > ans_cnt.html - 질문답변 (상세)
        > (2020-05-15) 헤더, 푸터 마크업 완료.
        > (2020-06-14) 컨텐츠 마크업 완료.
        > (2020-06-30) 최종 마크업 완료.
    -->

    <!-- ---------------------------- 헤더 영역 ------------------------------- -->

    <header>

        <!-- 헤더 영역 >> logoWrap -->
        <div id="logoWrap">

            <h1><a href="../index.html">JACOB'S LADDER</a></h1>
            <p>
                <a href="../member/agree_form.html">회원가입</a> / <a href="../member/login_form.html">로그인</a>
                <!--
                    <a href="../mypage/alt_user.html">마이페이지</a> / <a href="#">로그아웃</a>
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

            <li><a href="../company/company.html">회사소개</a>
                <ul id="sub-menu">
                    <li><a href="../company/company.html" aria-label="subemnu">회사소개</a></li>
                    <li><a href="../company/directions.html" aria-label="subemnu">찾아오시는 길</a></li>
                </ul>
            </li>
            <li><a href="../books/book.html">도서</a></li>
            <li><a href="../pds/pds.html">자료실</a></li>
            <li><a href="../ans/ans.html">질문답변</a></li>
            <li><a href="../online/online.html">동영상 강의</a></li>

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

        <!-- 콘텐츠 영역 >> ansTit -->
        <div id="ansTit">
            <h2>Q. TITLE8</h2>
            <ul>
                <li class="ansCnt">글&nbsp;쓴&nbsp;이</li>
                <li class="a01">정 은아</li>
                <li class="ansCnt">작&nbsp;성&nbsp;일</li>
                <li class="a01">2020-04-28</li>
                <li class="ansCnt">조&nbsp;회&nbsp;수</li>
                <li class="a01">19회</li>
            </ul>
            <button type="button" id="list" onclick="location.href='../ans/ans.html'">목록</button>
        </div>

        <!-- 콘텐츠 영역 >> ansWrap -->
        <div id="ansWrap">
            
        </div>

        <!-- 콘텐츠 영역 >> ansBtn -->
        <div id="ansBtn">
            <button type="button" id="del">삭제</button>
            <button type="button" id="alt">수정</button>
            <button type="button" id="ans">답글</button>
        </div>
        

    </div>
    <!-- ---------------------------- 콘텐츠 영역 END ------------------------------- -->

    <!-- ---------------------------- 푸터 영역 ------------------------------- -->

    <footer>

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