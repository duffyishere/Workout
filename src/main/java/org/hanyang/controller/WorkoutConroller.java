package org.hanyang.controller;

import org.hanyang.domain.WorkoutVO;
import org.hanyang.service.WorkoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/workout")
public class WorkoutConroller {
	
	@Setter(onMethod_ = @Autowired)
	private WorkoutService service;
	
	
	@GetMapping("/")
	public String testIndex() {
		
		log.info("index.html");
		
		return "/workout/index";
	}
	
	@GetMapping("/push-up")
	public String pushUp(Model model){
		
		log.info("push-up");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		String userName = authentication.getName();
		
		log.info("user name : "+userName);
		
		model.addAttribute("userName", userName);
		
		return "/workout/push-up";
	}
	
	@GetMapping("/squat")
	public void squat(Model model) {
		
		log.info("squat");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		String userName = authentication.getName();
		
		log.info("user name : "+userName);
		
		model.addAttribute("userName", userName);
	}
	
	@GetMapping("/sit-up")
	public String sitUp(Model model){
		
		log.info("sit-up");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		String userName = authentication.getName();
		
		log.info("user name : "+userName);
		
		model.addAttribute("userName", userName);
		
		return "/workout/sit-up";
	}
	
	@GetMapping("/lookUp")
	public void lookUp(String userID, Model model) {
		
		log.info("look up");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		String userName = authentication.getName();
		
		log.info("user name : "+userName);
		
		model.addAttribute("userName", userName);
	}
	
	@GetMapping("/howto")
	public void gowto() {
		
		log.info("howto");
	}
	
	@GetMapping("/insert")
	public void insert() {
		
		log.info("insert get");
	}
	
	@PostMapping("/insert")
	public String insert(WorkoutVO vo, RedirectAttributes rdAttributes) {
		
		log.info("insert");
		
		service.insertData(vo);
		
		return "redirect:/workout/lookUp";
	}
	
}
