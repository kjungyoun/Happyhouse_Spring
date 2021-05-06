package com.ssafy.happyhouse.model.service;

import java.sql.Connection;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDto;
import com.ssafy.happyhouse.model.PageBean;

public interface HouseService {
	List<HouseDto> searchHouse(PageBean bean);
}
