package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CateVo;

@Repository
public class CateDao {

	@Autowired
	private SqlSession sqlSession;
	
	/*회원번호로 카테고리리스트 가져오기*/
	public List<CateVo> selectList(int userNo){
		return sqlSession.selectList("cate.selectList", userNo );
	}
	
	/*카테고리 기본값 저장 :회원가입시, 카테고리 추가시*/
	public int insertCate(CateVo cateVo) {
		sqlSession.insert("cate.insert", cateVo);
		return cateVo.getCateNo(); //안보내줘도 되나 명시적으로 보내졌음
	}
	
	/*특정카테고리 정보를 가져온다*/
	public CateVo selectCate(int cateNo){
		return sqlSession.selectOne("cate.selectCate", cateNo );
	}
	
	/*카테고리삭제*/
	public int deleteCate(int cateNo){
		return sqlSession.delete("cate.deleteCate", cateNo );
	}
	

}
