<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 로그인</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="../css/common/common.css">
    <!-- ----- 공통 영역 (푸터) ----- -->
    <link rel="stylesheet" href="../css/common/foot_com.css">
    <!-- ----- 콘텐츠 영역 (login_form.html) ----- -->
    <link rel="stylesheet" href="./css/login_form.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
</head>
<body>

    <!--
        > login_form.html - 로그인
        > (2020-05-15) 헤더, 푸터 마크업 완료.
        > (2020-05-22) 컨텐츠 마크업 완료.
        > (2020-06-27) 최종 마크업 완료.
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
        
        <h1>로그인</h1>
        <hr>

        <!-- 콘텐츠 영역 >> loginInput -->
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

            <button type="button" id="loginBtn">로그인</button>

        </div>

        <!-- 콘텐츠 영역 >> btnWrap -->
        <div id="btnWrap">
            <button type="button" id="id_findBtn" onclick="location.href='../member/id_find_form.html'">아이디 찾기</button>
            <button type="button" id="pwd_findBtn" onclick="location.href='../member/pwd_find_form.html'">비밀번호 찾기</button>
            <button type="button" id="join" onclick="location.href='../member/agree_form.html'">회원가입</button>
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