<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JACOB'S LADDER - 회원가입</title>

    <!-- ------------------------ CSS ------------------------ -->
    <!-- ----- 공통 영역 ----- -->
    <link rel="stylesheet" href="../css/common/common.css">
    <!-- ----- 공통 영역 (푸터) ----- -->
    <link rel="stylesheet" href="../css/common/foot_com.css">
    <!-- ----- 콘텐츠 영역 (join_form.html) ----- -->
    <link rel="stylesheet" href="./css/join_form.css">

    <!-- ------------------------ js, jquery ------------------------ -->
    <!-- ----- fontawesome ----- -->
    <script src="https://kit.fontawesome.com/7c9e7a71e3.js" crossorigin="anonymous"></script>
    <script>

        //  아이디 중복확인 했는지, 안했는지 확인하기 위한 변수.
        var dchkid;

        // 아이디 중복확인 변수1
        var checkid;

        // 아이디 중복확인
        function joinIdCheck() {

            checkid = document.getElementById("member_id").value;

            console.log(checkid);
            if (checkid=="scott") {
                alert("이미 사용중인 아이디(계정)입니다.");
            } else if (checkid=="") {
                alert("아이디를 입력하세요");
            } else {
                alert("사용할 수 있는 아이디(계정)입니다.");
            }

            dchkid = document.getElementById("dup_id").value;
            console.log(dchkid);

        }

        //  이메일 중복확인 했는지, 안했는지 확인하기 위한 변수.
        var dchkemail;

        // 이메일 중복확인 변수1
        var checkemail;

        // 이메일 중복확인
        function joinEmailCheck() {

            checkemail = document.getElementById("member_email").value;

            console.log(checkemail);
            if (checkemail=="scott@gmail.com") {
                alert("이미 사용중인 이메일(계정)입니다.");
            } else if (checkemail=="") {
                alert("이메일을 입력하세요."); 
            } else {
                alert("사용할 수 있는 이메일(계정)입니다.");
            }

            dchkemail = document.getElementById("dup_email").value;
            console.log(dchkemail);

        }

        // 가입 완료
        function joinok() {

            // 필수 항목이 모두 존재 및 비밀번호 값 일치.
            if (document.getElementById("member_id").value &&
                document.getElementById("member_email").value &&
                document.getElementById("member_pwd").value &&
                document.getElementById("re_pwd").value &&
                document.getElementById("member_pwd").value == document.getElementById("re_pwd").value) {
                
                var okjoin =  document.getElementById("member_id").value;

                var pass = document.getElementById("member_pwd").value;
                
                var theForm = document.joinForm;
                theForm.method = "GET";
                theForm.action = "../member/join_ok.html"; 

                //아이디 중복확인 변수2
                var chkreid = document.getElementById("member_id").value;

                //이메일 중복확인 변수2
                var chkreEmail = document.getElementById("member_email").value;

                console.log(checkid);
                console.log(chkreid);

                // 중복체크 후 다른 아이디 또는 이메일로 가입 할때.
                if ((checkid != chkreid) || (checkemail != chkreEmail)) {

                    if (checkid != chkreid) {
                        alert("아이디 중복체크 확인해 주세요.");
                        document.getElementById("member_id").focus();
                        return;
                    } else if (checkemail != chkreEmail) {
                        alert("이메일 중복체크 확인해 주세요.");
                        document.getElementById("member_email").focus();
                        return;
                    } 
                    
                } else {
                    
                    // 비밀번호 길이 조건
                    if(pass.length >= 8 && pass.length <= 20) {

                        // 중복 버튼을 했을 경우
                        if ((dchkid==1) && (dchkemail==1)) {

                            if (okjoin==okjoin) {
                            alert(okjoin + "님 회원가입을 축하합니다.");
                            }

                        theForm.submit();

                        } else {

                            if (dchkid!=1) {
                                alert("아이디 중복 확인을 하지 않으셨습니다.\n아이디 중복 확인 후 회원가입이 가능합니다.")
                                console.log(dchkid);
                                theForm.submit();
                            } else if (dchkemail!=1) {
                                alert("이메일 중복 확인을 하지 않으셨습니다.\n아이디 중복 확인 후 회원가입이 가능합니다.")
                                console.log(dchkemail);
                                theForm.submit();
                            }
   
                        }

                    } else {

                        alert("최소 8자 이상 비밀번호를 입력해주세요.");

                    }

                }


            // 필수 항목 중 한 항목이라도 없는 경우
            } else {

                if (!document.getElementById("member_id").value) {
                alert("아이디를 입력하세요");
                document.getElementById("member_id").focus();
                return;
                }

                if (!document.getElementById("member_email").value) {
                alert("이메일을 입력하세요.");    
                document.getElementById("member_email").focus();
                return;
                }

                if (!document.getElementById("member_pwd").value) {
                alert("비밀번호를 입력하세요");
                document.getElementById("member_pwd").focus();
                return;
                }

                if (!document.getElementById("re_pwd").value) {
                alert("비밀번호확인을 입력하세요");    
                document.getElementById("re_pwd").focus();
                return;
                }

                if (document.getElementById("member_pwd").value != document.getElementById("re_pwd").value) {
                alert("비밀번호가 일치하지 않습니다.\n다시 입력해주세요.");    
                document.getElementById("member_pwd").focus();
                document.getElementById("member_pwd").select();
                return;
                }

                theForm.submit();

            }

        }

    </script>
</head>
<body>

    <!--
        > join_form.html - 회원가입
        > (2020-05-15) 헤더, 푸터 마크업 완료.
        > (2020-05-25) 컨텐츠 마크업 완료.
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
    <form name="joinForm" onsubmit="return false">
        <div id="contents">
            
            <h1>회원가입</h1>
            <hr>
            <h4>회원 기본정보 입력</h4>

            <!-- 콘텐츠 영역 >> joinInput -->
            <div id="joinInput">
                <label for="member_id" class="label">아이디</label>
                <input type="text" id="member_id" name="member_id" minlength="5" maxlength="11" placeholder="아이디를 입력해주세요.">
                <button id="dup_id" value="1" onclick="joinIdCheck();" >중복확인</button>

                <label for="member_email" class="label">이메일</label>
                <input type="email" id="member_email" name="member_email" maxlength="50" placeholder="이메일를 입력해주세요.">
                <button id="dup_email" value="1" onclick="joinEmailCheck();" >중복확인</button>

                <label for="member_pwd" class="label">비밀번호</label>
                <input type="password" id="member_pwd" name="member_pwd" minlength="8" maxlength="20" placeholder="비밀번호를 입력해주세요.">

                <label for="re_pwd" class="label">비밀번호 확인</label>
                <input type="password" id="re_pwd" name="re_pwd" minlength="8" maxlength="20" placeholder="비밀번호를 다시 입력해주세요.">
            </div>

            <!-- 콘텐츠 영역 >> btnWrap -->
            <div id="btnWrap">
                <button type="button" id="joinBtn" onclick="joinok();">확인</button>
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