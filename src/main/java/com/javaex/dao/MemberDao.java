package com.javaex.dao;

        import java.util.List;

        import org.apache.ibatis.session.SqlSession;
        import org.springframework.stereotype.Repository;

        import com.javaex.vo.MemberVo;

@Repository
public class MemberDao {

    private final SqlSession sqlSession;

    public MemberDao(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }
    // 멤버_1> 회원가입
    public int insertMember(MemberVo memberVo) {
        System.out.println("MemberDao > insertMember()");

        int count = sqlSession.insert("member.insertMember", memberVo);
        System.out.println(count + " 명의 회원이 추가되었습니다.");
        return count;
    }


    // 멤버_2> 로그인 위해 멤버 전체 리스트 가져오기
    public List<MemberVo> getMember() {
        System.out.println("MemberDao > getMember()");

        List<MemberVo> memberList = sqlSession.selectOne("member.getMember");

        return memberList;
    }

    
    // 멤버_3> 로그인 후 회원정보 가져와서 세션에 저장하기
    public MemberVo selectmember(MemberVo MemberVo) {
        System.out.println("MemberDao > selectmember()");

        return sqlSession.selectOne("member.selectmember", MemberVo);
    }

    

}