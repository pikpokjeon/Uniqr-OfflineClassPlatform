package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/page/*",produces="text/plain;charset=UTF-8")
@AllArgsConstructor
public class pageController {
	
	@RequestMapping("/home")
	public void home() {
		
	}
	
	
}
