package org.zerock.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.zerock.domain.SellboardVO;
import org.zerock.service.SellboardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@SessionAttributes("member")
public class HomeController {
	
	private SellboardService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("home");
		
		List<SellboardVO> master = service.topstream();
		List<SellboardVO> topstreamlist = new ArrayList<SellboardVO>(); 
		List<SellboardVO> topstreamlist1 = new ArrayList<SellboardVO>(); 
		
		
		for(int i=0; i<master.size(); i++) {
			if(i <master.size()/2) {
				topstreamlist.add(i, master.get(i));
			}
			else {
				topstreamlist1.add(i-master.size()/2, master.get(i));
			}
		}
		
		
	
		
				
		  model.addAttribute("topstreamlist",topstreamlist);
		  model.addAttribute("topstreamlist1",topstreamlist1);
		  
//		  model.addAttribute("getlist",service.getlist());
//		  model.addAttribute("topselllist",service.topsell());
//	
		  return "home";
	}
	
}
