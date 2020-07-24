package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.zerock.domain.MemberVO;
import org.zerock.service.EmailService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j	
@RequestMapping(value="/email/*",produces="text/plain;charset=UTF-8")
@AllArgsConstructor
@SessionAttributes("member")
public class EmailController {
	 

    EmailService emailService; // 서비스를 호출하기위한 의존성 주입
    
    
 
    @GetMapping("/send") // 확인 (메일발송) 버튼을 누르면 맵핑되는 메소드
    public String send(MemberVO vo,Model model,SessionStatus session) {
        System.out.println(vo.getMid());
    	
    	try {
        	
            emailService.sendMail(vo); // dto (메일관련 정보)를 sendMail에 저장함
            model.addAttribute("message", "이메일이 발송되었습니다."); // 이메일이 발송되었다는 메시지를 출력시킨다.
            session.isComplete();
            return "/email/wait";
        } catch (Exception e) {
        	session.isComplete();
        	e.printStackTrace();
            model.addAttribute("message", "이메일 발송 실패..."); // 이메일 발송이 실패되었다는 메시지를 출력
            return "/email/fail";
        }
    }
    

    
}
