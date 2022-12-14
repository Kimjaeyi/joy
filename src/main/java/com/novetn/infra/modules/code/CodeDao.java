package com.novetn.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	 
	private static String namespace = "com.novetn.infra.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo) { 
		List<Code> list = sqlSession.selectList("com.novetn.infra.modules.code.CodeMapper.selectList", vo);
		return list; 
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Code dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Code dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(CodeVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public Code selectOne(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int selectOneCount(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ 
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); 
	}
	
	public List<Code> codeGroupNameAdd(CodeVo vo){ 
		return sqlSession.selectList(namespace + ".codeGroupNameAdd", vo); 
	} 
	
//	public List<Code> selectListWithoutPaging() {
//		return sqlSession.selectList(namespace + ".selectListWithoutPaging", "");
//	}
	
}
