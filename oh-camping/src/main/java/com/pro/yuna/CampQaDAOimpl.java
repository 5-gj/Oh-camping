package com.pro.yuna;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CampQaDAOimpl implements CampQaDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getCampQaListCount() {
		return this.sqlSession.selectOne("qaListCount");
	}

	@Override
	public List<CampQaDTO> getCampQaList(PageDTO dto) {
		return this.sqlSession.selectList("qaList", dto);
	}

	@Override
	public int writeCampQa(CampQaDTO dto) {
		return this.sqlSession.insert("qaWrite", dto);
	}

	@Override
	public void readCampQaCount(int no) {
		this.sqlSession.update("qaRead", no);
	}

	@Override
	public CampQaDTO CampQaCont(int no) {
		return this.sqlSession.selectOne("qaContent", no);
	}

	@Override
	public int modifyCampQa(CampQaDTO dto) {
		return this.sqlSession.update("qaModify", dto);
	}

	@Override
	public int deleteCampQa(int no) {
		return this.sqlSession.delete("qaDel", no);
	}

	@Override
	public void updateSequence(int no) {
		this.sqlSession.update("qaSeq", no);
		
	}

	@Override
	public int searchCampQaCount(String field, String keyword) {
		return this.sqlSession.selectOne(field, keyword);
	}

	@Override
	public List<CampQaDTO> searchCampQaList(PageDTO dto) {
		return this.sqlSession.selectList(dto.getField()+"1", dto);
	}

}
