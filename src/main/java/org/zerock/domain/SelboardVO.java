package org.zerock.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class SelboardVO {
	
	private long sno;
	private String mid;
	private String mname;
	private String sname;
	private String scategory;
	private Date sregdate;
	private Date senddate;
	private String sschedule;
	private String scontent;
	private String scomment;
	private String starget;
	private String sclaim;
	
	private String smoc;
	private String smocin;
	
	private String sthumb;
	private String simage;
	private String surl;
	private String sstream;
	private int smoney;
	
	
	
	private List<String> sschedulelist;     // 스케쥴 리스트
	
	private List<String> scontentlist;      // 배울내용 리스트
	
	private List<String> stargetlist;       // 강의대상 리스트
	
	private List<String> sclaimlist;        // 요구사항 리스트
	
	
	private List<String> moclist;           // 목차 리스트
	private List<String> mocinlist;         // 목차 내용 리스트
	
	
	
}
