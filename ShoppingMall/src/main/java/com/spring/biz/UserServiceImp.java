package com.spring.biz;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.UserVO;

@Service("UserService")
public class UserServiceImp implements UserService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//회원 조회
	public List<UserVO> selectUserIdList(UserVO vo) {
		return sqlSession.selectList("selectUserIdList" , vo);
	}
	//회원 가입
	@Override
	public int insertUser(UserVO vo) {
		return sqlSession.insert("insertUser", vo);
	}
	//회원 로그인
	@Override
	public UserVO loginUser(UserVO vo) {
		return sqlSession.selectOne("selectLogin" , vo);
	}
	//회원 아이디 체크
	@Override
	public UserVO idChcek(UserVO vo) {
		return sqlSession.selectOne("selectIdChcek", vo);
	}
}
