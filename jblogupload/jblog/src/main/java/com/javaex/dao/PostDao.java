package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PostVo;

@Repository
public class PostDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*포스트 글저장*/
	public int insertPost(PostVo postVo) {
		return sqlSession.insert("post.insertPost" , postVo);
	}
	
	/*특정 회원의 선택한 카테고리의 포스트 리스트 가져오기*/
	public List<PostVo> selectList(int userNo, int crtCateNo) {
		Map<String, Object> postMap = new HashMap<String, Object>();
		postMap.put("userNo", userNo);
		postMap.put("cateNo", crtCateNo);
		return sqlSession.selectList("post.selectList" , postMap);
	}

	/*선택한 포스트 가져오기*/
	public PostVo selectPost(int postNo) {
		return sqlSession.selectOne("post.selectPost" , postNo);
	}
}
