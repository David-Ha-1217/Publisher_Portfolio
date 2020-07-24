<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 회원관리</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="../css/common/common.css">
    <!-- ----- 공통 영역 (콘텐츠_사이드) ----- -->
    <link rel="stylesheet" href="../css/common/aside.css">
    <!-- ----- 공통 영역 (푸터)----- -->
    <link rel="stylesheet" href="../css/common/foot_com.css">
    <!-- ----- 콘텐츠 영역 (admin.jsp) ----- -->
    <link rel="stylesheet" href="../admin/css/admin.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
</head>
<body>

    <!--
        > admin.jsp - 관리 페이지 (회원관리)
        > (2020-05-15) 헤더, 푸터 마크업 완료.
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
                <h3>관리 페이지</h3>
                <hr>
                <ul>
                    <li><a href="../admin/admin.jsp">회원관리</a></li>
                </ul>
            </div>

        </aside>

        <!-- 콘텐츠 영역 >> contents -->
        <section id="contents">

            <h1>회원관리</h1>
            <hr>

            <!-- 콘텐츠 영역 >> pSearch(Search) -->
            <div id = "pSearch">
                <input type="text" placeholder="아이디, 이메일 등 검색">
                <button><i class="fas fa-search"></i></button>
            </div>

            <!-- 콘텐츠 영역 >> memberList -->
            <div id="memberList">

                <table id="adminTable">
                    <tr>
                        <td>No.</td>
                        <td>아이디</td>
                        <td>이메일</td>
                        <td>가입일</td>
                        <td>가입상태</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hatm1217</td>
                        <td>thdlwor@gmail.com</td>
                        <td>2020-05-05</td>
                        <td>활성</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>gkxoals1217</td>
                        <td>gfkdlrio@naver.com</td>
                        <td>2020-12-30</td>
                        <td>비활성</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>

            </div>

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