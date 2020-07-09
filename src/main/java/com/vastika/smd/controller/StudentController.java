package com.vastika.smd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vastika.smd.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = {"/student_list" }, method = RequestMethod.GET)
	public String getAllStudentInfo(Model model) {
		model.addAttribute("users",studentService .getAllStudentInfo());
		return "studentList";
	}

}
