package com.vastika.smd.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="college_info")
public class CollegeInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "college_name")
	private String collegeName;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Address address;
	
	@OneToOne
	private Student student;
	
	public CollegeInfo() {
		
	}
	
	public CollegeInfo(int id, String collegeName, Address address, Student student) {
		super();
		this.id = id;
		this.collegeName = collegeName;
		this.address = address;
		this.student = student;
	}
	
	
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
