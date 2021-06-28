package org.hanyang.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class WorkoutVO {

	private String userid;
	private String workoutName;
	private String workoutTime;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date workoutDate;
	private int calorie;
}
