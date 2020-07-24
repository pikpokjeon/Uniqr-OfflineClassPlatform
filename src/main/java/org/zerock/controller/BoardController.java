package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.AdminBoardVO;
import org.zerock.domain.AdminCommentVO;
import org.zerock.domain.upload;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/board/*",produces="text/plain;charset=UTF-8")
@AllArgsConstructor
@SessionAttributes({"member","adminboard"})
public class BoardController {
	
	private upload up;
	private BoardService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		
		model.addAttribute("list",service.getList());
		
	}

	
	
	@GetMapping("/get")
	public void get(@RequestParam("adno") Long adno, Model model) {
		log.info("/get");
		model.addAttribute("adminboard",service.get(adno));
		model.addAttribute("adcomment",service.getcomment(adno));
		
		
	}
	
	@PostMapping("/modify")
	public String modify(AdminBoardVO board, RedirectAttributes rttr) {
		if(service.modify(board)) {
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/board/list";
	}
	
	
	
	@GetMapping("/remove")
	public String remove(@RequestParam("adno") Long adno,RedirectAttributes rttr) {
		log.info("remove....."+adno);
		if(service.remove(adno)) {
			rttr.addFlashAttribute("result","sucess");
		}
		return "redirect:/board/list";
		
	}
	@GetMapping("/insert")
	public void insert() {
		
	}
	
	@PostMapping("/add")
	public String add(AdminBoardVO adminboard,MultipartHttpServletRequest request1) {
		adminboard.setAcontent(adminboard.getAcontent().replace("\r\n", "<br>"));
		
		try {
		if(request1.getFile("apicture1")!=null) {
		MultipartFile file = request1.getFile("apicture1");

		String apicture=up.uploadFileName(file);            // 경로 붙여서 리턴
			  // 경로 붙여서 리턴
	
		apicture=up.fileUpload(file, apicture);					  // 썸네일 이미지를 , 경로에다 저장
		
				  // 이미지를, 경로에다 저장
		 
		apicture=apicture.replace("C:\\Users\\User\\Desktop\\a_finalproject3\\src\\main\\webapp\\resources\\img\\","");
		

		
		adminboard.setApicture(apicture);

		}
		
		System.out.println(adminboard.getAtitle() +" : "+adminboard.getAcontent()+" : "+adminboard.getMid());
		
		service.insert(adminboard);
		Thread.sleep(6000);
		} catch (InterruptedException e) {
			
			return "redirect:/";
			
		}
		
		return "redirect:/board/list";
	}
	@PostMapping("/insertcomment")
	public String insertcomment(AdminCommentVO adcomment , MultipartHttpServletRequest request1) {
		adcomment.setAdcomment(adcomment.getAdcomment().replace("\r\n", "<br>"));
		
		try {
		if(request1.getFile("adpicture1")!=null) {
		MultipartFile file = request1.getFile("adpicture1");

		String adpicture=up.uploadFileName(file);            // 경로 붙여서 리턴
			  // 경로 붙여서 리턴
	
		adpicture=up.fileUpload(file, adpicture);					  // 썸네일 이미지를 , 경로에다 저장
		
				  // 이미지를, 경로에다 저장
		 
		adpicture=adpicture.replace("C:\\lacture\\final\\a_finalproject3\\src\\main\\webapp\\resources\\img\\","");
		

		
		adcomment.setAdpicture(adpicture);
		}
		
		System.out.println(adcomment.toString());
		
		service.insertcomment(adcomment);
		
		Thread.sleep(6000);
		
		}catch(Exception e) {
			return "redirect:/";
		}
		
		return "redirect:/board/get?adno="+adcomment.getAdno();
		
	}
	
	
}
