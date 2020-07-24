package org.zerock.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.zerock.domain.SellboardVO;
import org.zerock.domain.upload;
import org.zerock.service.SellboardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/seller/*",produces="text/plain;charset=UTF-8")
@AllArgsConstructor
@SessionAttributes({"member","mid"})
public class SellBoardController {
	
	private SellboardService service;
	private upload up;		
	@GetMapping("/uploadsell")
	public void uploadsell(@RequestParam("mid")String mid,Model model) {
		
		model.addAttribute("mid",mid);
		
	}
	
	@PostMapping("/upload")
	public String upload(HttpServletRequest request, SellboardVO sellboard,MultipartHttpServletRequest request1) {
		
		try {
		//		HttpServletRequest request,
		 String schedule="";
		 String content="";
		 String target="";
		 String claim="";
		 String moc ="";
		 String mocin =""; 
		 int i=0;
		 
		System.out.println(sellboard.toString());
		 MultipartFile file = request1.getFile("sthumb");
		 MultipartFile file1 = request1.getFile("simage");
		 
		 
		String sthumb=up.uploadFileName(file);            // 경로 붙여서 리턴
		String simage=up.uploadFileName(file1);			  // 경로 붙여서 리턴
	
		String ssthumb=up.fileUpload(file, sthumb);					  // 썸네일 이미지를 , 경로에다 저장
		
		String ssimage=up.fileUpload(file1, simage);					  // 이미지를, 경로에다 저장
		 
		ssthumb=ssthumb.replace("C:\\lacture\\final\\a_finalproject3\\src\\main\\webapp\\resources\\img\\","");
		
		simage=simage.replace("C:\\lacture\\final\\a_finalproject3\\src\\main\\webapp\\resources\\img\\", "");
		
		sellboard.setSsthumb(ssthumb);
		sellboard.setSsimage(simage);
		
		System.out.println(request.getParameter("smoc1"));
 
	  do {
		 schedule +=(String)request.getParameter("sschedule"+(i+1));
		 schedule +=":";
		 i++;

		}while(request.getParameter("sschedule"+(i+1))!=null);

	    sellboard.setSschedule(schedule);
				 
		i = 0;
		 
		do {
		 content +=(String)request.getParameter("scontent"+(i+1));
		 content +=":";
		 i++;

		}while(request.getParameter("scontent"+(i+1))!=null);

		sellboard.setScontent(content);
				 
		i = 0;
				
		do {
		 target +=(String)request.getParameter("starget"+(i+1));
		 target +=":";
		 i++;
		}while(request.getParameter("starget"+(i+1))!=null);

		sellboard.setStarget(target);
				 
		i = 0;
				
		do {
		claim +=(String)request.getParameter("sclaim"+(i+1));
		claim +=":";
		i++;

		}while(request.getParameter("sclaim"+(i+1))!=null);

		sellboard.setSclaim(claim);
					 
		i = 0;
		
		do {
		 moc +=(String)request.getParameter("smoc"+(i+1));
		 moc +=":";
		 i++;

		}while(request.getParameter("smoc"+(i+1))!=null);

		sellboard.setSmoc(moc);
		 
		i = 0;
		
		do { 
		 mocin +=(String) request.getParameter("smocin"+(i+1));
		 mocin +=":" ;
		 i++;

		}while(request.getParameter("smocin"+(i+1))!=null);
		
		sellboard.setSmocin(mocin);

	    System.out.println(sellboard.toString());
	    service.insert(sellboard);
	    
	    		
	    Thread.sleep(6000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return "redirect:/";
		
	}
	
	
	@GetMapping("/selectone")
	public void selectone(@RequestParam("sno")long sno,Model model,@RequestParam("mid")String mid) {
		
		  SellboardVO sellboard = service.read(sno);

		  sellboard.setSschedulelist(Arrays.asList(sellboard.getSschedule().split(":")));
		  
		  sellboard.setScontentlist(Arrays.asList(sellboard.getScontent().split(":")));
		  
		  sellboard.setStargetlist(Arrays.asList(sellboard.getStarget().split(":")));
		  
		  sellboard.setSclaimlist(Arrays.asList(sellboard.getSclaim().split(":")));
		  
		  sellboard.setSmoclist(Arrays.asList(sellboard.getSmoc().split(":")));
		  
		  sellboard.setSmocinlist(Arrays.asList(sellboard.getSmocin().split(":")));
		  
		  model.addAttribute("sellboard",sellboard);
		 
	   
	}
	
	@GetMapping("/selectchat")
	public String selectchat() {
		
		return "selectone";
	}
	
	
	@GetMapping("/category")
	public void category(@RequestParam("scategory")String category) {
		
		System.out.println(category);
		
		
	}
	
}
