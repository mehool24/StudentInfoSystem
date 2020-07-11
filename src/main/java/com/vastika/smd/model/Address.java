package com.vastika.smd.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "address")
public class Address {

	@Id
	private int id;
	@Column(name = "street_name")
	private String streetName;
	@Column(name = "city_name")
	private String cityName;
	@Column(name = "state_name")
	private String stateName;
	@Column(name = "zip_code")
	private int zipCode;
	@Column(name = "country_name")
	private String countryName;
	
	@OneToOne
	private CollegeInfo collegeInfo;

	public CollegeInfo getCollegeInfo() {
		return collegeInfo;
	}

	public void setCollegeInfo(CollegeInfo collegeInfo) {
		this.collegeInfo = collegeInfo;
	}
	
	@OneToOne
	@MapsId
	private Student student;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	
}