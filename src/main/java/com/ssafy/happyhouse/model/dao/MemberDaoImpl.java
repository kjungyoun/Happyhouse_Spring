package com.ssafy.happyhouse.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.PageBean2;
import com.ssafy.happyhouse.util.DBUtil;

public class MemberDaoImpl implements MemberDao {

	private static MemberDao memberDao;
	
	private MemberDaoImpl() {}
	
	public static MemberDao getMemberDao() {
		if(memberDao == null)
			memberDao = new MemberDaoImpl();
		return memberDao;
	}
	
	@Override
	public void registerMember(MemberDto memberDto) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into member (userid, userpwd, username, email) \n");
			sql.append("values (?, ?, ?, ?)");
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, memberDto.getUserid());
			pstmt.setString(2, memberDto.getUserpwd());
			pstmt.setString(3, memberDto.getUsername());
			pstmt.setString(4, memberDto.getEmail());
			pstmt.executeUpdate();
		} finally {
			DBUtil.close(pstmt, conn);
		}

	}

	@Override
	public MemberDto login(String userid, String userpwd) throws SQLException {
		MemberDto memberDto = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select username, email \n";
			sql += "from member \n";
			sql += "where userid = ? and userpwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, userpwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				memberDto = new MemberDto();
				memberDto.setUsername(rs.getString("username"));
				memberDto.setUserid(userid);
				memberDto.setUserpwd(userpwd);
				memberDto.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, pstmt, conn);
		}
		
		return memberDto;
	}

	@Override
	public MemberDto getMember(String userid) throws SQLException {
		MemberDto memberDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			
			sql.append(" select * \n");
			sql.append(" from member \n");
			sql.append(" where userid = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				memberDto = new MemberDto();
				memberDto.setUserid(rs.getString("userid"));
				memberDto.setUserpwd(rs.getString("userpwd"));
				memberDto.setUsername(rs.getString("username"));
				memberDto.setEmail(rs.getString("email"));
			}
		} finally {
			DBUtil.close(rs, pstmt, conn);
		}
		return memberDto;
	}

	@Override
	public void modifyMember(MemberDto memberDto) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			
			sql.append(" update member \n");
			sql.append(" set userpwd = ?, username = ?, email = ? \n");
			sql.append(" where userid = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, memberDto.getUserpwd());
			pstmt.setString(2, memberDto.getUsername());
			pstmt.setString(3, memberDto.getEmail());
			pstmt.setString(4, memberDto.getUserid());
			pstmt.executeUpdate();
		} finally {
			DBUtil.close(rs, pstmt, conn);
		}
	}

	@Override
	public void deleteMember(String userid) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("delete from member \n");
			sql.append("where userid = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, userid);
			pstmt.executeUpdate();
		} finally {
			DBUtil.close(pstmt, conn);
		}
	}

	@Override
	public List<MemberDto> searchAll(Connection conn, PageBean2 bean) throws SQLException {
		List<MemberDto> list = new ArrayList<MemberDto>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String key = bean.getKey();
		String word = bean.getWord();
		int startNo= bean.getStartNo()-1;
		int interval=bean.getInterval();
		
		try {
			StringBuilder sql = new StringBuilder();
			
			sql.append(" select userid, username, email  \n");
			sql.append(" from   member                                    \n");
			if(key != null && !key.equals("all") && word !=null && !word.trim().equals("")) {
				if(key.equals("name")) {
					sql.append(" where username like ? \n");
				}else if(key.equals("email")) {
					sql.append(" where email like ?  \n");
				}else if(key.equals("id")) {
					sql.append(" where userid like ?  \n");
				}
			}
			sql.append(" order by userid desc limit ?, ? \n");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			int idx = 1;  //? 번호를 위한 변수   => 조건에 따라서 ?의 번호가 달라지므로 변수를 사용한다. 
			
			if(key != null && !key.equals("all") && word != null && !word.trim().equals("")) {
					pstmt.setString(idx++, "%"+word+"%");
			}
			
			pstmt.setInt(idx++, startNo);
			pstmt.setInt(idx++, interval);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDto dto = new MemberDto();
				dto.setUserid(rs.getString("userid"));
				dto.setUsername(rs.getString("username"));
				dto.setEmail(rs.getString("email"));
				list.add(dto);
			}
			
		} finally {
			DBUtil.close(rs, pstmt);
		}
		return list;
	}

	@Override
	public int totalCount(Connection conn, PageBean2 bean) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String key = bean.getKey();
			String word = bean.getWord();
			int startNo = bean.getStartNo();
			int interval = bean.getInterval();
			
			StringBuilder sql = new StringBuilder();
			sql.append(" select count(*) as cnt from member  \n");
			if(key != null && !key.equals("all") && word !=null && !word.trim().equals("")) {
				if(key.equals("name")) {
					sql.append(" where username like ? \n");
				}else if(key.equals("email")) {
					sql.append(" where email like ?  \n");
				}else if(key.equals("id")) {
					sql.append(" where userid like ?  \n");
				}
			}
			pstmt = conn.prepareStatement(sql.toString());
			
			if(key != null && !key.equals("all") && word != null && !word.trim().equals("")) {
					pstmt.setString(1, "%"+word+"%");				
			}
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
		}
		return 1;
	}
}
