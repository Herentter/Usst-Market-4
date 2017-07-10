package cn.usst.market.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.userMapper;
import cn.usst.market.po.Admin;
import cn.usst.market.po.Group;
import cn.usst.market.po.Teacher;
import cn.usst.market.service.UserService;

@Service("userService")
public class userServiceImpl implements UserService {

	@Autowired
	private userMapper userMapper;

	@Override
	public String addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		userMapper.addAdmin(admin);
		Admin admin2 = userMapper.selectAdminById(admin.getId());
		if (admin2 != null) {
			return "success,恭喜你，竞赛初始信息创建成功！！！";
		}
		return "failed,很抱歉，竞赛创建失败！！！";
	}

	@Override
	public String addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		userMapper.addTeacher(teacher);
		Teacher teacher2 = userMapper.selectTeacherById(teacher.getId());
		if (teacher2 != null) {
			return "success,恭喜你，竞赛初始信息创建成功！！！";
		}
		return "failed,很抱歉，竞赛创建失败！！！";
	}

	@Override
	public Admin selectAdminById(int id) {
		// TODO Auto-generated method stub
		Admin admin = userMapper.selectAdminById(id);
		return admin;
	}

	@Override
	public Teacher selectTeacherById(int id) {
		// TODO Auto-generated method stub
		Teacher teacher = userMapper.selectTeacherById(id);
		return teacher;
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return userMapper.getAdminTotalCount();
	}

	@Override
	public List<Admin> queryAdminByPage(int index, int pageCount) {
		// TODO Auto-generated method stub
		List<Admin> adminList = userMapper.queryAdminByPage(index, pageCount);
		return adminList;
	}

	@Override
	public void updateAdmin(Admin admin, int idSession) {
		// TODO Auto-generated method stub
		userMapper.updateAdmin(admin, idSession);
	}

	@Override
	public void deleteAdminById(int id) {
		// TODO Auto-generated method stub
		userMapper.deleteAdminById(id);
	}

	@Override
	public void addGroup(Group group) {
		// TODO Auto-generated method stub
		userMapper.addGroup(group);
	}

	@Override
	public List<Teacher> queryTeacherByPage(int index, int pageCount) {
		// TODO Auto-generated method stub
		List<Teacher> teacherList = userMapper.queryTeacherByPage(index, pageCount);
		return teacherList;
	}

	@Override
	public int getTotalCount1() {
		// TODO Auto-generated method stub
		return userMapper.getTeacherTotalCount();
	}

	@Override
	public void updateTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		userMapper.updateTeacher(teacher);
	}

	@Override
	public void deleteTeacherById(int id) {
		// TODO Auto-generated method stub
		userMapper.deleteTeacherById(id);
	}

}
