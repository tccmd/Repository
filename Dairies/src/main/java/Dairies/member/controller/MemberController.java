package Dairies.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Dairies.member.dto.MemberDto;
import Dairies.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService; 
	
	@RequestMapping("/member/openMemberList.do")
	public ModelAndView openMemberList() throws Exception{
		ModelAndView mv = new ModelAndView("member/memberList");
		
		List<MemberDto> list = memberService.selectMemberList();
		mv.addObject("list", list);
		
		return mv;
	}
	
//	@RequestMapping("/member/openMemberWrite.do")
//	public ModelAndView openMemberWrite() throws Exception{
//		ModelAndView mv = new ModelAndView("member/memberWrite");
//		
//		List<MemberDto> list = memberService.selectMembeIdList();
//		mv.addObject("list", list);
//		
//		return mv;
//	}
	
	@RequestMapping("/member/openMemberWrite.do")
	public String openMemberWrite() throws Exception{
		return "member/memberWrite";
	}
	
	@RequestMapping("/member/insertMember.do")
	public String insertMember(MemberDto member) throws Exception{
		memberService.insertMember(member);
		return "redirect:/";
	}
	
	@RequestMapping("/member/openMemberDetail.do")
	public ModelAndView openMemberDetail(@RequestParam int memberIdx) throws Exception{
		ModelAndView mv = new ModelAndView("member/memberDetail");
		
		MemberDto member = memberService.selectMemberDetail(memberIdx);
		mv.addObject("member", member);
		
		return mv;
	}
	
	@RequestMapping("/member/updateMember.do")
	public String updateMember(MemberDto member) throws Exception{
		memberService.updateMember(member);
		return "redirect:/member/openMemberList.do";
	}
	
	@RequestMapping("/member/deleteMember.do")
	public String deleteMember(int memberIdx) throws Exception{
		memberService.deleteMember(memberIdx);
		return "redirect:/member/openMemberList.do";
	}
	
	@RequestMapping("/member/login.do")
	public String openLogin() throws Exception {
		return "member/login";
	}
	
	@RequestMapping("/member/loginOk.do")
	public String openLoginOk() throws Exception {
		return "member/login_ok";
	}
	
//	@RequestMapping("/member/loginOk.do")
//	public ModelAndView loginOk(@Valid @ModelAttribute LoginForm form, BindingResult bindingResult, HttpServletResponse response, HttpServletRequest request) throws Exception{
//		ModelAndView mv = new ModelAndView("dairies/member/memberList");
//		
//		List<MemberDto> list = memberService.selectMemberList();
//		mv.addObject("list", list);
//		
//		if (bindingResult.hasErrors()) {
//	        return "login/loginForm";
//	    }
//
//	    Member loginMember = memberService.login(form.getLoginId(), form.getPassword());
//	    if (loginMember == null) {
//	        bindingResult.reject("loginFail", "????????? ?????? ??????????????? ?????? ????????????.");
//	        return "login/loginForm";
//	    }
//
//	    //?????? ???????????? ?????? ?????? ????????? ???????????? ??????
//	    //????????? ????????? ?????? ?????? ??????, ????????? ?????? ?????? ??????
//	    HttpSession session = request.getSession();
//	    session.setAttribute(memberService.LOGIN_MEMBER, loginMember);
//
//	    return "redirect:/";
//		
//		HttpSession session = request.getSession(false);
//		session.setAttribute(loginmember, "loginmember");
//		
//		String id = request.getParameter("id");
//		String pw = request.getParameter("pw");
//		
//		return mv;
//	}
//	@RequestMapping("/member/loginOk.do")
//	public String loginOk() throws Exception{
//		return "member/login_ok";
//	}
	
	@RequestMapping("/member/idsearch.do")
	public String openIdsearch() throws Exception{
		return "member/idsearch";
	}
	
	@RequestMapping("/member/idsearchOk.do")
	public String openIdsearchOk() throws Exception{
		return "member/idsearch_ok";
	}
	
	@RequestMapping("/member/jusoPopup.do")
	public String openJusoPopup() throws Exception{
		return "member/jusoPopup";
	}
	
	@RequestMapping("/member/logout.do")
	public String openLogout() throws Exception{
		return "member/logout";
	}
}
