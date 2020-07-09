package com.vastika.smd.repository;

import java.util.List;

import com.vastika.smd.model.Student;

public interface StudentRepository {

	List<Student> getAllStudentInfo();

	Student getStudentByUserNameAndpassword(String username, String password);

	void resetPassword(Student student);
}
