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

	@Override
	public int insertReview(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void readCount(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ReviewDTO ReviewCont(int no) {
		// TODO Auto-generated method stub
		return null;
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

}
