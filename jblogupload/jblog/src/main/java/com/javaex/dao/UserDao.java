package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	/*회원정보 저장: 회원가입시*/
	public int insertUserVo(UserVo userVo) {
		sqlSession.insert("user.insert", userVo);
		return userVo.getUserNo(); //안해줘도 되나 명시적으로 해줌-->원리 알아둘것
	}
	
	/*아이디로 회원정보 가져오기*/
	public UserVo selectUserVo(String id) {
		return sqlSession.selectOne("user.selectUserById", id);
	}
	
	/*로그인*/
	public UserVo selectUserVo(UserVo userVo) {
		return sqlSession.selectOne("user.selectUserForLogin", userVo);
	}
	
	/*아이디로 userNo 가져오기*/
	public int selectUserNoById(String id) {
		return sqlSession.selectOne("selectUserNoById", id);
	}
}
