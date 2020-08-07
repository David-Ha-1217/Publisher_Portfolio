package com.publisher.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.publisher.dto.Member;

import util.DBManager;

public class MemberDAO {
	
	public MemberDAO() {
		
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	//회원 정보를 저장합니다. (회원가입)
	public int insertMember(Member member) {
		System.out.println("insertMember()");
		int result = 0;
		String sql = "INSERT INTO member(id,email,pwd) VALUES(?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			//DB에 연결합니다.
			conn = DBManager.getConnection();
			
			//쿼리문을 준비합니다.
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getEmail());
			pstmt.setString(3, member.getPwd());
			
			//쿼리문을 실행합니다.
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
			
		} finally {
			
			DBManager.close(conn, pstmt);
			
		}
		
		return result;
	}

	public Member selectMember(String userId) {
		System.out.println("selectMember : " + userId);
		Member member = null;
		
		String sql="SELECT * FROM member WHERE id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset=null;
		
		try {
			
			//DB에 연결합니다.
			conn = DBManager.getConnection();
			//쿼리문을 준비합니다.
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				String id = rset.getString("id");
				String email = rset.getString("email");
				String pwd = rset.getString("pwd");
				
				System.out.println(id);
				System.out.println(email);
				System.out.println(pwd);
				
				member = new Member();
				
				member.setId(id);
				member.setEmail(email);
				member.setPwd(pwd);

			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rset);
		}
				
		return member;
	}

	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		System.out.println("updateMember()");
		int result = 0;
		String sql="update member set pwd=?, email=? where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			//DB에 연결합니다.
			conn = DBManager.getConnection();
			//쿼리문을 준비합니다.
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getPwd());
			pstmt.setString(2, member.getEmail());
			pstmt.setString(3, member.getId());
			
			//쿼리문을 실행합니다.
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return result;
		
	}

}
