package com.AIM.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class memberDAO {

	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	// db 연결
	private Connection getConnection() throws Exception{
		
		Context initCTX = new InitialContext();
		
		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdvc/mvc");
		
		con = ds.getConnection();
		
		System.out.println(" DAO : 디비연결 성공(커넥션풀)");
		System.out.println(" DAO : con"+con);
		return con;
		
	}
	


	

			
	// 자원 해제
	public void closeDB() {
		System.out.println("DAO : 연결 자원 해제");

		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// 자원해제
	
	// 회원가입
	
	public void memberjoin(memberDTO dto) {
		
		try {
			con = getConnection();
			sql = "insert into class7_220721_team3(mb_id,mb_pw,mb_name,mb_mb_nick,mb_birth,mb_gender,mb_tel)"
					+"value(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, dto.getMb_id());
			pstmt.setString(2, dto.getMb_pw());
			pstmt.setString(3, dto.getMb_name());
			pstmt.setString(4, dto.getMb_nick());
			pstmt.setString(5, dto.getMb_birth());
			pstmt.setString(6, dto.getMb_gender());
			pstmt.setString(7, dto.getMb_tel());
			
			int result = pstmt.executeUpdate();
			
			if(result > 0) {
				System.out.println("회원가입에 성공하셨습니다");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	
	
	// 회원가입
	
	// 아이디 check
	
	
	// 아이디 check
	
	
	
}
