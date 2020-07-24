package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.SellboardVO;
import org.zerock.mapper.AdminBoardMapper;
import org.zerock.mapper.SellBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class SellboardServiceImpl implements SellboardService {

	private SellBoardMapper mapper;

	public List<SellboardVO> topstream() {
	
		return mapper.topstream();
	}
	
	public List<SellboardVO> topstream1(){
		return mapper.topstream1();
	}
 
	public List<SellboardVO> topsell() {
		
		return mapper.topsell();
	}

	public List<SellboardVO> getlist() {
		
		return mapper.getlist();
	}
	@Transactional
	public void insert(SellboardVO sellboard) {
		
		mapper.insert(sellboard);
	}

	
	public SellboardVO read(long sno) {
		
		return mapper.read(sno);
	}
	@Transactional
	public int delete(SellboardVO sellboard) {
		
		return mapper.delete(sellboard);
	}
	@Transactional
	public int update(SellboardVO sellboard) {
		
		return mapper.update(sellboard);
	}
	
	
	
	
}
