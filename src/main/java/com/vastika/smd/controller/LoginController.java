package com.vastika.smd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.smd.model.Student;
import com.vastika.smd.service.StudentService;

@Controller
public class LoginController {

	@Autowired
	private StudentService studentService;

	@RequestMapping( "/login" )
	public String getloginPage() {
		return "login";
	}

	@PostMapping("/student_login")
	public String login(@RequestParam("userName") String username, String password, HttpSession session, Model model) {
		Student student = studentService.getStudentByUserNameAndpassword(username, password);
		if (student != null) {
			session.setAttribute("uname", username);
			session.setAttribute("student", student);
			return "redirect:/home";
		}
		model.addAttribute("msg", "Wrong username or password!!!");
		return "login";

	}

	@GetMapping("/logout")
	public String getLoginForm(Model model, HttpSession session) {
		session.invalidate();
		model.addAttribute("msg", "You are successfully logged out!!!");
		return "redirect:/home";
	}
	
	@GetMapping("/student_details")
	public String getStudentDetails(Model model, HttpSession session) {
		Student sessionStudent = (Student)session.getAttribute("student");
		model.addAttribute("student", sessionStudent);
		return "studentDetails";
	}
}