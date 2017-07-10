package cn.usst.market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.usst.market.po.Admin;

@Controller
public class TestController {

	@RequestMapping("/autoComplete.do")
	public String autoComplete(String name) {
		String result = "张三-10001-22";
		return result;
	}

	@RequestMapping("/autoComplete1.do")
	public Admin autoComplete1(String name) {
		Admin admin = new Admin();
		return admin;
	}
}
