package org.hanyang.mapper;

import org.hanyang.domain.WorkoutVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class WorkoutMapperTests {

	@Setter(onMethod_ = @Autowired)
	private WorkoutMapper mapper;
	
	@Test
	public void testRead() {
		
		mapper.read("user2").forEach(log::info);;
	}
	
	@Test
	public void testInsert() {
		
		WorkoutVO vo = new WorkoutVO();
		vo.setUserid("user2");
		vo.setWorkoutName("push-up");
		vo.setWorkoutTime("1:00");
		vo.setCalorie(154);
		
		mapper.insert(vo);
	}
}
