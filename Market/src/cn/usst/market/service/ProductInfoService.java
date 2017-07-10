package cn.usst.market.service;

import java.util.List;

import cn.usst.market.po.ProductInfo;

public interface ProductInfoService {

	public List<ProductInfo> selectAllProductInfo();

	public int getTotalCount();

	public List<ProductInfo> queryProductInfoByPage(int index, int pageCount);

	public void updateProductInfo(ProductInfo proInfo, int idSession);

	public void deleteProductInfoById(int id);

}
