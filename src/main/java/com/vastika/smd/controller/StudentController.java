package com.vastika.smd.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.smd.model.Student;
import com.vastika.smd.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = {"/manage_students" }, method = RequestMethod.GET)
	public String getAllStudentInfo(Model model) {
		model.addAttribute("students", studentService.getAllStudentInfo());
		return "studentList";
	}
	
	@GetMapping("/add_student")
	public String addStudent() {
		return "addStudent";
	}
	
	@RequestMapping(value = "/save_student", method=RequestMethod.POST)
	public String saveStudent(@ModelAttribute Student student, Model model) {
		studentService.saveStudent(student);
		return "redirect:/manage_students";
	}
	
	@RequestMapping(value = "/add_student")
	public String getAddStudentForm(Model model) {
		return "addStudent";
	}
	
	@GetMapping("/student_detail")
	public String getStudentDetailPage(@RequestParam int id , Model model, HttpServletRequest request) {
		Student student = studentService.getStudentById(Integer.parseInt(request.getParameter("id")));
		model.addAttribute("student", student);
		model.addAttribute("studentAddress", student.getAddress());
		model.addAttribute("college", student.getCollegeInfo());
		model.addAttribute("collegeAddress", student.getCollegeInfo().getAddress());
		model.addAttribute("course", student.getCourse());
		return "studentInfo";
	}
	
	@RequestMapping(value = "/edit_student")
	public String getEditUserForm(@RequestParam int id, Model model) {
		Student student = studentService.getStudentById(id);
		model.addAttribute("student", student);
		model.addAttribute("studentAddress", student.getAddress());
		model.addAttribute("college", student.getCollegeInfo());
		model.addAttribute("collegeAddress", student.getCollegeInfo().getAddress());
		model.addAttribute("course", student.getCourse());
		return "editStudent";
	}
	
	@PostMapping("/update_student")
	public String UpdateUserInfo(@ModelAttribute Student student) {
		studentService.updateStudentInfo(student);
		return "redirect:/manage_students";
	}
	
	@RequestMapping(value = "/delete_student", method = RequestMethod.GET)
	public String deleteUserInfo(@RequestParam int id, HttpServletRequest request) {
		studentService.deleteStudentInfo(Integer.parseInt(request.getParameter("id")));
		return "redirect:/manage_students";
	}

}
