package cn.usst.market.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.usst.market.po.Admin;

public interface AdminService {
	Admin adminLogin(@Param(value="email")String email, @Param(value="password")String password);

	ArrayList<Admin> selectAdminByPhone(String phone);

	void add(String content);

}
