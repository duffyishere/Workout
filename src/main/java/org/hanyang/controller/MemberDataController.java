package org.hanyang.controller;

import java.util.List;

import org.hanyang.domain.WorkoutVO;
import org.hanyang.service.WorkoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class MemberDataController {
	 
	@Setter(onMethod_ = @Autowired)
	private WorkoutService service;

	@PostMapping(value = "/memberData", produces = "application/json")
	@ResponseBody
	public List<WorkoutVO> memberData(String userID) {
		
		log.info(userID);
		
		List<WorkoutVO> vo = service.readWithUserID(userID);
		
		return vo;
	}
}
