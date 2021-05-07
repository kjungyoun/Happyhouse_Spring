package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.MemberException;
import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.model.mapper.MemberMapper;
import com.ssafy.happyhouse.util.PageUtility;

@Service
public class MemberServiceImpl implements MemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);

	@Autowired
	private MemberMapper memberMapper;

	@Override
	@Transactional
	public void registerMember(MemberDto memberDto) throws Exception {
		memberMapper.registerMember(memberDto);
	}

	@Override
	public MemberDto login(Map<String,String> map) throws Exception {
		return memberMapper.login(map);
	}

	@Override
	public MemberDto getMember(String userid) throws Exception {
		return memberMapper.getMember(userid);
	}

	@Override
	@Transactional
	public void modifyMember(MemberDto memberDto) throws Exception {
		memberMapper.modifyMember(memberDto);
	}

	@Override
	@Transactional
	public void deleteMember(String userid) throws Exception {
		memberMapper.deleteMember(userid);
	}

	@Override
	public List<MemberDto> searchAll(PageBean bean) throws Exception {
			bean.setInterval(5);
			int total = memberMapper.totalCount(bean);
			PageUtility bar = new PageUtility(bean.getInterval(), total, bean.getPageNo());
			bean.setPageLink(bar.getPageBar());
			return memberMapper.searchAll(bean);
	}

}
