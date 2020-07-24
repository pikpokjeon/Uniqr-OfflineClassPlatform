package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminCommentVO {

	long adno;
	String adcomment;
	String mid;
	Date acregdate;
	String adpicture;
	
}
