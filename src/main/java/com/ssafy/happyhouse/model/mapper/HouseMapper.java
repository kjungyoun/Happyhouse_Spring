package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.BaseAddr;
import com.ssafy.happyhouse.model.HouseDto;
import com.ssafy.happyhouse.model.PageBean;

@Mapper
public interface HouseMapper {
	
	List<HouseDto> searchHouse(PageBean bean);
	int totalCount (PageBean bean);
	
	
}
