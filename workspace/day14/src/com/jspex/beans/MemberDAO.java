package com.jspex.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.management.RuntimeErrorException;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	public ArrayList<MemberVO> select(String name) {
		String query = "SELECT * FROM TBL_MEMBER WHERE NAME = ?";
		ArrayList<MemberVO> members = new ArrayList<>();
		MemberVO member = null;
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		try {
			conn = DBconnnecter.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, name);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				member = new MemberVO();
				member.setNum(rs.getInt(1));
				member.setName(rs.getString(2));
				member.setBirthday(sdf.format(rs.getDate(3)));
				members.add(member);
			}
		} catch (SQLException e) {
			System.out.println("selete(String) 쿼리 오류" + e);
		} catch (Exception e) {
			System.out.println("select(String) 알 수 없는 오류 " + e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		
		return members;
	}
}
