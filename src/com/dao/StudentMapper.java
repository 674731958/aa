package com.dao;
import java.util.List;

import com.bean.Student;
public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);
    int insert(Student record);
    int insertSelective(Student record);
    Student selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Student record);
    int updateByPrimaryKey(Student record);
    List<Student> findAll();
}