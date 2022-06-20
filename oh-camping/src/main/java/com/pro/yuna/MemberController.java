package com.pro.yuna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class MemberController {
	
	@Autowired
	private CampMemberDAO dao;
	
	// 회원가입
	@RequestMapping("camp_join.do")
	public String join() {		
		return "member/member_join";
	}
	
	
	@RequestMapping("member_id_check.do")
	public void content(@RequestParam("id") String user_id, 
			HttpServletResponse response) throws IOException{
		
		int res = this.dao.campIdCheck(user_id);
		
		PrintWriter out = response.getWriter();
		
		if (res == 0) {
			out.println("0");
		}else {
			out.println("1"); // 아이디 중복
		}
		
		System.out.println("res : " + res);

	}
	
	
	@RequestMapping("camp_join_ok.do")
	public void joinMember(@RequestParam("mem_phone1") String mem_phone1,
			@RequestParam("mem_phone2") String mem_phone2,
			@RequestParam("mem_phone3") String mem_phone3,
			CampMemberDTO dto,
			HttpServletResponse response)  throws IOException {		
		
		String mem_phone = mem_phone1+"-"+mem_phone2+"-"+mem_phone3;
		
		dto.setMem_phone(mem_phone);
		int check = this.dao.joinCampMember(dto);
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			out.println("<script>");
			out.println("alert('환영합니다! 새로운 아이디로 로그인 해주세요')");
			out.println("location.href='camp_main.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('회원가입에 실패했습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}
	// 회원가입 관련 끝
	
	
	// 로그인
	@RequestMapping("camp_login.do")
	public String login() {		
		return "member/member_login";
	}
	
	@RequestMapping("camp_find_password.do")
	public String findPwd() {
		return "member/member_find_pwd";
	}
}
