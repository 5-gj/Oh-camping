package com.pro.ogjmodel;

import java.util.List;


public interface ReviewDAO {
	
	//리스트 갯수 
	public int getListCount();  
	
	//
	public List<ReviewDTO> getReviewList(ReviewPageDTO dto);
	
	//리뷰 작성
	public int insertReview(ReviewDTO dto);
	
	//
	public void readCount(int no);
	
	
	public ReviewDTO ReviewCont(int no);
	
	// 리뷰 수정
	public int updateReview(ReviewDTO dto);
	
	// 리뷰 삭제
	public int deleteReview(int no);
	
	// 리뷰번호 최신화
	public void updateSequence(int no);

}