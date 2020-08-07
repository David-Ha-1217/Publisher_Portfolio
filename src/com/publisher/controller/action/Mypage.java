package com.publisher.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.publisher.dao.MemberDAO;
import com.publisher.dto.Member;


public class Mypage implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String path ="publisher.gd?type=index";
		
		//DB에 담을 객체를 생성합니다.
		Member member = new Member();
		
		//파라미터로 넘겨온 값을 불러옵니다.
		String id = request.getParameter("member_id");
		String email = request.getParameter("member_email");
		String pwd = request.getParameter("member_pwd");
		
		// 값을 출력합니다.
		System.out.println("정보수정 " + id);
		System.out.println("정보수정 " + email);
		System.out.println("정보수정 " + pwd);
		
		//객체 담아줍니다.
		member.setId(id);
		member.setEmail(email);
		member.setPwd(pwd);
		
		MemberDAO mControl = MemberDAO.getInstance();
		mControl.updateMember(member);

		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

	}

}
