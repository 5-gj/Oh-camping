package com.pro.yuna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QaController {
	
	@Autowired
	private CampQaDAO dao;
	
	private final int rowsize = 5;     // 한 페이지당 보여질 게시물의 수
	private int totalRecord = 0;       // DB 상의 전체 게시물의 수
	
	
	@RequestMapping("camp_qa.do")
	public String qaList(HttpServletRequest request, Model model) {
		
		int page;   // 현재 페이지 변수
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}else {
			page = 1;    // 처음으로 게시물 전체 목록 태그를 선택한 경우
		}
		
		// DB 상의 전체 게시물의 수를 확인하는 메서드 호출
		totalRecord = this.dao.getCampQaListCount();
		
		PageDTO dto = new PageDTO(page, rowsize, totalRecord);
		
		// 페이지에 해당하는 게시물을 가져오는 메서드 호출
		List<CampQaDTO> list = this.dao.getCampQaList(dto);
		
		model.addAttribute("QaList", list);
		model.addAttribute("Paging", dto);
		
		return "board/q.a";
	} // camp_qa.do 끝
	
	
}
