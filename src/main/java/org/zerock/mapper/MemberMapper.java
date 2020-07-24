package org.zerock.mapper;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.MemberVO;

public interface MemberMapper {
	

	public List<MemberVO> getList();
	
	@Transactional
	public void insert(MemberVO member);
	
	public MemberVO login(MemberVO member);
	
	@Transactional
	public int delete(Long mno);
	
	@Transactional
	public int update(MemberVO member);
	@Transactional
	public MemberVO select(Long mno);
	
	public int agree(MemberVO member);
	
	public MemberVO result(MemberVO member);

	public MemberVO emailcheck(MemberVO member);
	
}
