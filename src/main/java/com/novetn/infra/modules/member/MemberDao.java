package com.novetn.infra.modules.member;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

//	@Autowired와 비슷
	@Inject
	
//	어떤 DB와의 Connection인지 이름을 정해줌
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.novetn.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo) { 
		List<Member> list = sqlSession.selectList("com.novetn.infra.modules.member.MemberMapper.selectList", vo);
		return list; 
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Member dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(MemberVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int selectOneIdCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".idCheck", dto);
	}
	
	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	public int infochange(Member dto) {
		return sqlSession.update(namespace + ".infochange", dto);
	}
	
	public int unreg(Member dto) { 
		return sqlSession.update(namespace + ".unreg", dto); 
	}
	
	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	public Member snsLoginCheck(Member dto) {
	    return sqlSession.selectOne(namespace + ".snsLoginCheck", dto);
	}
	
	public int naverInst(Member dto) {
		return sqlSession.insert(namespace + ".naverInst", dto);
	}
	
	public int kakaoInst(Member dto) {
		return sqlSession.insert(namespace + ".kakaoInst", dto);
	}
	
}

