package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Student;
import com.dao.StudentMapper;

@Controller
@RequestMapping("/stu")
public class StudentController {
	@Autowired
	StudentMapper studentMapper;
	
	@RequestMapping("/list.do")
	public String list(HttpServletRequest request){
		request.setAttribute("list", studentMapper.findAll());
		return "index";
	}
	
	@RequestMapping("/del.do")
	public String del(HttpServletRequest request,Integer id){
		studentMapper.deleteByPrimaryKey(id);
		return "redirect:list.do";
	}
	
	@RequestMapping("/selbyid.do")
	public String selbyid(HttpServletRequest request,Integer id){
		request.setAttribute("s", studentMapper.selectByPrimaryKey(id));
		return "update";
	}
	
	@RequestMapping("/update.do")
	public String update(HttpServletRequest request,Student stu){
		studentMapper.updateByPrimaryKey(stu);
		return "redirect:list.do";
	}
	
	@RequestMapping("/insert.do")
	public String insert(HttpServletRequest request,Student stu){
		studentMapper.insert(stu);
		return "redirect:list.do";
		//return "redirect:../index.jsp";
		//return "redirect:"+request.getContextPath()+"/index.jsp";
	}
}









