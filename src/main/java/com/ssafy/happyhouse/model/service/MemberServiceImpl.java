package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.MemberException;
import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.model.mapper.MemberMapper;
import com.ssafy.happyhouse.util.PageUtility;

@Service
public class MemberServiceImpl implements MemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);

	@Autowired
	private SqlSession sqlSession;

//	private static MemberService memberService;
//	
//	private MemberServiceImpl() {}
//
//	public static MemberService getMemberService() {
//		if(memberService == null)
//			memberService = new MemberServiceImpl();
//		return memberService;
//	}

	@Override
	public void registerMember(MemberDto memberDto) throws Exception {
		if (memberDto.getUserid() == null || memberDto.getUserpwd() == null || memberDto.getUsername() == null
				|| memberDto.getEmail() == null)
			throw new MemberException("빈칸을 모두 채워주세요.");
		sqlSession.getMapper(MemberMapper.class).registerMember(memberDto);
	}

	@Override
	public MemberDto login(String userid, String userpwd) throws Exception {
		// 유효성 검사 하덩가
		if (userid == null || userpwd == null)
			throw new MemberException("아이디와 비밀번호를 입력해주세요.");
		return sqlSession.getMapper(MemberMapper.class).login(userid, userpwd);
	}

	@Override
	public MemberDto getMember(String userid) throws Exception {
		if (userid == null)
			throw new MemberException("id를 확인해주세요.");
		return sqlSession.getMapper(MemberMapper.class).getMember(userid);
	}

	@Override
	public void modifyMember(MemberDto memberDto) throws Exception {
		if (memberDto.getUserid() == null || memberDto.getUserpwd() == null || memberDto.getUsername() == null
				|| memberDto.getEmail() == null)
			throw new MemberException("빈칸을 모두 채워주세요.");
		sqlSession.getMapper(MemberMapper.class).modifyMember(memberDto);
	}

	@Override
	public void deleteMember(String userid) throws Exception {
		if (userid == null)
			throw new MemberException("id를 확인해주세요.");
		sqlSession.getMapper(MemberMapper.class).deleteMember(userid);
	}

	@Override
	public List<MemberDto> searchAll(PageBean bean) throws Exception {
		try {
			int total = sqlSession.getMapper(MemberMapper.class).totalCount(bean);
			PageUtility bar = new PageUtility(bean.getInterval(), total, bean.getPageNo(), "images/");
			bean.setPageLink(bar.getPageBar());
			return sqlSession.getMapper(MemberMapper.class).searchAll(bean);
		} catch (SQLException e) {
			throw new MemberException("회원 목록 정보를 검색 중 오류 발생");
		} catch (Exception e) {
		}
		return null;
	}
//		Connection conn = null;
//		try {
//			conn = DBUtil.getConnection();
//			int total = MemberDaoImpl.getMemberDao().totalCount(conn, bean);
//			PageUtility util = new PageUtility(bean.getInterval(), total, bean.getPageNo(), "images/");
//			bean.setPageLink(util.getPageBar());
//			System.out.println("total-----------------------------"+total);
//			return MemberDaoImpl.getMemberDao().searchAll(conn,bean);
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw new MemberException("회원 목록 조회중 오류 발생");
//		}finally {
//			DBUtil.close(conn);
//		}
//	}

}
