package org.zerock.mapper;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"
					, "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@WebAppConfiguration
@Log4j
public class AdminBoardMapperTests {

	@Setter(onMethod_=@Autowired)
	private AdminBoardMapper mapper;
	
	@Setter(onMethod_= {@Autowired})
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	
	@Before
	public void setup() {
		this.mockMvc=MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(board -> log.info(board));
//	}
//	
//	
//	
//	@Test
//	public void testInsert() {
//		BoardVO board = new BoardVO();
//		board.setTitle("���� �ۼ��ϴ� ��");
//		board.setContent("���� �ۼ��ϴ� ����");
//		board.setWriter("newbie");
//		mapper.insert(board);
//		log.info(board);
//		
//		
//	}
//	
//	@Test
//	public void tetInsertSelectKey() {
//		BoardVO board = new BoardVO();
//		board.setTitle("���� �ۼ��ϴ� �� Select Key");
//		board.setContent("���� �ۼ��ϴ� ���� Select Key");
//		board.setWriter("newbie");
//		mapper.insertSelectKey(board);
//		log.info(board);
//		
//		
//		
//		
//	}
//	
//	@Test
//	public void testRead() {
//		// �����ϴ� �Խù� ��ȣ�� �׽�Ʈ
//		BoardVO board = mapper.read(21L);
//		log.info(board);
//	}
//	
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT: "+mapper.delete(21L));
//	}

//	@Test
//	public void testUpdate() {
//		BoardVO board = new BoardVO();
//		// ������ �����ϴ� ��ȣ���� Ȯ���� ��
//		board.setBno(22L);
//		board.setTitle("������ ����");
//		board.setContent("������ ����");
//		board.setWriter("user00");
//		
//		int count=mapper.update(board);
//		log.info("UPDATE COUNT: "+count);
//		
//	}
	
//	@Test
//	public void testList() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//
//	}

	
//	@Test
//	public void testRegister()throws Exception{
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/register")
//				.param("title", "�׽�Ʈ ���� ����")
//				.param("content","�׽�Ʈ ���� ����")
//				.param("writer", "user00")
//				).andReturn().getModelAndView().getViewName();
//		
//		log.info(resultPage);
//	
//		
//	}
	
	
//	@Test
//	public void testGet() throws Exception{
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/get")
//				.param("bno", "22"))
//				.andReturn()
//				.getModelAndView().getModelMap()
//				);
//		
//		
//	}
	
	
//	@Test
//	public void testModyfy() throws Exception{
//		String resultPage = mockMvc
//				.perform(MockMvcRequestBuilders.post("/board/modify")
//						.param("bno", "1")
//						.param("title", "������ �׽�Ʈ ���� ����")
//						.param("content", "������ �׽�Ʈ ���� ����")
//						.param("writer", "user00")
//						).andReturn().getModelAndView().getViewName();
//		
//	}

//	@Test
//	public void testRemove()throws Exception{
//		//������ �����ͺ��̽��� �Խù� ��ȣ Ȯ���� ��
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove")
//				.param("bno", "25"))
//				.andReturn().getModelAndView().getViewName();
//		log.info(resultPage);
//	}
	
	
}
