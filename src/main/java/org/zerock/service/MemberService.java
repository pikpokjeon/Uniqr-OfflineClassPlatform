package org.zerock.service;

import java.util.List;

import org.zerock.domain.MemberVO;

public interface MemberService {

	public List<MemberVO> getList();

	public void insert(MemberVO member);

	public MemberVO login(MemberVO member);

	public void delete(Long mno);

	public int update(MemberVO member);
	
	public MemberVO select(Long mno);

	public void agree(MemberVO member);
	
	public MemberVO result(MemberVO member);
	
	public MemberVO emailcheck(MemberVO member);
	
}
