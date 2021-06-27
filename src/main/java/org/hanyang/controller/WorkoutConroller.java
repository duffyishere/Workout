package org.hanyang.controller;

import org.hanyang.domain.WorkoutVO;
import org.hanyang.service.WorkoutService;
import org.springframework.beans.factory.annotation.Autowired;
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
	public String pushUp(){
		
		log.info("push-up");
		
		return "/workout/push-up";
	}
	
	@GetMapping("/squat")
	public void squat() {
		
		log.info("squat");
	}
	
	@GetMapping("/sit-up")
	public String sitUp(){
		
		log.info("sit-up");
		
		return "/workout/sit-up";
	}
	
	@GetMapping("/howto")
	public void gowto() {
		
		log.info("howto");
	}
	
	@GetMapping("/insert")
	public void insert() {
		
		log.info("insert get");
	}
	
	@GetMapping("/lookUp")
	public void lookUp(String userID, Model model) {
		
		model.addAttribute("list", service.readWithUserID(userID));
		
		log.info("look up");
	}
	
	@PostMapping("/insert")
	public String insert(WorkoutVO vo, RedirectAttributes rdAttributes) {
		
		log.info("insert");
		
		service.insertData(vo);
		
		return "redirect:/";
	}
	
	@GetMapping("/test")
	public void test() {
		
	}
}
