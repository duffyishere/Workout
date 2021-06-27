package org.hanyang.security;

import org.hanyang.domain.CustomUser;
import org.hanyang.domain.MemberVO;
import org.hanyang.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User by UserName : "+username);
		
		MemberVO member = memberMapper.read(username);
		
		log.info("quired by member mapper : "+ member);
		
		return member == null? null : new CustomUser(member);
	}

}
