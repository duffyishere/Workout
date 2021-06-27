package org.hanyang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/sample/*", method=RequestMethod.GET)
@Log4j
public class SampleController {

	@GetMapping("/all")
	public void all() {
		
		log.info("do all,,,,,,");
	}
	
	@GetMapping("/member")
	public void user() {
		
		log.info("do user,,,,,,");
	}

	@GetMapping("/admin")
	public void admin() {
		
		log.info("do admin,,,,,,");
	}
}
