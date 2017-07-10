package cn.usst.market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.usst.market.po.ProductInfo;

public interface productInfoMapper {

	public List<ProductInfo> selectAllProductInfo();

	public int getProInfoTotalCount();

	public List<ProductInfo> queryProductInfoByPage(int index, int pageCount);

	public void updateProductInfo(@Param("proInfo") ProductInfo proInfo, @Param("id") int idSession);

	public void deleteProductInfoById(int id);

}
