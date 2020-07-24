package org.zerock.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.zerock.domain.MemberVO;

public interface EmailService {
	public void sendMail(MemberVO vo) throws MessagingException, UnsupportedEncodingException;
	
}

