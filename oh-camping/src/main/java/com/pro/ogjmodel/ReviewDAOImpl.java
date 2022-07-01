package com.pro.ogjmodel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public int getListCount() { //리뷰 갯수 불러오기
		return this.sqlSession.selectOne("getReviewListCount");
	}

	@Override
	public List<ReviewDTO> getReviewList(ReviewPageDTO dto) { //리뷰 불러오기
		return this.sqlSession.selectList("getReviewList",dto);
	}
	
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int insertReview(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void readCount(int no) {
		this.sqlSession.update("reviewReadCount", no);
		
	}

	@Override
	public ReviewDTO ReviewCont(int no) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getReviewCont",no);
	}

	@Override
	public int updateReview(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReview(int no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateSequence(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReviewSubDTO> getReviewSubData(String id) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("getReviewSubData",id);
	}

	@Override
	public ReviewSubDTO getReviewSubData2(ReviewSubDTO subdto) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("getReviewSubData2",subdto);
	}



}
