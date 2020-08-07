<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ include file="../header.jsp" %>

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

	<%@ include file="../footer.jsp" %>