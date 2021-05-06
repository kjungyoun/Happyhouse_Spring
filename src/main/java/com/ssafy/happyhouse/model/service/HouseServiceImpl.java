package com.ssafy.happyhouse.model.service;

import java.sql.Connection;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDto;
import com.ssafy.happyhouse.model.HouseException;
import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.model.dao.HouseDaoImpl;
import com.ssafy.happyhouse.util.DBUtil;
import com.ssafy.happyhouse.util.PageUtility;

public class HouseServiceImpl implements HouseService {
	
	private static HouseService houseService;
	
	public static HouseService getHouseService() {
		if(houseService == null)
			houseService = new HouseServiceImpl();
		return houseService;
		
	}

	private HouseServiceImpl() {}
	
	
	
	@Override
	public List<HouseDto> searchHouse(PageBean bean) {
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			int total;
			total = HouseDaoImpl.getDao().totalCount(conn,bean);
			PageUtility util = new PageUtility(bean.getInterval(), total, bean.getPageNo(), "images/");
			bean.setPageLink(util.getPageBar());
			return HouseDaoImpl.getDao().searchHouse(conn,bean);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new HouseException("제품 목록 조회중 오류 발생");
		}finally {
			DBUtil.close(conn);
		}
	}

}
