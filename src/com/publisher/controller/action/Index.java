package com.publisher.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.publisher.dao.MemberDAO;
import com.publisher.dto.Member;

public class Index implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "/index.jsp";
	
		HttpSession session = request.getSession();
		Member loginUserInfo = (Member)session.getAttribute("loginUserInfo");
		
		if(loginUserInfo == null) {   //로그인이 안된 경우
			System.out.println("로그인 안됨.");
		} else { //로그인이 안된 경우
			System.out.println("로그인 됨.");
			
			//로그인한 고객의 정보를 출력합니다.
			//getMember() 메서드를 이용하세요.
			
			//String id = request.getParameter("id");
			String id = loginUserInfo.getId();
			System.out.println(id);
			
			MemberDAO mControl = MemberDAO.getInstance();
			Member mResult = mControl.selectMember(id);
			
			System.out.println("로그인 된 정보");
			System.out.println(mResult.getId());
			System.out.println(mResult.getEmail());
			System.out.println(mResult.getPwd());
			
			session.setAttribute("myInfo", mResult);
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}

}
