package org.hanyang.service;

import java.util.List;

import org.hanyang.domain.WorkoutVO;

public interface WorkoutService {

	public List<WorkoutVO> readWithUserID(String userID);
	
	public void insertData(WorkoutVO workoutVO);
}
