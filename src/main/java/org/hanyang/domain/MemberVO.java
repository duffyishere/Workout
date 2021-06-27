package org.hanyang.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

	private String userid;
	private String userpw;
	private Boolean enable;
	
	private Date regDate;
	private Date updateDate;
	private List<AuthVO> authList;
}
