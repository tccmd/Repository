package Dairies.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DairiesController {
	
	@RequestMapping("/administrator.do")
	public String openAdmin() throws Exception {
		return "admin/administrator";
	}
	
	@RequestMapping("/listPage.do")
	public String openboardlist() throws Exception {
		return "board/listPage";
	}
	
	@RequestMapping("/information/story")
	public String openInformationStory() throws Exception {
		return "information/story";
	}
	
	@RequestMapping("/information/contribution")
	public String openInformationContribution() throws Exception {
		return "information/contribution";
	}
	
	@RequestMapping("/information/management")
	public String openInformationManagement() throws Exception {
		return "information/management";
	}
	
	@RequestMapping("/information/location")
	public String openInformationLocation() throws Exception {
		return "information/location";
	}
	
	@RequestMapping("/member/terms")
	public String openTerms() throws Exception {
		return "member/terms";
	}
	
	@RequestMapping("/member/personal_information")
	public String openPersonaInformation() throws Exception {
		return "member/personal_information";
	}
}
