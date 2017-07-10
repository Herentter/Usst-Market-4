package cn.usst.market.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.productInfoMapper;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.service.ProductInfoService;

@Service("productInfoService")
public class ProductInfoServiceImpl implements ProductInfoService {
	@Autowired
	private productInfoMapper productInfoMapper;

	@Override
	public List<ProductInfo> selectAllProductInfo() {
		// TODO Auto-generated method stub
		return productInfoMapper.selectAllProductInfo();
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return productInfoMapper.getProInfoTotalCount();
	}

	@Override
	public List<ProductInfo> queryProductInfoByPage(int index, int pageCount) {
		// TODO Auto-generated method stub
		return productInfoMapper.queryProductInfoByPage(index, pageCount);
	}

	@Override
	public void updateProductInfo(ProductInfo proInfo, int idSession) {
		// TODO Auto-generated method stub
		productInfoMapper.updateProductInfo(proInfo, idSession);
	}

	@Override
	public void deleteProductInfoById(int id) {
		// TODO Auto-generated method stub
		productInfoMapper.deleteProductInfoById(id);
	}
}
