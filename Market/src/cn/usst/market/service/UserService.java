package cn.usst.market.service;

import java.util.List;

import cn.usst.market.po.Admin;
import cn.usst.market.po.Group;
import cn.usst.market.po.Teacher;

public interface UserService {

	/**
	 * 用户的增删改查
	 */

	public String addAdmin(Admin admin);

	public String addTeacher(Teacher teacher);

	public Admin selectAdminById(int id);

	public Teacher selectTeacherById(int id);

	public int getTotalCount();

	public List<Admin> queryAdminByPage(int index, int pageCount);

	public void updateAdmin(Admin admin, int idSession);

	public void deleteAdminById(int id);

	public void addGroup(Group group);

	public List<Teacher> queryTeacherByPage(int index, int pageCount);

	public int getTotalCount1();

	public void updateTeacher(Teacher teacher);

	public void deleteTeacherById(int id);

}
