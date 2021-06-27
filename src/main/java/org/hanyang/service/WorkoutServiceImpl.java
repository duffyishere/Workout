package org.hanyang.service;

import java.util.List;

import org.hanyang.domain.WorkoutVO;
import org.hanyang.mapper.WorkoutMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class WorkoutServiceImpl implements WorkoutService{
	
	@Setter(onMethod_ = @Autowired)
	private WorkoutMapper workoutMapper;
	
	@Override
	public List<WorkoutVO> readWithUserID(String userID) {
		
		log.info("Read Data with UserID : "+userID);
		
		return workoutMapper.read(userID);
	}

	@Override
	public void insertData(WorkoutVO workoutVO) {
		
		log.info("Insert Data : "+workoutVO);
		
		workoutMapper.insert(workoutVO);
	}
}
