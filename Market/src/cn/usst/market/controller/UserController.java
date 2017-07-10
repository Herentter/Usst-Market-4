package cn.usst.market.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.Admin;
import cn.usst.market.po.Group;
import cn.usst.market.po.Page;
import cn.usst.market.po.Teacher;
import cn.usst.market.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	/**
	 * 添加用户
	 * 
	 * @param request
	 * @return
	 * @throws Exception
	 * @throws IllegalAccessException
	 */
	@RequestMapping("/addUser.do")
	public ModelAndView addUser(HttpServletRequest request) throws Exception {

		// 封装教师信息
		Map<String, String> teacherMap = new HashMap<String, String>();
		teacherMap.put("id", request.getParameter("user_id"));
		teacherMap.put("name", request.getParameter("user_name"));
		teacherMap.put("email", request.getParameter("user_email"));
		teacherMap.put("password", request.getParameter("user_pwd"));
		teacherMap.put("org", request.getParameter("user_org"));
		teacherMap.put("position", request.getParameter("user_position"));
		teacherMap.put("phone", request.getParameter("user_phone"));
		teacherMap.put("address", request.getParameter("user_address"));
		teacherMap.put("postcode", request.getParameter("user_postcode"));
		teacherMap.put("picture", request.getParameter("user_picture"));
		teacherMap.put("country", request.getParameter("user_country"));
		teacherMap.put("city", request.getParameter("user_city"));

		// 封装管理员信息
		Map<String, String> adminMap = new HashMap<String, String>();
		adminMap.put("id", request.getParameter("user_id"));
		adminMap.put("username", request.getParameter("user_name"));
		adminMap.put("email", request.getParameter("user_email"));
		adminMap.put("password", request.getParameter("user_pwd"));
		adminMap.put("phone", request.getParameter("user_phone"));

		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();

		// 获取用户类型
		String user_type = request.getParameter("user_type");
		if (user_type.equals("admin")) {
			Admin admin = new Admin();
			BeanUtils.populate(admin, adminMap);
			String result = userService.addAdmin(admin);
			if (result.contains("success")) {
				modelAndView.addObject("success", result);
				modelAndView.setViewName("user-query");
			} else {
				modelAndView.addObject("failed", result);
				modelAndView.setViewName("failed");
			}
		} else {
			Teacher teacher = new Teacher();
			BeanUtils.populate(teacher, teacherMap);
			String result = userService.addTeacher(teacher);
			if (result.contains("success")) {
				modelAndView.addObject("success", result);
				modelAndView.setViewName("user-query");
			} else {
				modelAndView.addObject("failed", result);
				modelAndView.setViewName("failed");
			}
		}
		return modelAndView;
	}

	@RequestMapping("/queryUser.do")
	public ModelAndView queryUser(HttpServletRequest request) {

		// 获取页面参数,分页查询的用户的类型和每页要显示的记录数
		String type = request.getParameter("select_type");
		String countStr = request.getParameter("count");
		int count = Integer.parseInt(countStr);

		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 判断查询的用户类型
		if (type.equals("admin")) {
			// 第一次执行时当前页面为1
			String curPage = request.getParameter("pageIndex");
			if (curPage == null || "".equals(curPage.toString().trim())) {
				curPage = "1";
			}
			int currentPage = Integer.parseInt(curPage);
			// 初始化一个封装页面的值
			Page<Admin> pageAdmin = new Page<Admin>();

			// 获取页面总记录数
			pageAdmin.setTotalCount(userService.getTotalCount());
			int totalCount = pageAdmin.getTotalCount();

			// 获取每页要显示的记录数
			pageAdmin.setPageCount(count);
			int pageCount = pageAdmin.getPageCount();

			// 计算总页数
			if (totalCount % pageCount == 0) {
				pageAdmin.setTotalPage(totalCount / pageCount);
			} else {
				pageAdmin.setTotalPage(totalCount / pageCount + 1);
			}

			// 当前为第一页的时候若再点击上一页，当前页会变成0；同理当为最后一页的时候同样会出现问题
			if (currentPage < 1) {
				currentPage = 1;
			}
			if (currentPage > pageAdmin.getTotalPage()) {
				currentPage = pageAdmin.getTotalPage();
			}

			// 设置当前页
			pageAdmin.setCurrentPage(currentPage);

			// 求出起始索引
			int index = (currentPage - 1) * pageAdmin.getPageCount();

			// 分页查询用户
			List<Admin> adminList = userService.queryAdminByPage(index, pageCount);

			// 封装查询到的 数据
			pageAdmin.setPage(adminList);

			// 返回到前台页面
			modelAndView.addObject("pageData", pageAdmin);
			modelAndView.setViewName("queryAdminByPage");
		} else {
			// 第一次执行时当前页面为1
			String curPage = request.getParameter("pageIndex");
			if (curPage == null || "".equals(curPage.toString().trim())) {
				curPage = "1";
			}
			int currentPage = Integer.parseInt(curPage);
			// 初始化一个封装页面的值
			Page<Teacher> pageTeacher = new Page<Teacher>();

			// 获取页面总记录数
			pageTeacher.setTotalCount(userService.getTotalCount1());
			int totalCount = pageTeacher.getTotalCount();

			// 获取每页要显示的记录数
			pageTeacher.setPageCount(count);
			int pageCount = pageTeacher.getPageCount();

			// 计算总页数
			if (totalCount % pageCount == 0) {
				pageTeacher.setTotalPage(totalCount / pageCount);
			} else {
				pageTeacher.setTotalPage(totalCount / pageCount + 1);
			}

			// 当前为第一页的时候若再点击上一页，当前页会变成0；同理当为最后一页的时候同样会出现问题
			if (currentPage < 1) {
				currentPage = 1;
			}
			if (currentPage > pageTeacher.getTotalPage()) {
				currentPage = pageTeacher.getTotalPage();
			}

			// 设置当前页
			pageTeacher.setCurrentPage(currentPage);

			// 求出起始索引
			int index = (currentPage - 1) * pageTeacher.getPageCount();

			// 分页查询用户
			List<Teacher> teacherList = userService.queryTeacherByPage(index, pageCount);

			// 封装查询到的 数据
			pageTeacher.setPage(teacherList);

			// 返回到前台页面
			modelAndView.addObject("pageData", pageTeacher);
			modelAndView.setViewName("queryTeacherByPage");
		}
		return modelAndView;
	}

	@SuppressWarnings("null")
	@RequestMapping("/operateUser.do")
	public ModelAndView oporateUser(HttpServletRequest request) throws Exception {
		// 获取操作的方法
		String method = request.getParameter("method");
		System.out.println(method);
		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		if (method != null || !("".equals(method.toString().trim()))) {
			if (method.equals("add")) {
				// 封装管理员信息
				Map<String, String> adminMap = new HashMap<String, String>();
				adminMap.put("id", request.getParameter("id"));
				adminMap.put("username", request.getParameter("username"));
				adminMap.put("email", request.getParameter("email"));
				adminMap.put("password", request.getParameter("password"));
				adminMap.put("phone", request.getParameter("phone"));
				Admin admin = new Admin();
				BeanUtils.populate(admin, adminMap);
				String result = userService.addAdmin(admin);
				if (result.contains("success")) {
					modelAndView.setViewName("user-query");
				} else {
					modelAndView.addObject("failed", result);
					modelAndView.setViewName("failed");
				}
			} else if (method.equals("search")) {
				String idStr = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				Admin admin = userService.selectAdminById(id);
				System.out.println(admin);
				modelAndView.setViewName("user-query");
			} else if (method.equals("update")) {
				// 获取为修改前的ID
				String idString = request.getParameter("idSession");
				int idSession = Integer.parseInt(idString);
				System.out.println(idSession);
				// 封装管理员信息
				Map<String, String> adminMap = new HashMap<String, String>();
				adminMap.put("id", request.getParameter("id"));
				adminMap.put("username", request.getParameter("username"));
				adminMap.put("email", request.getParameter("email"));
				adminMap.put("password", request.getParameter("password"));
				adminMap.put("phone", request.getParameter("phone"));
				Admin admin = new Admin();
				BeanUtils.populate(admin, adminMap);
				System.out.println(admin);
				userService.updateAdmin(admin, idSession);
				modelAndView.setViewName("user-query");
			} else if (method.equals("delete")) {
				String idStr = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				userService.deleteAdminById(id);
				modelAndView.setViewName("user-query");
			}
		} else {
			modelAndView.addObject("failed", "操作失败！");
			modelAndView.setViewName("failed");
		}
		return modelAndView;
	}

	@SuppressWarnings("null")
	@RequestMapping("/operateUser1.do")
	public ModelAndView oporateUser1(HttpServletRequest request) throws Exception {
		// 获取操作的方法
		String method = request.getParameter("method");
		System.out.println(method);
		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		if (method != null || !("".equals(method.toString().trim()))) {
			if (method.equals("add")) {
				// 封装教师信息
				Map<String, String> teacherMap = new HashMap<String, String>();
				teacherMap.put("id", request.getParameter("id"));
				teacherMap.put("name", request.getParameter("username"));
				teacherMap.put("email", request.getParameter("email"));
				teacherMap.put("password", request.getParameter("password"));
				teacherMap.put("phone", request.getParameter("phone"));
				Teacher teacher = new Teacher();
				BeanUtils.populate(teacher, teacherMap);
				String result = userService.addTeacher(teacher);
				if (result.contains("success")) {
					modelAndView.setViewName("user-query");
				} else {
					modelAndView.addObject("failed", result);
					modelAndView.setViewName("failed");
				}
			} else if (method.equals("search")) {
				String idStr = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				Teacher teacher = userService.selectTeacherById(id);
				System.out.println(teacher);
				modelAndView.setViewName("user-query");
			} else if (method.equals("update")) {
				// 封装教师信息
				Map<String, String> teacherMap = new HashMap<String, String>();
				teacherMap.put("id", request.getParameter("id"));
				teacherMap.put("name", request.getParameter("username"));
				teacherMap.put("email", request.getParameter("email"));
				teacherMap.put("password", request.getParameter("password"));
				teacherMap.put("phone", request.getParameter("phone"));
				Teacher teacher = new Teacher();
				BeanUtils.populate(teacher, teacherMap);
				System.out.println(teacher);
				userService.updateTeacher(teacher);
				modelAndView.setViewName("user-query");
			} else if (method.equals("delete")) {
				String idStr = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				userService.deleteTeacherById(id);
				modelAndView.setViewName("user-query");
			}
		} else {
			modelAndView.addObject("failed", "操作失败！");
			modelAndView.setViewName("failed");
		}
		return modelAndView;
	}

	@RequestMapping("/manageUser.do")
	public ModelAndView manageUser(HttpServletRequest request) throws Exception {
		// 获取页面参数
		String manage_id = request.getParameter("manage_id");
		String admin_id = request.getParameter("admin_id");
		String teacher_id = request.getParameter("teacher_id");
		String email = request.getParameter("user_email");
		String password = request.getParameter("user_pwd");
		// 封装参数
		Map<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("id", manage_id);
		hashMap.put("admin_id", admin_id);
		hashMap.put("teacher_id", teacher_id);
		hashMap.put("email", email);
		hashMap.put("password", password);
		Group group = new Group();
		BeanUtils.populate(group, hashMap);
		userService.addGroup(group);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("success", "操作成功!");
		modelAndView.setViewName("success");
		return modelAndView;
	}
}
