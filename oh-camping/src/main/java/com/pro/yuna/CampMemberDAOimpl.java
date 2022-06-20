package com.pro.yuna;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CampMemberDAOimpl implements CampMemberDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int campIdCheck(String id) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("idCheck", id);
	}

	@Override
	public int joinCampMember(CampMemberDTO dto) {
		// TODO Auto-generated method stub
		return this.sqlSession.insert("joinMember", dto);
	}

	@Override
	public int userCheck(String id, String pwd) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userPwdCheck(String id, String pwd) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CampMemberDTO getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
