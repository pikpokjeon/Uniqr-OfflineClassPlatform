package org.zerock.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	private long mno;
	
	private String mid;
	
	private String mpassword;
	
	private String memail;
	
	private String mname;
	
	private int mphone;
	
	private int mphone1;
	
	private int mphone2;
	
	private int mpost;
	
	private String maddress;
	
	private String mdetailaddress;
	
	private int mpoint;
	

	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date mage;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mregdate;
	
	private String magree;
	
	private String msel;
	
	private String admin;
}