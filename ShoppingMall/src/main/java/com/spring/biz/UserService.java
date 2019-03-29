package com.spring.biz;

import java.util.List;

import com.spring.biz.vo.UserVO;

public interface UserService {
	
	//회원 조회
	public List<UserVO> selectUserIdList(UserVO vo);
	public int insertUser(UserVO vo);
}
