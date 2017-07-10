package cn.usst.market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.usst.market.po.Admin;
import cn.usst.market.po.Group;
import cn.usst.market.po.Teacher;

public interface userMapper {

	public void addAdmin(Admin admin);

	public void addTeacher(Teacher teacher);

	public Admin selectAdminById(int id);

	public Teacher selectTeacherById(int id);

	public int getAdminTotalCount();

	public List<Admin> queryAdminByPage(int index, int pageCount);

	public void updateAdmin(@Param("admin") Admin admin, @Param("idSession") int idSession);

	public void deleteAdminById(int id);

	public void addGroup(Group group);

	public List<Teacher> queryTeacherByPage(int index, int pageCount);

	public int getTeacherTotalCount();

	public void updateTeacher(Teacher teacher);

	public void deleteTeacherById(int id);

}
