package com.vastika.smd.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "courses")
public class Course {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "course_id")
	private int courseId;
	
	@Column(name = "course_name")
	private String courseName;
	
	@Column(name = "course_grade")
	private String courseGrade;
	
	@Column(name="course_credit")
	private String courseCredit;
	
	@OneToOne
	@JoinColumn(name = "id")
	private Student student;
	
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseGrade() {
		return courseGrade;
	}
	public void setCourseGrade(String courseGrade) {
		this.courseGrade = courseGrade;
	}
	public String getCourseCredit() {
		return courseCredit;
	}
	public void setCourseCredit(String courseCredit) {
		this.courseCredit = courseCredit;
	}
	
	
}
