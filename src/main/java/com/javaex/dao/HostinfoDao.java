package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostVo;

@Repository
public class HostinfoDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<HostVo> getList(int hostNo) {
		System.out.println("[HostinfoDao.getList()]");
		
		return sqlSession.selectList("hostinfo.getlist", hostNo);
	}
}
