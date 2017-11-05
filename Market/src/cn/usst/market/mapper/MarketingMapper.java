package cn.usst.market.mapper;

import cn.usst.market.po.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 陈立阳 on 2017/10/15.
 */
public interface MarketingMapper {
    //获取根据竞赛ID公司名称查找

    /**
     * selectByCompetitionId
     *
     * @param competitionId
     * @return
     */
    List<BrandOfRival> selectByCompetitionId(int competitionId);

    //根据组件编号查询

    /**
     * selectProductDetail
     *
     * @param detailId
     * @return
     */
    String selectProductDetail(int detailId);

    //获取根据公司ID和公司名称查找

    /**
     * selectProductDetail1
     *
     * @param competitionId
     * @param companyName
     * @return
     */
    List<BrandOfRival> selectProductDetail1(@Param("comId") int competitionId, @Param("comName") String companyName);
    //根据公司ID和季度查询广告

    /**
     * selectProductByCompanyIdAndQuarter
     *
     * @param companyId
     * @param quarter
     * @return
     */
    List<CompanyAd> selectAdByCompanyIdAndQuarter(@Param("comId") int companyId, @Param("quarter") int quarter);

    //根据产品编号和广告名称查找广告

    /**
     * selectAdByProductIdAndAdName
     *
     * @param productId
     * @param adName
     * @return
     */
    AdPojo selectAdByProductIdAndAdName(@Param("proId") int productId, @Param("adName") String adName);

    //查找广告详情

    /**
     * selectAdDetailById
     *
     * @param id
     * @return
     */
    String selectAdDetailById(int id);

    /**
     * selectMarketShareByCompetitionId
     *
     * @param competitionId
     * @return
     */
    List<MarketShare> selectMarketShareByCompetitionId(int competitionId);

    /**
     * selectCompanyName
     *
     * @param companyId
     * @return
     */
    String selectCompanyName(int companyId);

    /**
     * selectProductName
     *
     * @param productId
     * @return
     */
    String selectProductName(int productId);

    /**
     * selectProductName1
     *
     * @param companyId
     * @param productId
     * @return
     */
    String selectProductName1(int companyId, int productId);

    /**
     * selectProductPrice
     *
     * @param competitionId
     * @return
     */
    List<ProductPrice> selectProductPrice(int competitionId);

    /**
     * selectCostOfProduction
     *
     * @param companyId
     * @return
     */
    List<CostOfProduction> selectCostOfProduction(int companyId);

    /**
     * selectAdDetailByCompetitionId
     *
     * @param competitionId
     * @return
     */
    List<AdDetail> selectAdDetailByCompetitionId(int competitionId);

    /**
     * selectMediaInfo
     *
     * @return
     */
    List<MediaInfo> selectMediaInfo();

    /**
     * selectMainMedia
     *
     * @param companyId
     * @return
     */
    List<MainMedia> selectMainMedia(int companyId);

    /**
     * selectAllAdInfo
     *
     * @param companyId
     * @param quarter
     * @return
     */
    List<CheckResult> selectAllAdInfo(int companyId, int quarter);

    /**
     * selectBrandProfitByCompanyId
     *
     * @param companyId
     * @param quarter
     * @return
     */
    List<Profit> selectBrandProfitByCompanyId(int companyId, int quarter);

    /**
     * selectPriceAndSale
     *
     * @param companyId
     * @param quarter
     * @return
     */
    List<PriceSale> selectPriceAndSale(int companyId, int quarter);

    /**
     * selectProductPrice1
     *
     * @param productId
     * @param quarter
     * @return
     */
    String selectProductPrice1(int productId, int quarter);

    /**
     * selectNumOfMediaAd
     *
     * @param productId
     * @param quarter
     * @return
     */
    List<MediaAdNum> selectNumOfMediaAd(int productId, int quarter);

    /**
     * selectMediaCostByMediaId
     *
     * @param mediaId
     * @return
     */
    int selectMediaCostByMediaId(int mediaId);

    /**
     * selectPostOffice
     *
     * @param productId
     * @param quarter
     * @return
     */
    String selectPostOffice(int productId, int quarter);

	int selectCompetitionIdByCompanyId(int companyId);
}
