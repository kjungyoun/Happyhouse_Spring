package com.ssafy.happyhouse.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.PageBean;

@Mapper
public interface MemberMapper {

//	회원가입
	void registerMember(MemberDto memberDto);
	
//	로그인
	MemberDto login(Map <String,String> map);
	
//	회원정보 수정을 위한 회원의 모든 정보 얻기
	MemberDto getMember(String userid);
	
//	회원정보 수정 -> 로그인 되었을 때만
	void modifyMember(MemberDto memberDto);
	
//	회원탈퇴 -> 로그인 되었을 때만 
	void deleteMember(String userid);
	
//  회원 전체	
	List<MemberDto> searchAll(PageBean bean);
	
	int totalCount(PageBean bean);

}
