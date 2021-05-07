package com.ssafy.happyhouse.model.mapper;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.HouseDto;
import com.ssafy.happyhouse.model.PageBean;

@Mapper
public interface HouseDao {
	
	List<HouseDto> searchHouse(Connection conn,PageBean bean)throws SQLException;
	public int totalCount (Connection conn,PageBean bean)throws SQLException;
	public HouseDto searchCity(Connection conn,int code)throws SQLException;
}
