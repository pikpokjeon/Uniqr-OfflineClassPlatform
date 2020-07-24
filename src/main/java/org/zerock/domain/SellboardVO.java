package org.zerock.domain;

import java.io.File;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class SellboardVO {
	
	private long sno;
	private String mid;
	private String mname;
	private String sname;
	private String scategory;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date sregdate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date sstartdate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date senddate;
	
	private String sschedule;
	private String scontent;
	private String scomment;
	private String starget;
	private String sclaim;
	
	private String smoc;
	private String smocin;
	
	
	private String ssthumb;
	private String ssimage;
	

	private String surl;
	private String sstream;
	private int smoney;
	
	
	
	private List<String> sschedulelist;     // 스케쥴 리스트
	
	private List<String> scontentlist;      // 배울내용 리스트
	
	private List<String> stargetlist;       // 강의대상 리스트
	
	private List<String> sclaimlist;        // 요구사항 리스트
	
	
	private List<String> smoclist;           // 목차 리스트
	private List<String> smocinlist;         // 목차 내용 리스트
	
	
	
}
