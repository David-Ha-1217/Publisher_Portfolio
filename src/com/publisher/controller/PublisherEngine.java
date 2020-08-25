package com.publisher.controller;

import com.publisher.controller.action.Action;
import com.publisher.controller.action.Admin;
import com.publisher.controller.action.AgreeForm;
import com.publisher.controller.action.Ans;
import com.publisher.controller.action.AnsCnt;
import com.publisher.controller.action.Book;
import com.publisher.controller.action.BookCnt;
import com.publisher.controller.action.Company;
import com.publisher.controller.action.DelUser;
import com.publisher.controller.action.Directions;
import com.publisher.controller.action.IdFind;
import com.publisher.controller.action.Index;
import com.publisher.controller.action.Join;
import com.publisher.controller.action.JoinForm;
import com.publisher.controller.action.Login;
import com.publisher.controller.action.LoginForm;
import com.publisher.controller.action.Logout;
import com.publisher.controller.action.Mypage;
import com.publisher.controller.action.MypageForm;
import com.publisher.controller.action.OnlineCnt;
import com.publisher.controller.action.OnlineForm;
import com.publisher.controller.action.Pds;
import com.publisher.controller.action.PwdFind;

public class PublisherEngine {

	public PublisherEngine() {
		super();
	}
	
	private static PublisherEngine instance = new PublisherEngine();
	
	public static PublisherEngine getInstance() {
		return instance;
	}
	
	public Action getType(String type) {
		Action act = null;
		System.out.println(type);
		
		if (type.equals("index")) {					// 메인 페이지
			act = new Index();
		} else if (type.equals("agreeForm")) {		// 회원가입 - 약관 동의
			act = new AgreeForm();
		} else if (type.equals("joinForm")) {		// 회원가입 - 정보입력(화면)
			act = new JoinForm();
		} else if (type.equals("join")) {			// 회원가입 - 정보입력(서비스, DB)
			act = new Join();
		} else if (type.equals("loginForm")) {		// 로그인 - 정보입력(화면)
			act = new LoginForm();
		} else if (type.equals("login")) {			// 로그인 - 정보입력(서비스, DB)
			act = new Login();
		} else if (type.equals("logout")) {			// 로그아웃 (서비스)
			act = new Logout();
		} else if (type.equals("mypageForm")) {		// 마이페이지 - 정보수정(화면)
			act = new MypageForm();
		} else if (type.equals("mypage")) {			// 마이페이지 - 정보수정(서비스, DB)
			act = new Mypage();
		} else if (type.equals("delUser")) {		// 마이페이지 - 회원탈퇴(화면)
			act = new DelUser();
		} else if (type.equals("adminForm")) {		// 관리페이지 - 정보출력(화면)
			act = new Admin();
		} else if (type.equals("companyForm")) {		// 회사소개 - 회사소개(화면) 
			act = new Company();
		} else if (type.equals("directionsForm")) {		// 회사소개 - 찾아오시는 길(화면)
			act = new Directions();
		} else if (type.equals("bookForm")) {		// 도서 - 도서(화면)
			act = new Book();
		} else if (type.equals("bookCnt")) {		// 도서 - 상세(화면)
			act = new BookCnt();
		} else if (type.equals("pdsForm")) { 		// 자로실  - 자료실(화면)
			act = new Pds();
		} else if (type.equals("ansForm")) {		// 질문답변 - 질문답변(화면)
			act = new Ans();
		} else if (type.equals("ansCnt")) {			// 질문답변 - 상세(화면)
			act = new AnsCnt();
		} else if (type.equals("onlineForm")) {		// 동영상 강의 - 동영상 강의(화면)
			act = new OnlineForm();
		} else if (type.equals("onlineCnt")) {		// 동영상 강의 - 상세(화면)
			act = new OnlineCnt();
		} else if (type.equals("idFindForm")) {		// 아이디 찾기 - 아이디 찾기(화면)
			act = new IdFind();
		} else if (type.equals("pwdFindForm")) {		// 비밀번호 찾기 - 비밀번호 찾기(화면)
			act = new PwdFind();
		}
		
		
		return act;
	}
}
