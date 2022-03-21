package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ItemVo;

@Repository
public class ShopDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//판매 상품 리스트
	public List<ItemVo> getItemList(){
		System.out.println("[ShopService.getItemList()]");
		
		return sqlSession.selectList("item.getItemList");
	}
	
	//판매 상품 Vo
	public ItemVo getItem(int itemNo){
		System.out.println("[ShopService.getItem()]");
		
		return sqlSession.selectOne("item.getItem", itemNo);
	}
	
	//장바구니 추가
	public int cartInsert(ItemVo itemVo){
		System.out.println("[ShopService.cartInsert()]");
		
		return sqlSession.insert("item.itemInsert", itemVo);
	}
}
