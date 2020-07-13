package com.vastika.smd.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
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
	
	@RequestMapping(value = "/forgot_password")
	public String getForgotPasswordForm(Model model) {
		return "forgotPassword";
	}
	
	@PostMapping("/password_reset")
	public String forgotPassword(@RequestParam String email, 
			@RequestParam String newPassword, @RequestParam String confirmPassword,
			Model model) {
		boolean isPresent = false, isEqual = false;
		Student student = studentService.getStudentByEmail(email);
		if(student != null) {
			isPresent = true;
			if(!newPassword.isEmpty() && !confirmPassword.isEmpty() && newPassword.equals(confirmPassword)) {
				student.setPassword(confirmPassword);
				studentService.updateStudentInfo(student);
				SimpleMailMessage simpleMessage = new SimpleMailMessage();
				simpleMessage.setFrom("support@help.com");
				simpleMessage.setTo(email);
				simpleMessage.setSubject("Password Reset Request");
				simpleMessage.setText("Congratulations!!!" + 
										"\nYour password has been reset. Your new password is: "+ newPassword  + 
										" and username is: "+ student.getUserName()+ 
										"\n\nThank you. \n" + "Support Team.");
				studentService.sendMail(simpleMessage);
				isEqual = true;
			}
		}
		
		if(isPresent && isEqual) {
			model.addAttribute("message", "password updated for user associated with " + email);
		}else {
			model.addAttribute("message", "User associated with " + email + " doesnt exist or password doesnt match.");
		}
		
		return "login";
	}
}