package com.vastika.smd.service;

import java.util.List;

import org.springframework.mail.SimpleMailMessage;

import com.vastika.smd.model.Student;

public interface StudentService {

	List<Student> getAllStudentInfo();

	Student getStudentByUserNameAndpassword(String username, String password);

	void resetPassword(Student student);
	
	Student getStudentByEmail(String email);
	
	void updateStudentInfo(Student student);
	
	void sendMail(SimpleMailMessage simpleMessage);

}
