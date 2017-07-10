package cn.usst.market.mapper;

import java.util.ArrayList;


import cn.usst.market.po.Admin;

public interface adminMapper {
	// 管理员登录
	public Admin adminLogin(String email, String password);

	public ArrayList<Admin> selectAdminByPhone(String phone);

	public void add(String content);
}
