package com.pro.ogj;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pro.ogjmodel.ReviewDAO;
import com.pro.ogjmodel.ReviewDTO;
import com.pro.ogjmodel.ReviewPageDTO;


/**
 * Handles requests for the application home page.
 */
@Controller
public class reviewController {
	
	@Autowired
	private ReviewDAO dao;

	private final int rowsize = 3;
	private int totalRecord = 0;
	

	@RequestMapping("test.do")
	public String ogjReviewList(HttpServletRequest request, Model model) {
		
		int page; // 현재 페이지 변수
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		} else {
			page = 1; // 처음으로 게시물 전체 목록 태그 선택시
		}

		// DB상의 전체 게시물의 수를 확인하는 메서드.
		totalRecord = this.dao.getListCount();

		ReviewPageDTO dto = new ReviewPageDTO(page, rowsize, totalRecord);

		// 페이지에 해당하는 게시물을 가져오는 메서드 호출

		List<ReviewDTO> list = this.dao.getReviewList(dto);

		model.addAttribute("List", list);

		model.addAttribute("Paging", dto);
		

		
		return "ogj/review_list";
	}
	@RequestMapping("ogj_room.do")
	public String ogj_room () {
		return "ogj/room";
		
	}
	
	
	@RequestMapping("review_write.do")
	public String review_write () {
		return "ogj/review_write";
		
	}
	@RequestMapping("bigroom.do")
	public String bigroom () {
		return "ogj/bigroom";
		
	}
	@RequestMapping("valley.do")
	public String valley () {
		return "ogj/valley";
		
	}
	@RequestMapping("facility.do")
	public String facility () {
		return "ogj/facility";
		
	}
	@RequestMapping("facility_sub.do")
	public String bbq (Model model,@RequestParam("no")int num) {
		
		String img= "";
		String text="";
		String text2="";
		if(num==1) {
			img="resources/images/bbq";
			text="Barbecue";
			text2="- 저희가 준비한 수영장에서 마음껏 수영해보세요<br>" + 
					"- 온수 수영장 이용시간 : 15:00 부터 20:00까지 수영장 안전수칙을 읽고 꼭 준수해주세요.<br>" + 
					"- 온수 수영장 깊이 : 0.9M<br>" + 
					"- 물 온도 : 31도<br>" + 
					"- 준비물 : 수영복, 비치타올, 여분의 수건, 유아구명조끼";
		}else if(num==2) {
			img="resources/images/pool";
			text="Swimming Pool";
			text2="- 저희가 준비한 수영장에서 마음껏 수영해보세요<br>" + 
					"- 온수 수영장 이용시간 : 15:00 부터 20:00까지 수영장 안전수칙을 읽고 꼭 준수해주세요.<br>" + 
					"- 온수 수영장 깊이 : 0.9M<br>" + 
					"- 물 온도 : 31도<br>" + 
					"- 준비물 : 수영복, 비치타올, 여분의 수건, 유아구명조끼";
		}else if(num==3) {
			img="resources/images/val";
			text="Valley";
			text2="-저희 펜션 근처에 있는 계곡에서 자연을 만끽해보세요";
		}else if(num==4) {
			img="resources/images/play";
			text="playground";
			text2="- 꼬마손님들을 위한 놀이터가 마련되어있습니다.\r\n" + 
					"안전에 유의하며 즐겨주세요 ^^";
		}else if(num==5) {
			img="resources/images/sauna";
			text="sauna";
			text2="- 자연 속의 청정 사우나에서 쌓인 피로를 풀어보세요";
		}
		model.addAttribute("img",img);
		model.addAttribute("text",text);
		model.addAttribute("text2",text2);
		
		return "ogj/facility_sub";
		
	}
	
	
	
}
