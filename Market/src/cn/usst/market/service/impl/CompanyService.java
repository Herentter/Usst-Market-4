package cn.usst.market.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.CompanyMapper;
import cn.usst.market.po.CapacityInfo;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyProduct;
import cn.usst.market.po.CompanyStrategy;
import cn.usst.market.po.Duty;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.po.StrategyInfo;
import cn.usst.market.po.TeacherQueryVo;

@Service("companyService")
public class CompanyService implements cn.usst.market.service.CompanyService {
	@Autowired
	private CompanyMapper companyMapper;

	@Override
	public void insert(Company record) {
		companyMapper.insert(record);
	}

	@Override
	public Company findCompanyByCondition(Company record) {
		
		return companyMapper.findCompanyByCondition(record);
	}

	@Override
	public Company findCompanyById(Company record) {

		return companyMapper.findCompanyById(record);
	}

	@Override
	public void updateCompanyName(Company record) {
		companyMapper.updateCompanyName(record);
		
	}

	@Override
	public List<Company> showCompanyByCompetitionId(Integer id) {
		return companyMapper.showCompanyByCompetitionId(id);
	}



	@Override
	public List<String> countStrategyTitle() {
		return companyMapper.countStrategyTitle();
	}

	@Override
	public List<StrategyInfo> showStrategyInfoBytitle(String title) {
		
		return companyMapper.showStrategyInfoByTitle(title);
	}

	@Override
	public List<String> countCompanyRuleTitle() {
		// TODO Auto-generated method stub
		return companyMapper.countCompanyRuleTitle();
	}

	@Override
	public List<StrategyInfo> showCompanyRuleInfoBytitle(String title) {
		// TODO Auto-generated method stub
		return companyMapper.showCompanyRuleInfoBytitle(title);
	}

	@Override
	public List<String> countPersonalGoalTitle() {
		// TODO Auto-generated method stub
		return companyMapper.countPersonalGoalTitle();
	}

	@Override
	public List<StrategyInfo> showPersonalGoalInfoBytitle(String title) {
		// TODO Auto-generated method stub
		return companyMapper.showPersonalGoalInfoBytitle(title);
	}

	@Override
	public List<Duty> showAllPosition() {
		// TODO Auto-generated method stub
		return companyMapper.showAllPosition();
	}

	@Override
	public List<TeacherQueryVo> findCompanyList(TeacherQueryVo teacherQueryVo) throws Exception {

		return companyMapper.findCompanyList(teacherQueryVo);
	}

	@Override
	public List<TeacherQueryVo> selectCompanyByPage(TeacherQueryVo teacherQueryVo) {
		// TODO Auto-generated method stub
		return companyMapper.selectCompanyByPage(teacherQueryVo);
	}

	@Override
	public long getCompanyCount(TeacherQueryVo teacherQueryVo) {
		// TODO Auto-generated method stub
		return companyMapper.getCompanyCount(teacherQueryVo);
	}

	@Override
	public List<MarketInfo> showMarketInfo() {
		// TODO Auto-generated method stub
		return companyMapper.showMarketInfo();
	}

	@Override
	public List<CapacityInfo> showCapacityInfo() {
		// TODO Auto-generated method stub
		return companyMapper.showCapacityInfo();
	}

	@Override
	public Company checkCompanyNameExist(String name) {
		// TODO Auto-generated method stub
		return companyMapper.checkCompanyNameExist(name);
	}

	@Override
	public Company selectCompanyById(Integer id) {
		// TODO Auto-generated method stub
		return companyMapper.selectCompanyById(id);
	}

	@Override
	public void updateCompanyNameById(Integer id, String name) {
		// TODO Auto-generated method stub
		companyMapper.updateCompanyNameById(id, name);
	}



	@Override
	public CompanyStrategy selectCompanyStrategy(Integer company_id, Integer quarter) {
		// TODO Auto-generated method stub
		return companyMapper.selectCompanyStrategy(company_id, quarter) ;
	}

	@Override
	public int insertCompanyStrategy(CompanyStrategy companyStrategy) throws Exception {
		// TODO Auto-generated method stub
		return companyMapper.insertCompanyStrategy(companyStrategy);
	}

	@Override
	public void updateCompanyStrategy(CompanyStrategy companyStrategy) throws Exception {
		companyMapper.updateCompanyStrategy(companyStrategy);
		
	}

	@Override
	public void insertCompanyProduct(CompanyProduct companyProduct) {
		companyMapper.insertCompanyProduct(companyProduct);
		
	}

	@Override
	public List<CompanyProduct> selectProductByCompanyId(Integer companyId) {
		// TODO Auto-generated method stub
		return companyMapper.selectProductByCompanyId(companyId);
	}

	@Override
	public void deleteProductById(Integer id) {
		// TODO Auto-generated method stub
		companyMapper.deleteProductById(id);
	}

	@Override
	public CompanyProduct selectProductByProductId(Integer id) {
		// TODO Auto-generated method stub
		return companyMapper.selectProductByProductId(id);
	}

	@Override
	public List<ProductInfo> showProductDetailByTitle(String title) {
		// TODO Auto-generated method stub
		return companyMapper.showProductDetailByTitle(title);
	}

	@Override
	public List<String> countProductInfoTitle() {
		// TODO Auto-generated method stub
		return companyMapper.countProductInfoTitle();
	}

	@Override
	public List<ProductInfo> showProductInfoByTitle(String title) {
		// TODO Auto-generated method stub
		return companyMapper.showProductInfoByTitle(title);
	}

}
