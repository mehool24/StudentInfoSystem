package com.vastika.smd.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vastika.smd.model.Student;

import com.vastika.smd.util.HibernateUtil;

@Repository
public class StudentRepositoryImpl implements StudentRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Student> getAllStudentInfo() {
		Session session = HibernateUtil.getSession(sessionFactory);
		Criteria criteria = session.createCriteria(Student.class);
		return criteria.list();
	}

	@Override
	public Student getStudentByUserNameAndpassword(String username, String password) {
		Session session = HibernateUtil.getSession(sessionFactory);
		Criteria criteria = session.createCriteria(Student.class);
		criteria.add(Restrictions.eq("userName", username)).add(Restrictions.eq("password", password));
		return (Student) criteria.uniqueResult();
	}

	@Override
	public void resetPassword(Student student) {

	}
}
