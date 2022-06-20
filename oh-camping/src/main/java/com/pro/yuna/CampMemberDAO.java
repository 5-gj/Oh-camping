package com.pro.yuna;

public interface CampMemberDAO {
	
	int campIdCheck(String id);
	
	int joinCampMember(CampMemberDTO dto);
	
	int userCheck(String id, String pwd);
	
	int userPwdCheck(String id, String pwd);
	
	CampMemberDTO getMember(String id);
	
}
