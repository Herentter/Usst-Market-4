package cn.usst.market.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.GoodsMapper;
import cn.usst.market.po.Goods;
import cn.usst.market.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;

	@Override
	public List<Goods> queryGoods() {
		// TODO Auto-generated method stub
		return goodsMapper.queryGoods();
	}

}
