<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 회원정보변경</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="../css/common/common.css">
    <!-- ----- 공통 영역 (콘텐츠_사이드) ----- -->
    <link rel="stylesheet" href="../css/common/aside.css">
    <!-- ----- 공통 영역 (푸터)----- -->
    <link rel="stylesheet" href="../css/common/foot_com.css">
    <!-- ----- 콘텐츠 영역 (alt_user.jsp) ----- -->
    <link rel="stylesheet" href="./css/alt_user.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
</head>
<body>

    <!--
        > alt_user.jsp - 마이 페이지 (회원정보변경)
        > (2020-05-15) 헤더, 푸터 마크업 완료.
        > (2020-05-26) 컨텐츠 마크업 완료.
        > (2020-06-24) 최종 마크업 완료.
    -->

    <!-- ---------------------------- 헤더 영역 ------------------------------- -->

    <header>

        <!-- 헤더 영역 >> logoWrap -->
        <div id="logoWrap">

            <h1><a href="../index.jsp">JACOB'S LADDER</a></h1>
            <p>
                <a href="../member/agree_form.jsp">회원가입</a> / <a href="../member/login_form.jsp">로그인</a>
                <!--
                    <a href="../mypage/alt_user.jsp">마이페이지</a> / <a href="#">로그아웃</a>
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

            <li><a href="../company/company.jsp">회사소개</a>
                <ul id="sub-menu">
                    <li><a href="../company/company.jsp" aria-label="subemnu">회사소개</a></li>
                    <li><a href="../company/directions.jsp" aria-label="subemnu">찾아오시는 길</a></li>
                </ul>
            </li>
            <li><a href="../books/book.jsp">도서</a></li>
            <li><a href="../pds/pds.jsp">자료실</a></li>
            <li><a href="../ans/ans.jsp">질문답변</a></li>
            <li><a href="../online/online.jsp">동영상 강의</a></li>

            <!-- 네비게이션 영역 >> search-->
            <li id="search">
                <input type="text" placeholder="도서명, 저자 등 검색">
                <button><i class="fas fa-search"></i></button>
            </li>

        </ul>

    </nav>

    <!-- ---------------------------- 네비게이션 영역 END ------------------------------- -->

    <!-- ---------------------------- 콘텐츠 영역 ------------------------------- -->
    
    <div id="cntWrap">

        <!-- 콘텐츠 영역 >> side -->
        <aside id="side">

            <div id="sideBox">
                <h3>마이 페이지</h3>
                <hr>
                <ul>
                    <li><a href="../mypage/alt_user.jsp">회원정보변경</a></li>
                    <li><a href="../mypage/del_user.jsp">회원탈퇴</a></li>
                </ul>
            </div>

        </aside>

        <!-- 콘텐츠 영역 >> contents -->
        <section id="contents">

            <h1>회원정보변경</h1>
            <hr>

            <div id="altInput">
                <label for="member_id" class="label">아이디</label>
                <input type="text" id="member_id" name="member_id" minlength="5" maxlength="11" placeholder="아이디를 입력해주세요.">
                <div></div>

                <label for="member_email" class="label">이메일</label>
                <input type="email" id="member_email" name="member_email" maxlength="50" placeholder="이메일를 입력해주세요.">
                <button id="dup_email">중복확인</button>

                <label for="member_pwd" class="label">비밀번호</label>
                <input type="password" id="member_pwd" name="member_pwd" minlength="8" maxlength="20" placeholder="비밀번호를 입력해주세요.">

                <label for="re_pwd" class="label">비밀번호 확인</label>
                <input type="password" id="re_pwd" name="re_pwd" minlength="8" maxlength="20" placeholder="비밀번호를 다시 입력해주세요.">
            </div>

            <button type="button" id="altOk">정보 수정</button>

        </section>

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