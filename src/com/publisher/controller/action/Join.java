package com.publisher.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.publisher.dao.MemberDAO;
import com.publisher.dto.Member;

public class Join implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// DB에 담을 객체를 생성합니다.
		Member member= new Member();
		
		// 파라미터로 넘겨운 값을 불러옵니다.
		String id = request.getParameter("member_id");
		String email = request.getParameter("member_email");
		String pwd = request.getParameter("member_pwd");
		
		// 값을 출력합니다.
		System.out.println(id);
		System.out.println(email);
		System.out.println(pwd);
		
		member.setId(id);
		member.setEmail(email);
		member.setPwd(pwd);
		
		MemberDAO mControl = MemberDAO.getInstance();
		mControl.insertMember(member);
		
		String path ="/member/join_ok.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

	}

}
