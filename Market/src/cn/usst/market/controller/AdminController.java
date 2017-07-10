package cn.usst.market.controller;


import java.util.ArrayList;

//import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.Admin;
import cn.usst.market.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	/**
	 * 管理员登录
	 * 
	 * @return
	 */
	@RequestMapping("/Login.do")
	public ModelAndView adminLogin(HttpServletRequest request) throws Exception {
		// 获取页面参数
		String role = request.getParameter("role");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(role);
		System.out.println(email);
		System.out.println(password);
		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 开始登录
		if (role.equals("admin")) {
			// 执行业务逻辑
			Admin loginAdmin = adminService.adminLogin(email, password);
			if (loginAdmin != null) {
				request.getSession().setAttribute("loginAdmin", loginAdmin);
				modelAndView.setViewName("index");
			} else {
				modelAndView.addObject("error", "对不起,该用户不存在！！！");
				modelAndView.setViewName("login");
			}
		} else {
			modelAndView.addObject("error", "对不起,该用户不存在！！！");
			modelAndView.setViewName("login");
		}
		return modelAndView;

	}

	@ResponseBody
	@RequestMapping(value = "/test1.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public ArrayList<Admin> getAdminTest(String phone) {
		System.out.println(phone);
		ArrayList<Admin> adminList=adminService.selectAdminByPhone(phone);
		return adminList;
	}
	
	@RequestMapping("/test2.do")
	public ModelAndView demo(HttpServletRequest request){
		String content = request.getParameter("content");
		adminService.add(content);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("admin");
		return modelAndView;
	}

}
