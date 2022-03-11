package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	//유저 정보수정 시 프로필사진 업데이트
	public void profileUpdate(MultipartFile file, UserVo userVo) {
		System.out.println("UserService > profileUpdate()");
		//내 컴퓨터 저장경로
		String saveDir = "/C:/javaStudy/workspace_web/project/webapp/assets/upload/";
		// 원본파일이름
		String orgName = file.getOriginalFilename();
		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));
		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		// 파일패스 생성
		String filePath = saveDir + saveName;
		// 파일 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//DB 업데이트
		userVo.setPath(saveName);
		userDao.profileUpdate(userVo);
	}
	
	
}