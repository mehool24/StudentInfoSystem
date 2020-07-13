package com.vastika.smd.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.vastika.smd.model.Student;
import com.vastika.smd.repository.StudentRepository;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public List<Student> getAllStudentInfo() {
		return studentRepository.getAllStudentInfo();

	}

	@Override
	public Student getStudentByUserNameAndpassword(String username, String password) {
		return studentRepository.getStudentByUserNameAndpassword(username, password);
	}

	@Override
	public void resetPassword(Student student) {

	}

	@Override
	public Student getStudentByEmail(String email) {
		return studentRepository.getStudentByEmail(email);
	}

	@Override
	public void updateStudentInfo(Student student) {
		studentRepository.updateStudentInfo(student);
		
	}
	
	@Override
	public void sendMail(SimpleMailMessage simpleMessage) {
		studentRepository.sendMail(simpleMessage);
    
	public void saveStudent(Student student) {
		studentRepository.saveStudent(student);		
	}

}
