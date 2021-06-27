package org.hanyang.domain;

import java.util.Date;

import lombok.Data;

@Data
public class WorkoutVO {

	private String userid;
	private String workoutName;
	private String workoutTime;
	private Date workoutDate;
	private int calorie;
}
