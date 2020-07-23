<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 비밀번호 찾기</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="../css/common/common.css">
    <!-- ----- 공통 영역 (푸터) ----- -->
    <link rel="stylesheet" href="../css/common/foot_com.css">
    <!-- ----- 콘텐츠 영역 (pwd_find_form.html) ----- -->
    <link rel="stylesheet" href="./css/pwd_find_form.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
    <!-- ----- Javascript ----- -->
    <script>

        // 난수(인증번호)
        var result;

        // 사용자가 입력한 인증번호
        var inputresult;

        var timer;
        var isRunning = false;

        // 임시 비밀번호
        var imsipwd;

        // DB에 있다고 가정하는 변수
        var dbId="scott";
        var emailDB = "scott@gmail.com";

        function cite_check() {

            if(document.getElementById("member_id").value && document.getElementById("member_email").value) {

                if((document.getElementById("member_id").value == dbId) && (document.getElementById("member_email").value == emailDB)) {

                    result = Math.floor(Math.random() * 999999) + 1;
                    console.log(result);

                    // 남은 시간
                    var leftSec = 20,
                    display = document.querySelector('#Timespwd');
        
                    // 이미 타이머가 작동중이면 중지
                    if (isRunning){
                        clearInterval(timer);
                    }

                    startTimer(leftSec, display);

                } else {

                    if (document.getElementById("member_id").value != dbId) {
                        alert("아이디를 다시 확인해 주세요.");
                        document.getElementById("member_id").focus();
                        return;
                    }

                    if (document.getElementById("member_email").value != emailDB) {
                        alert("이메일를 다시 확인해 주세요.");
                        document.getElementById("member_email").focus();
                        return;
                    }

                }

                
            } else {

                if (!document.getElementById("member_id").value) {
                    alert("아이디를 입력해 주세요.");
                    document.getElementById("member_id").focus();
                    return;
                }

                if (!document.getElementById("member_email").value) {
                    alert("이메일를 입력해 주세요.");
                    document.getElementById("member_email").focus();
                    return;
                }

            }

        }

        function startTimer(count, display) {
            var minutes, seconds;
            timer = setInterval(function () {
                minutes = parseInt(count / 60, 10);
                seconds = parseInt(count % 60, 10);
                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;
                display.textContent = minutes + ":" + seconds;
                // 타이머 끝
                if (--count < 0) {
                    clearInterval(timer);
                    display.textContent = "";
                    isRunning = false;
                    alert("인증 버튼을 다시 눌러주세요.");
                    result=Math.floor(Math.random() * 999999) + 1;
                }
            }, 1000);

        }

        function pwdfind() {

            inputresult = document.getElementById("cite_num").value;

            if (document.getElementById("member_id").value && document.getElementById("member_email").value && inputresult) {

                var theForm = document.pwd_Form;
                theForm.method = "GET";
                theForm.action = "../member/login_form.html";

                if (result == inputresult) {
                    imsipwd = Math.floor(Math.random() * 999999) + 1;
                    alert("인증이 되었습니다.\n임시 비밀번호는 "+imsipwd+" 입니다.");
                    theForm.submit();
                } else {
                    alert("인증 번호가 틀렸습니다.\n다시 입력해주세요.");
                    document.getElementById("cite_num").focus();
                }

            } else {

                if (!document.getElementById("member_id").value) {
                alert("아이디를 입력해 주세요.");
                document.getElementById("member_id").focus();
                return;
                }
                
                if (!document.getElementById("member_email").value) {
                alert("이메일를 입력해 주세요.");
                document.getElementById("member_email").focus();
                return;
                }

                if (!inputresult) {
                alert("인증 번호를 입력해 주세요.");
                document.getElementById("cite_num").focus();
                return;
                }

            }

        }
    </script>
</head>
<body>

    <!--
        > pwd_find_form.html - 비밀번호 찾기
        > (2020-05-15) 헤더, 푸터 마크업 완료.
        > (2020-05-19) 컨텐츠 마크업 완료.
        > (2020-06-25) 최종 마크업 완료.
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
    <form name="pwd_Form" onsubmit="return false">
        <div id="contents">
            
            <h1>비밀번호 찾기</h1>
            <hr>
            <h4>회원가입시 등록한 아이디와 이메일을 입력해 주세요.</h4>

            <!-- 콘텐츠 영역 >> pwd_findInput -->
            <div id="pwd_findInput">
                <label for="member_id" class="label">아이디</label>
                <input type="text" id="member_id" name="member_id" minlength="5" maxlength="11" placeholder="아이디를 입력해주세요.">

                <label for="member_email" class="label">이메일</label>
                <input type="email" id="member_email" name="member_email" maxlength="50" placeholder="이메일를 입력해주세요.">
            
                <label for="cite_num" class="label">인증번호</label>
                <input type="text" id="cite_num" name="cite_num" placeholder="인증번호를 입력해주세요.">
                <button type="button" id="cite_btn" onclick="cite_check();">인증 요청</button>
                <span id="Timespwd" disabled="true"></span>
            </div>

            <!-- 콘텐츠 영역 >> btnWrap -->
            <div id="btnWrap">
                <button type="button" id="pwd_find_btn" onclick="pwdfind();">비밀번호 찾기</button>
                <button type="reset" id="reset">취소</button>
            </div>

        </div>
    </form>
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