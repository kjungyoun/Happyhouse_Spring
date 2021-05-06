package com.ssafy.happyhouse.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDto;
import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.util.DBUtil;

public class HouseDaoImpl implements HouseDao {
	
	private static HouseDao dao;
	
	public static HouseDao getDao() {
		if(dao == null)
			dao = new HouseDaoImpl();
		return dao;
	}

	private HouseDaoImpl() {};

	@Override
	public List<HouseDto> searchHouse(Connection conn,PageBean bean) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<HouseDto> list = new LinkedList<HouseDto>();
		try {
			String key = bean.getKey();
			String word = bean.getWord();
			int startNo = bean.getStartNo();
			int interval = bean.getInterval();
			
			StringBuilder sql = new StringBuilder();
			sql.append(" select * from housedeal  \n");
			if(key !=null && !key.equals("all") && word != null && !word.trim().equals("")) {
				if(key.equals("dong")) {
					sql.append("where dong like ? \n");
				}else if(key.equals("AptName")) {
					sql.append("where AptName like ? \n");
				}
			}
				sql.append("order by AptName desc limit ?, ?");
				pstmt = conn.prepareStatement(sql.toString());
				
				int idx = 1;
		
				if(key != null && !key.equals("all") && word != null && !word.trim().equals("")) {
					pstmt.setString(idx++, "%"+word+"%");
				}
				
				pstmt.setInt(idx++, startNo);
				pstmt.setInt(idx++, interval);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					HouseDto house = searchCity(conn, rs.getInt("code"));
					house.setAptName(rs.getString("AptName"));
					house.setArea(rs.getDouble("area"));
					house.setBuildYear(rs.getInt("buildYear"));
					house.setCode(rs.getInt("code"));
					house.setDealAmount(rs.getString("dealAmount"));
					house.setDealDay(rs.getInt("dealDay"));
					house.setDealMonth(rs.getInt("dealMonth"));
					house.setDealYear(rs.getInt("dealYear"));
					house.setDong(rs.getString("dong"));
					house.setFloor(rs.getInt("floor"));
					house.setJibun(rs.getString("jibun"));
					list.add(house);
				}
		} finally {
			DBUtil.close(conn);
			DBUtil.close(pstmt);
			DBUtil.close(rs);
		}
		return list;
	}

	@Override
	public int totalCount(Connection conn, PageBean bean) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String key = bean.getKey();
			String word = bean.getWord();
			int startNo = bean.getStartNo();
			int interval = bean.getInterval();
			
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT count(*) as cnt from housedeal \n");
			if(key!=null && !key.equals("all") && !word.trim().equals("")) {
				if(key.equals("dong")) {
					sql.append("where dong like ? \n");
				}else if(key.equals("AptName")) {
					sql.append("where AptName like ? \n");
				}
			}
			pstmt = conn.prepareStatement(sql.toString());
			if(key!=null && !key.equals("all") && !word.trim().equals("")) {
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

	@Override
	public HouseDto searchCity(Connection conn,int code) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		HouseDto house = new HouseDto();
		
		try {
			StringBuilder sql = new StringBuilder();
			sql.append("select distinct city, gugun from baseaddress \n");
			sql.append("where dongcode = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				house.setCity(rs.getString("city"));
				house.setGugun(rs.getString("gugun"));				
			}
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
		}
		return house;
	}

}
