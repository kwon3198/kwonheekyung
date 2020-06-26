package org.edu.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.edu.service.IF_MemberService;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	@Inject
	private IF_MemberService memberService;
	/**
	 * * boardwrite 입니다
	 */
	@RequestMapping(value = "/admin/board/write", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model) {
		return "admin/board/write";
	}
	/**
	 * * memberwrite 입니다
	 */
	@RequestMapping(value = "/admin/member/write", method = RequestMethod.GET)
	public String memberWrite(Locale locale, Model model) {
		
		return "admin/member/write";
	}
	/**
	 * * boardview 입니다
	 */
	@RequestMapping(value = "/admin/board/view", method = RequestMethod.GET)
	public String boardView(Locale locale, Model model) {
		
		return "admin/board/view";
	}
	/**
	 * * memberview 입니다
	 */
	@RequestMapping(value = "/admin/member/view", method = RequestMethod.GET)
	public String memberView(Locale locale, Model model) {
		
		return "admin/member/view";
	}
	/**
	 * * 게시물관리 리스트 입니다
	 */
	@RequestMapping(value = "/admin/board/list", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) {
		
		return "admin/board/list";
		
	}
	/**
	 * * 회원관리 리스트 입니다
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member/list", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) throws Exception {
		List<MemberVO> list = memberService.selectMember();
		//모델클래스로 jsp화면으로 list변수값을 memverService에서 셀렉트한memberList라는 변수명으로 보낸다
		//model { list -> memberList -> jsp}
		model.addAttribute("memberList", list);
		return "admin/member/list";
	}
	/**
	 * * 관리자 파일 홈 입니다
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/home";
	}
	
	
}
