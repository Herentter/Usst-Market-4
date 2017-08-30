package cn.usst.market.mapper;

import java.util.List;

import cn.usst.market.po.CapacityInfo;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyProduct;
import cn.usst.market.po.CompanyStrategy;
import cn.usst.market.po.Duty;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.po.StrategyInfo;
import cn.usst.market.po.TeacherQueryVo;


public interface CompanyMapper {

    int insert(Company record);

    Company selectByPrimaryKey(Integer id);
    
    Company findCompanyByCondition(Company record);
    
    Company findCompanyById(Company record);
    

    
    void updateCompanyName(Company record);
    
    List<Company> showCompanyByCompetitionId(Integer id);

    List<String> countStrategyTitle();
    
    List<StrategyInfo> showStrategyInfoByTitle(String title);
    
    List<String> countProductInfoTitle();
    
    List<ProductInfo> showProductInfoByTitle(String title);
    
    List<String> countCompanyRuleTitle();
    
    List<StrategyInfo> showCompanyRuleInfoBytitle(String title);
    
    List<String> countPersonalGoalTitle();
    
    List<StrategyInfo> showPersonalGoalInfoBytitle(String title);
    
    List<Duty> showAllPosition();
    
    List<MarketInfo> showMarketInfo();
    
    List<CapacityInfo> showCapacityInfo();
    
    //Guan
    
    public List<TeacherQueryVo> findCompanyList(TeacherQueryVo teacherQueryVo)throws Exception;

	/*public Company findCompanyById(int id)throws Exception;*/
	
	public List<Company> findCompanyListByCompetitionId(int id)throws Exception;
	
	public void updateByPrimaryKey(Company company)throws Exception;
	
	public void deleteByPrimaryKey(Integer id)throws Exception;
	
	
	public List<TeacherQueryVo> selectCompanyByPage(TeacherQueryVo teacherQueryVo);
    
    public long getCompanyCount(TeacherQueryVo teacherQueryVo);
    
    //zhao
    Company checkCompanyNameExist(String name);
    
    Company selectCompanyById(Integer id);
    
    void updateCompanyNameById(Integer id,String name);
    
    public CompanyStrategy selectCompanyStrategy(Integer company_id,Integer quarter);

    int insertCompanyStrategy(CompanyStrategy companyStrategy)throws Exception;
       
    void updateCompanyStrategy(CompanyStrategy companyStrategy)throws Exception;
    
    void insertCompanyProduct(CompanyProduct companyProduct);
    
    public List<CompanyProduct> selectProductByCompanyId(Integer companyId);

    public void deleteProductById(Integer id);

    public CompanyProduct selectProductByProductId(Integer id);
    
    public List<ProductInfo> showProductDetailByTitle(String title);


    




}