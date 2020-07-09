package com.vastika.smd.service;

import java.util.List;

import com.vastika.smd.model.Student;

public interface StudentService {

	List<Student> getAllStudentInfo();

	Student getStudentByUserNameAndpassword(String username, String password);

	void resetPassword(Student student);

}
