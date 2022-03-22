package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.ShopDao;
import com.javaex.vo.ItemVo;

@Service
public class ShopService {

	@Autowired
	ShopDao shopDao;
	
	//get 판매 상품 리스트
	public List<ItemVo> getItemList(){
		System.out.println("[ShopService.getItemList()]");
		
		return shopDao.getItemList();
	}
	
	//카테고리 상품 리스트
	public List<ItemVo> getCategoryList(String category){
		System.out.println("[ShopService.getCategoryList()]");
		
		return shopDao.getCategoryList(category);
	}
	
	//get 판매 상품 Vo
	public ItemVo getItem(int itemNo){
		System.out.println("[ShopService.getItem()]");
		
		return shopDao.getItem(itemNo);
	}
	//get 관리자 List
	public List<ItemVo> getAdminList(int usersNo){
		System.out.println("[ShopService.getAdminList()]");
		
		return shopDao.getAdminList(usersNo);
	}
	//get 내역 리스트
	public List<ItemVo> getHistoryList(int usersNo){
		System.out.println("[ShopService.getHistoryList()]");
		
		return shopDao.getHistoryList(usersNo);
	}
	
	//상품 결제
	public int payment(ItemVo itemVo) {
		System.out.println("[ShopService.payment()]");
		
		int count = shopDao.payment(itemVo);
		shopDao.useEa(itemVo.getItemNo());
		return count;
	}
	//set 카트 담기
	public int cartInsert(ItemVo itemVo){
		System.out.println("[ShopService.itemVo()]");
		
		return shopDao.cartInsert(itemVo);
	}
	
	//판매상품 등록
	public int write(ItemVo itemVo, MultipartFile file) {
		System.out.println("[ShopService.write()]");
		
		//맥
		String saveDir = "/Users/hs/JavaStudy/workspace_project/project/webapp/assets/upload/";
		//윈도우
		//String saveDir = "C:\\javaStudy\\photo\\";
		String orgName = file.getOriginalFilename();
		String exName = orgName.substring(orgName.lastIndexOf("."));
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		String filePath = saveDir + saveName;
		// 파일 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);// 어떤 경로에 파일을 저장할건지?
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		itemVo.setPath(saveName);
		
		return shopDao.write(itemVo);
	}
	//재고 수정
	public int setea(ItemVo itemVo) {
		System.out.println("[ShopService.setea()]");
		
		return shopDao.setea(itemVo);
	}
	//상품 삭제
	public int delete(int itemNo) {
		System.out.println("[ShopService.delete()]");
		
		return shopDao.delete(itemNo);
	}

}
