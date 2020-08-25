package com.publisher.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.publisher.dao.MemberDAO;
import com.publisher.dto.Member;

public class Login implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		// 로그인이 실패할 경우 넘어간다.
		String path = "/member/login_fail.jsp";
		HttpSession session = request.getSession();
		
		//파라미터로 넘겨온 값을 불러옵니다.
		String id = request.getParameter("member_id");
		String pwd = request.getParameter("member_pwd");
		
		//값을 출력합니다.
		System.out.println(id);
		System.out.println(pwd);
		
		MemberDAO mControl = MemberDAO.getInstance();
		Member mResult = mControl.selectMember(id);
		
		if(mResult!=null) {
			if(mResult.getPwd().equals(pwd)) {
				path = "publisher.gd?type=index";
				session.removeAttribute("id");
				session.setAttribute("loginUserInfo", mResult);
			}
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}

}
