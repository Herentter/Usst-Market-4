package cn.usst.market.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.Competition;
import cn.usst.market.po.Page;
import cn.usst.market.service.CompetitionService;

@Controller
public class CompetitionController {

	@Autowired
	private CompetitionService competitionService;

	/**
	 * 生成竞赛许可证号并添加到数据库中
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/createCompetition.do")
	public ModelAndView generateLicense(HttpServletRequest request) throws Exception {

		// 获取页面提交的数据，封装到一个hashmap中
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", request.getParameter("com_id"));
		map.put("license", UUID.randomUUID().toString());
		map.put("admin_id", request.getParameter("admin_id"));
		map.put("teacher_id", request.getParameter("teacher_id"));
		map.put("number", request.getParameter("com_number"));
		map.put("team_num", request.getParameter("com_team_num"));
		map.put("name", request.getParameter("com_name"));
		map.put("quater", request.getParameter("com_quater"));
		map.put("team_max_memb", request.getParameter("com_team_max_memb"));
		map.put("address", request.getParameter("com_address"));
		map.put("date", request.getParameter("com_date"));
		map.put("validity", request.getParameter("com_validity"));

		// 自定义类型转换
		try {
			ConvertUtils.register(new Converter() {

				@SuppressWarnings("rawtypes")
				@Override
				public Object convert(Class type, Object value) {
					// TODO Auto-generated method stub
					if (type != Date.class) {
						return null;
					}
					if ("".equals(value.toString().trim()) || value == null) {
						return null;
					}
					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
					Date date = null;
					try {
						date = dateFormat.parse((String) value);
					} catch (Exception e) {
						throw new RuntimeException(e);
					}
					return date;
				}
			}, Date.class);

			// 开始进行数据转换和二次封装
			Competition competition = new Competition();
			BeanUtils.populate(competition, map);
			// 执行业务方法
			ModelAndView modelAndView = new ModelAndView();
			String result = competitionService.createCompetition(competition);
			if (result.contains("success")) {
				modelAndView.addObject("success", result);
				modelAndView.setViewName("competition-query");
			} else if (result.contains("failed")) {
				modelAndView.addObject("failed", result);
				modelAndView.setViewName("failed");
			}
			return modelAndView;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
	}

	@RequestMapping("/queryCompetition.do")
	public ModelAndView queryUser(HttpServletRequest request) {

		// 获取页面参数,分页查询的用户的类型和每页要显示的记录数
		String countStr = request.getParameter("count");
		int count = Integer.parseInt(countStr);

		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 第一次执行时当前页面为1
		String curPage = request.getParameter("pageIndex");
		if (curPage == null || "".equals(curPage.toString().trim())) {
			curPage = "1";
		}
		int currentPage = Integer.parseInt(curPage);
		// 初始化一个封装页面的值
		Page<Competition> pageCom = new Page<Competition>();

		// 获取页面总记录数
		pageCom.setTotalCount(competitionService.getTotalCount());
		int totalCount = pageCom.getTotalCount();

		// 获取每页要显示的记录数
		pageCom.setPageCount(count);
		int pageCount = pageCom.getPageCount();

		// 计算总页数
		if (totalCount % pageCount == 0) {
			pageCom.setTotalPage(totalCount / pageCount);
		} else {
			pageCom.setTotalPage(totalCount / pageCount + 1);
		}

		// 当前为第一页的时候若再点击上一页，当前页会变成0；同理当为最后一页的时候同样会出现问题
		if (currentPage < 1) {
			currentPage = 1;
		}
		if (currentPage > pageCom.getTotalPage()) {
			currentPage = pageCom.getTotalPage();
		}

		// 设置当前页
		pageCom.setCurrentPage(currentPage);

		// 求出起始索引
		int index = (currentPage - 1) * pageCom.getPageCount();

		// 分页查询用户
		List<Competition> comList = competitionService.queryCompetitionByPage(index, pageCount);

		// 封装查询到的 数据
		pageCom.setPage(comList);

		// 返回到前台页面
		modelAndView.addObject("pageData", pageCom);
		modelAndView.setViewName("competition-info");

		return modelAndView;
	}

	@SuppressWarnings("null")
	@RequestMapping("/operateCompetition.do")
	public ModelAndView oporateUser(HttpServletRequest request) throws Exception {
		// 获取操作的方法
		String method = request.getParameter("method");
		System.out.println(method);
		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		if (method != null || !("".equals(method.toString().trim()))) {
			if (method.equals("add")) {
				// 封装管理员信息
				Map<String, String> comMap = new HashMap<String, String>();
				comMap.put("id", request.getParameter("id"));
				comMap.put("number", request.getParameter("number"));
				comMap.put("team_num", request.getParameter("team_num"));
				comMap.put("name", request.getParameter("name"));
				comMap.put("address", request.getParameter("address"));
				Competition com = new Competition();
				BeanUtils.populate(com, comMap);
				String result = competitionService.createCompetition(com);
				if (result.contains("success")) {
					modelAndView.setViewName("competition-query");
				} else if (result.contains("failed")) {
					modelAndView.addObject("failed", result);
					modelAndView.setViewName("failed");
				}
			} else if (method.equals("search")) {
				String idStr = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				Competition com = competitionService.selectCompetitionById(id);
				System.out.println(com);
				modelAndView.setViewName("competition-query");
			} else if (method.equals("update")) {
				// 获取为修改前的ID
				String idString = request.getParameter("idSession");
				int idSession = Integer.parseInt(idString);
				System.out.println(idSession);
				// 封装管理员信息
				Map<String, String> comMap = new HashMap<String, String>();
				comMap.put("id", request.getParameter("id"));
				comMap.put("number", request.getParameter("number"));
				comMap.put("team_num", request.getParameter("team_num"));
				comMap.put("name", request.getParameter("name"));
				comMap.put("address", request.getParameter("address"));
				Competition com = new Competition();
				BeanUtils.populate(com, comMap);
				System.out.println(com);
				competitionService.updateCompetition(com, idSession);
				modelAndView.setViewName("competition-query");
			} else if (method.equals("delete")) {
				String idStr = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				competitionService.deleteCompetitionById(id);
				modelAndView.setViewName("competition-query");
			}
		} else {
			modelAndView.addObject("failed", "操作失败！");
			modelAndView.setViewName("failed");
		}
		return modelAndView;
	}
}
