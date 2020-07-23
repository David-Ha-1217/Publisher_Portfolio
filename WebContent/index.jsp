<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="./css/common/common.css">
    <!-- ----- 푸터 영역 (index.html) ----- -->
    <link rel="stylesheet" href="./css/common/foot_idx.css">
    <!-- ----- 콘텐츠 영역 (index.html) ----- -->
    <link rel="stylesheet" href="./css/index.css">
    <!-- ----- bxslider plugin (index.html) ----- -->
    <link rel="stylesheet" href="./css/plugin/jquery.bxslider.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
    <!-- ----- js, jquery (공통 영역) ----- -->
    <script type="text/javascript" src="./js/common/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="./js/common/jquery-ui.min.js"></script>
    <script type="text/javascript" src="./js/common/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="./js/common/prefixfree.min.js"></script>
    <!-- ----- js, jquery (index.html) ----- -->
    <script type="text/javascript" src="./js/index.js"></script>
    <!-- ----- bxslider plugin (index.html) ----- -->
    <script type="text/javascript" src="./js/plugin/jquery.bxslider.min.js"></script>
</head>

<body>

    <!--
        > index.html - 메인 페이지
        > (2020-05-15) 헤더, 푸터 마크업 완료.
        > (2020-06-09) 컨텐츠 마크업 완료.
        > (2020-06-23) 최종 마크업 완료.
    -->

    <!-- ---------------------------- 헤더 영역 ------------------------------- -->

    <header>

        <!-- 헤더 영역 >> logoWrap -->
        <div id="logoWrap">

            <h1><a href="./index.html">JACOB'S LADDER</a></h1>
            <p>
                <a href="./member/agree_form.html">회원가입</a> / <a href="./member/login_form.html">로그인</a>
                <!--
                    <a href="./mypage/alt_user.html">마이페이지</a> / <a href="#">로그아웃</a>
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

            <li><a href="./company/company.html">회사소개</a>
                <ul id="sub-menu">
                    <li><a href="./company/company.html" aria-label="subemnu">회사소개</a></li>
                    <li><a href="./company/directions.html" aria-label="subemnu">찾아오시는 길</a></li>
                </ul>
            </li>
            <li><a href="./books/book.html">도서</a></li>
            <li><a href="./pds/pds.html">자료실</a></li>
            <li><a href="./ans/ans.html">질문답변</a></li>
            <li><a href="./online/online.html">동영상 강의</a></li>

            <!-- 네비게이션 영역 >> search-->
            <li id="search">
                <input type="text" placeholder="도서명, 저자 등 검색">
                <button><i class="fas fa-search"></i></button>
            </li>

        </ul>

    </nav>

    <!-- ---------------------------- 네비게이션 영역 END ------------------------------- -->

    <!-- ---------------------------- 콘텐츠 영역 ------------------------------- -->

    <!-- 컨텐츠 영역 >> topCnt -->
    <div id="topCnt">

        <div id="topWrap">

            <ul id="slide_banner">
                <li>
                    <a href="./books/book_cnt.html">
    
                        <div class="books">
                            <img src="./images/book1.jpg" alt="지옥에서 온 문서 관리자 깃&깃허브 입문">
                            <h3>지옥에서 온 문서 관리자 깃&깃허브 입문</h3>
                            <div>
                                생활코딩 강의에서 52개를 엄선, 한 권 안에 자주 쓰는 기능은 모두 담았다! 문서 지옥, 깃&깃허브로 하루 안에 탈출한다!
                            </div>
                        </div>
    
                    </a>
                </li>
    
                <li>
                    <a href="#">
    
                        <div class="books">
                            <img src="./images/book2.jpg" alt="리액트 프로그래밍 정석">
                            <h3>리액트 프로그래밍 정석</h3>
                            <div>
                                전 세계의 뛰어난 개발자들이 모여 일한다는 실리콘밸리! 실리콘밸리에서도 핫한 기업인 ‘에어비앤비’에서 프런트엔드 리드로 활약하는 저자에게 리액트를 배워 보자.
                            </div>
                        </div>
    
                    </a>
                </li>
    
                <li>
                    <a href="#">
    
                        <div class="books">
                            <img src="./images/book3.png" alt="클론 코딩 영화 평점 웹서비스">
                            <h3>클론 코딩 영화 평점 웹서비스</h3>
                            <div>
                                9살부터 코딩을 시작한 전형적인 ‘천재 코더’ 니꼴라스! 니꼴라스는 세상에서 가장 빠르게 프로그래밍을 배울 수 있는 방법은 클론 코딩이라고 말합니다.
                            </div>
                        </div>
    
                    </a>
                </li>
    
                <li>
                    <a href="#">
    
                        <div class="books">
                            <img src="./images/book4.png" alt="키트 없이 만드는 아두이노">
                            <h3>키트 없이 만드는 아두이노</h3>
                            <div>
                                인터넷만 연결하면 아두이노 실습 준비 끝! 팅커캐드에서 준비물 없이 배우는 IoT 체험 학습!
                            </div>
                        </div>
    
                    </a>
                </li>
    
                <li>
                    <a href="#">
    
                        <div class="books">
                            <img src="./images/book5.png" alt="기계는 어떻게 생각하는가?">
                            <h3>기계는 어떻게 생각하는가?</h3>
                            <div>
                                “자율 주행차는 어떻게 작동하는 걸까?” “알파고는 이세돌을 어떻게 이겼을까?” 개발자, CTO는 물론 중·고등학생에 이르기까지 4차 산업 혁명을 이끌 모든 사람을 위한 필독서!
                            </div>
                        </div>
    
                    </a>
                </li>
            </ul>

            <p><a href="#" id="prevBtn"><img src="./images/back.png" alt="이전버튼"></a></p>
            <p><a href="#" id="nextBtn"><img src="./images/next.png" alt="다음버튼"></a></p>

        </div>

    </div>
    
    <!-- 컨텐츠 영역 >> bottomCnt -->
    <div id="bottomCnt">

        <div id="bottomWrap">

            <!-- 컨텐츠 영역 >> bottomCnt >> left -->
            <div id="left">

                <h2>공지사항/이벤트</h2>
                <a href="#"><i class="fas fa-plus"></i></a>
                <hr>
                <table>
                    <tr>
                        <td class="icon">
                            <div class="box">Notice</div>
                        </td>
                        <td><a href="#">[서평단 모집] Do it! 오토캐드 2021</a></td>
                        <td>2020/05/15</td>
                    </tr>
    
                    <tr>
                        <td class="icon">
                            <div class="box">Notice</div>
                        </td>
                        <td><a href="#">IT 분야 기획편집자 신입⦁경력직 모집중(~6/24(수요일)까지)</a></td>
                        <td>2020/05/08</td>
                    </tr>
    
                    <tr>
                        <td class="icon">
                            <div class="box">Notice</div>
                        </td>
                        <td><a href="#">[서평단 모집] Do it! 건축 BIM을 위한 Revit 입문</a></td>
                        <td>2020/04/28</td>
                    </tr>
    
                    <tr>
                        <td class="icon">
                            <div class="box">Notice</div>
                        </td>
                        <td><a href="#">[서평단 모집] 된다! 유튜브·SNS·콘텐츠 저작권 문제 해결</a></td>
                        <td>2020/04/20</td>
                    </tr>
    
                    <tr>
                        <td class="icon">
                            <div class="box">Notice</div>
                        </td>
                        <td><a href="#"> [서평단 모집] Do it! 첫 파이썬</a></td>
                        <td>2020/03/15</td>
                    </tr>
                </table>

            </div>
    
            <!-- 컨텐츠 영역 >> bottomCnt >> right -->
            <div id="right">

                <div id="banner">
                    <a href="#"><img src="images/banner.PNG" alt="배너"></a>
                    <a href="#"><img src="images/banner.PNG" alt="배너"></a>
                    <a href="#"><img src="images/banner.PNG" alt="배너"></a>
                </div>
    
                <div id="sns">
                    <a href="https://twitter.com/explore"><i class="fab fa-twitter-square"></i></a>
                    <a href="https://www.instagram.com/"><i class="fab fa-instagram-square"></i></i></a>
                    <a href="https://www.facebook.com/"><i class="fab fa-facebook-square"></i></a>
                </div>

            </div>

        </div>

    </div>
    

    <!-- ---------------------------- 콘텐츠 영역 END------------------------------- -->

    <!-- ---------------------------- 푸터 영역 ------------------------------- -->

    <footer>

        <h1>JACOB'S LADDER</h1>
        <address>
            <p>
                서울특별시 금천구 가산디지털2로 115(우편번호 08505) TEL (02)552-1722 FAX (02)552-1723 <br>
                사업자등록번호 115-87-44457 대표자 : 홍길동 / Email : jacob@jcl.co.kr<br>
                Copyright(c)2020 제이콥스 래더㈜ Jacob's Ladder Co., Ltd. All Rights Reserved
            </p>
        </address>

    </footer>

    <!-- ---------------------------- 푸터 영역 END ------------------------------- -->

</body>
</html>