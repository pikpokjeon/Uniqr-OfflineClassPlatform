package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.AdminBoardVO;
import org.zerock.domain.AdminCommentVO;
import org.zerock.mapper.AdminBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	//spring 4.3 �̻󿡼� �ڵ�ó��
	
	private AdminBoardMapper mapper;


	@Override
	public AdminBoardVO get(Long adno) {
		log.info("get......"+adno);
		return mapper.read(adno);
		
	}

	@Override
	public boolean modify(AdminBoardVO adminboard) {
		log.info("modify....."+adminboard);
		return mapper.update(adminboard)==1;
	
	}

	@Override
	public boolean remove(Long adno) {
		log.info("remove...."+adno);
		return mapper.delete(adno)==1;
	}

	@Override
	public List<AdminBoardVO> getList() {
		log.info("getList.....");
		return mapper.getList();
	
	}
	
	public void insert(AdminBoardVO adminboard) {
		mapper.insert(adminboard);
	}

	@Override
	public void insertcomment(AdminCommentVO adcomment) {
		mapper.insertcomment(adcomment);
		
		
		
	}

	@Override
	public AdminCommentVO getcomment(Long adno) {
	
		return mapper.getcomment(adno);
	}
}
