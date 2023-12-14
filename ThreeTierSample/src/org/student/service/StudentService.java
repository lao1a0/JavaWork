package org.student.service;

import org.student.dao.StudentDao;
import org.student.entity.Student;

//业务逻辑层，逻辑上的增删改查
public class StudentService {
	StudentDao studentDao = new StudentDao();
	public boolean addStudent(Student student)
	{
		if(!studentDao.isExist(student.getSno()))
		{
			studentDao.addStudent(student);
			return true;
		}
		else
		{
			System.out.print("此人已存在");
			return false;
		}
	}
}
