package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostVo;

@Repository
public class HostDao {

	@Autowired
	SqlSession sqlSession;

	public HostVo selectHost(int hostNo) {
		System.out.println("UserDao > selectHost()");

		return sqlSession.selectOne("host.selectHost", hostNo);

	}

	/*
	public HostVo hostUpdate(HostVo hostVo) {
		System.out.println("HostDao > hostUpdate()");

		return sqlSession.update("host.hostUpdate", hostVo);
	}
	*/
}