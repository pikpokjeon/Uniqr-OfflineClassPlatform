package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/member/*",produces="text/plain;charset=UTF-8")
@AllArgsConstructor
@SessionAttributes("member")
public class MemberController {

	private MemberService service;
	
	@GetMapping("/loginpage")
	public void loginpage() {
		System.out.println("로그인 페이지 접근");
	}
	
	@RequestMapping(value="/login",produces = "application/json",method=RequestMethod.POST)
	@ResponseBody
	public int login(Model model ,MemberVO member,HttpServletRequest request) {
		

		System.out.println(member.getMid() +" : "+member.getMpassword());
		member=service.login(member);
		

		if(member!=null) {
			if(member.getMagree().equals("Y")) {
			System.out.println(member.getMid());
			model.addAttribute("member",member);
			return 1;
			
			} else if(member.getMagree().equals("N")) {
				return 2;
		
			}
		}
		return 0;

	}
	

	@RequestMapping(value="/loginresult",produces = "application/json",method=RequestMethod.GET)
	@ResponseBody
	public int loginresult(MemberVO member) {
		
		member=service.result(member);
		if(member==null) {
			
			return 1;
		}
		else {
		
			return 0;
		
		}
	}
	
	@GetMapping("/insertpage")
	public void insertpage() {
		
	}
	
	@PostMapping("/insert")
	public String insert(MemberVO member,Model model ) {
		
		System.out.println(member.toString());
		
		
		service.insert(member);     // sql 입력정보 db에 등록
		
		model.addAttribute("member",service.login(member));
		
		System.out.println("확인");
		return "/email/sendpage";
		
	}
	
	@GetMapping("/memberinfo")
	public void memberinfo(@RequestParam("mno")long mno,Model model) {
		
		model.addAttribute("memberinfo",service.select(mno));
		
		
	}
	
	@GetMapping("/infopage")
	public void infopage() {
		
	}
	
	
	@GetMapping("/logout")
	public String logout(SessionStatus session) {
		session.setComplete();
		
		return "redirect:/";
	}
	
	
	
    @GetMapping("/welcome")
    public String welcom(MemberVO vo) {
    	service.agree(vo);
    	System.out.println("접속 확인");
    	return "home";        // 메인페이지로가는것이지만  회원가입 완료 페이지 만들어줘야됨
    }
    
	@RequestMapping(value="/emailcheck",produces = "application/json",method=RequestMethod.GET)
	@ResponseBody
    public int emailcheck(MemberVO member) {
		
		member=service.emailcheck(member);
		
		if(member==null) {
			return 1;
			
		}
		else {
		
			return 0;
		
		}
	}
	
	@RequestMapping(value="/deletemember",produces = "application/json",method=RequestMethod.POST)
	@ResponseBody
	public int deletemember(MemberVO member,SessionStatus session) {
	
		System.out.println(member.getMid()+ ":"+ member.getMpassword());
		member=service.login(member);
		
		if(member!=null) {
			session.setComplete();
			
			service.delete(member.getMno());
			
			return 1;
		}
		else {
			return 0;
		}
		
	}
	
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(MemberVO member,SessionStatus session) {
		
		int a=service.update(member);
		System.out.println("업데이트 확인 :" + a);
		session.setComplete();
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value="/clanding",method=RequestMethod.GET)
	public void clanding() {
		
		
	}
	
	
	
	@RequestMapping(value="/crecentorder",method=RequestMethod.GET)
	public void crecentorder() {
		
		
	}
	
	
	@RequestMapping(value="/clecstatus",method=RequestMethod.GET)
	public void clecstatus() {	
		
		
	}
	@RequestMapping(value="/unirequest",method=RequestMethod.GET)
	public void unirequest() {
		
		
	}
	@RequestMapping(value="/cexit",method=RequestMethod.GET)
	public void cexit() {
		
		
	}
	@RequestMapping(value="/cinfo",method=RequestMethod.GET)
	public void cinfo() {
		
	}
	
	@RequestMapping(value="/unilec",method=RequestMethod.GET)
	public void unilec() {
		
		
	}
	
	@RequestMapping(value="/uniaccount",method=RequestMethod.GET)
	public void uniaccount() {
		
		
	}
	
	@RequestMapping(value="/ccart",method=RequestMethod.GET)
	public void ccart() {
		
		
	}
	@PostMapping()
	public void purchase() {
	
	}
	

	
}
