package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.AdminBoardVO;
import org.zerock.domain.AdminCommentVO;

public interface AdminBoardMapper {
	
	
	public List<AdminBoardVO> getList();
	
	public void insert(AdminBoardVO board);
	

	public AdminBoardVO read(Long adno);
	
	public int delete(Long adno);
	
	public int update(AdminBoardVO adminboard);

	public void insertcomment(AdminCommentVO adcomment);

	public AdminCommentVO getcomment(Long adno);
	
	
}
