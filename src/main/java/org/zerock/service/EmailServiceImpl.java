package org.zerock.service;

import java.io.UnsupportedEncodingException;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EmailServiceImpl implements EmailService {

	JavaMailSender mailSender;
	
	@Override
	public void sendMail(MemberVO vo) throws MessagingException, UnsupportedEncodingException, MailException {

			
			// 이메일 객체
            MimeMessage msg = mailSender.createMimeMessage();
            System.out.println("테스트");
            // 받는 사람을 설정 (수신자, 받는사람의 이메일 주소 객체를 생성해서 수신자 이메일주소를 담음)
            msg.addRecipient(RecipientType.TO, new InternetAddress(vo.getMemail()));
 
           
            /*
             * createMimeMessage() : MimeMessage객체를 생성시킴 (이것을 이용해서 메시지를 구성한 뒤 메일 발송)
             * addRecipient() : 메시지의 발신자를 설정 InternetAddress() : 이메일 주소 getReceiveMail() :
             * 수신자 이메일 주소
             */
 
            // 보내는 사람(이메일주소+이름)
            // (발신자, 보내는 사람의 이메일 주소와 이름을 담음)
            // 이메일 발신자
            msg.addFrom(new InternetAddress[] { new InternetAddress("glsrhfo17@gmail.com", "박인제") });
 
            // 이메일 제목 (인코딩을 해야 한글이 깨지지 않음)
            msg.setSubject("유니커 회원가입 인증메일입니다.", "utf-8");
            
            // 이메일 본문 (인코딩을 해야 한글이 깨지지 않음)
          
////            html로 보낼 경우            
//            MimeMessage message = mailSender.createMimeMessage();
//            MimeMessageHelper helper = new MimeMessageHelper(message);
//            helper.setTo(vo.getMemail()); 	// 가입할사람 메일
//            helper.setText("<html><body><a href='/member/welcome?mid="+vo.getMid()+">인증</a></body></html>", true);
//            
//            helper
//            mailSender.
//           
            
           msg.setContent("<a href='http://localhost:10000/member/welcome?mid="+vo.getMid()+"'>"+"인증"+"</a>", "text/html; charset=UTF-8");
            // 이메일 보내기
            mailSender.send(msg);
        
    }
}
