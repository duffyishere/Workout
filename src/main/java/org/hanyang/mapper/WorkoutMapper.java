package org.hanyang.mapper;

import java.util.List;

import org.hanyang.domain.WorkoutVO;

public interface WorkoutMapper {

	public void insert(WorkoutVO workoutVO);
	
	public List<WorkoutVO> read(String userid);
}
