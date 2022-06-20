package com.pro.yuna;

public interface CampMemberDAO {
	
	int campIdCheck(String id);
	
	int joinCampMember(CampMemberDTO dto);
	
	int memberCheck(String id, String pwd);
	
	int memberPwdCheck(String id, String pwd);
	
	int memberEmailCheck(String id, String email);
	
	String getCampMemberPassword(String id);
	
	CampMemberDTO getMember(String id);
	
}
