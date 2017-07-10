package cn.usst.market.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.adminMapper;
import cn.usst.market.po.Admin;
import cn.usst.market.service.AdminService;

@Service("adminService")
public class adminServiceImpl implements AdminService {

	@Autowired
	private adminMapper adminMapper;

	@Override
	public Admin adminLogin(String email, String password) {
		// TODO Auto-generated method stub
		Admin admin2 = adminMapper.adminLogin(email, password);
		return admin2;
	}

	@Override
	public ArrayList<Admin> selectAdminByPhone(String phone) {
		// TODO Auto-generated method stub
		return adminMapper.selectAdminByPhone(phone);
	}

	@Override
	public void add(String content) {
		// TODO Auto-generated method stub
		adminMapper.add(content);
	}

}
