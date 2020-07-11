package com.vastika.smd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vastika.smd.model.Student;
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
	
	@GetMapping("/add_student")
	public String addStudent() {
		return "addStudent";
	}
	
	@RequestMapping(value = "/save_student", method=RequestMethod.POST)
	public String saveStudent(@ModelAttribute Student student, Model model) {
		studentService.saveStudent(student);
		return "studentList";
	}

}
