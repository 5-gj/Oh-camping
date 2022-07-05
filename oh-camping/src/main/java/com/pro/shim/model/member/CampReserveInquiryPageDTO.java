package com.pro.shim.model.member;

import lombok.Data;
import lombok.NoArgsConstructor;

// 페이징 처리 작업 시 작업할 내용을 설정하는 객체

@Data
@NoArgsConstructor
public class CampReserveInquiryPageDTO {
	
	private int page;			// 현재 페이지
	private int rowsize; 		// 한 페이지당 보여질 게시물의 수
	private int totalRecord; 	// DB 상의 테이블의 전체 레코드 수
	private int startNo; 		// 해당 페이지에서의 시작 번호
	private int endNo; 			// 해당 페이지에서의 끝 번호
	private int startBlock;		// 해당 페이지의 시작 블럭
	private int endBlock; 		// 해당 페이지의 마지막 블럭
	private int allPage;		// 전체 페이지 수
	private int block = 3; 		// 아래에 보여질 페이지 최대 수
	
	public CampReserveInquiryPageDTO(int page, int rowsize, int totalRecord) {
		this.page = page;
		this.rowsize = rowsize;
		this.totalRecord = totalRecord;
		
		// 해당 페이지에서 시작 번호
		this.startNo = (this.page * this.rowsize) - (this.rowsize - 1);
		
		// 해당 페이지에서 마지막 번호
		this.endNo = (this.page * this.rowsize);
		
		// 해당 페이지에서 시작 블럭
		this.startBlock = (((this.page - 1) / this.block) * this.block) + 1;

		// 해당 페이지에서 끝 블럭
		this.endBlock = (((this.page - 1) / this.block) * this.block) + this.block;
		
		// 전체 페이지 수 얻어오는 과정
		this.allPage = (int)Math.ceil(this.totalRecord / (double)this.rowsize);
		
		if(this.endBlock > this.allPage) {
			this.endBlock = this.allPage;
		}
	}
}
