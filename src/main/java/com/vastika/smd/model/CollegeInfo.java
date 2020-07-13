package com.vastika.smd.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="college_info")
public class CollegeInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "college_id")
	private int collegeId;
	
	@Column(name = "college_name")
	private String collegeName;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Address address;
	
	@OneToOne
	@JoinColumn(name = "id")
	private Student student;
	
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
	
	public int getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(int collegeId) {
		this.collegeId = collegeId;
	}

	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}

}
