package org.zerock.service;

import java.util.List;

import org.zerock.domain.AdminBoardVO;
import org.zerock.domain.AdminCommentVO;

public interface BoardService {


	public AdminBoardVO get(Long adno);
	
	public boolean modify(AdminBoardVO adminboard);
	
	public boolean remove(Long adno);
	
	public List<AdminBoardVO> getList();
	
	public void insert(AdminBoardVO adminboard);

	public void insertcomment(AdminCommentVO adcomment);

	public AdminCommentVO getcomment(Long adno);
	
	


	
}
