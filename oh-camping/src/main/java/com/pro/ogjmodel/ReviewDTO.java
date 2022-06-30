package com.pro.ogjmodel;

import lombok.Data;

@Data
public class ReviewDTO {
	
	private int review_no;
	private String review_id;
	private int review_roomno;
	private String review_title;
	private String review_cont;
	private String review_date;
	private int views;

}
