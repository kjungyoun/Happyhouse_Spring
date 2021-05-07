package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.HouseDto;
import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.model.mapper.HouseMapper;
import com.ssafy.happyhouse.util.PageUtility;

@Service
public class HouseServiceImpl implements HouseService {
	
	@Autowired
	private HouseMapper houseMapper;
	
	@Override
	public List<HouseDto> searchHouse(PageBean bean) {
			int total;
			total = houseMapper.totalCount(bean);
			PageUtility util = new PageUtility(bean.getInterval(), total, bean.getPageNo());
			bean.setPageLink(util.getPageBar());
			return houseMapper.searchHouse(bean);
	}

}
