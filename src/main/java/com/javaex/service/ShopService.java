package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ShopDao;
import com.javaex.vo.ItemVo;

@Service
public class ShopService {

	@Autowired
	ShopDao shopDao;
	
	//판매 상품 리스트
	public List<ItemVo> getItemList(){
		System.out.println("[ShopService.getItemList()]");
		
		return shopDao.getItemList();
	}
	//판매 상품 Vo
	public ItemVo getItem(int itemNo){
		System.out.println("[ShopService.getItem()]");
		
		return shopDao.getItem(itemNo);
	}
	//판매 상품 Vo
	public int cartInsert(ItemVo itemVo){
		System.out.println("[ShopService.itemVo()]");
		
		return shopDao.cartInsert(itemVo);
	}
}
