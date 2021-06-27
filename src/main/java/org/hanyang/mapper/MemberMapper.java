package org.hanyang.mapper;

import org.hanyang.domain.MemberVO;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberMapper {

	public MemberVO read(String userid);
}
