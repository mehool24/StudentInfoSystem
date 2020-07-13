<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Detail</title>
<%@ include file ="header.jsp" %>
</head>
<body>
<div class="container" style="padding-top: 40px;">
	<header>
		<h1 align="center">${student.firstName}'s Report</h1>
		<br>
	</header>
	
		<div class="jumbotron">
		<h3 class="margin-all-side">Student's Info</h3><br>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>First Name</label></div>
				<div class="col">Last Name</div>
			</div>
			<div class="row">
				<div class="col"><strong>${student.firstName}</strong></div>
				<div class="col"><strong>${student.lastName}</strong></div>
			</div>
		</div>
		
		<div class="form-group">
			<div class="row">
				<div class="col"><label>UserName</label></div>
				<div class="col">Password</div>
			</div>
			<div class="row">
				<div class="col"><strong>${student.userName}</strong></div>
				<div class="col"><strong>${student.password}</strong></div>
			</div>
		</div>
		
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Date of Birth</label></div>
				<div class="col"><label>Social Security</label></div>
				
			</div>
			<div class="row">
				<div class="col"><strong>${student.dob}</strong></div>
				<div class="col"><strong>${student.ssn}</strong></div>
			</div>
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Gender</label></div>
				
			</div>
			<div class="row">
				<div class="col"><strong>${student.gender}</strong></div>
			</div>
		</div>
		<br>
		<hr>
		<h3 class="margin-all-side">Student Address</h3><br>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Street Name</label></div>
				<div class="col"><label>City Name</label></div>
			</div>
			<div class="row">
				<div class="col"><strong>${studentAddress.streetName}</strong></div>
				<div class="col"><strong>${studentAddress.cityName}</strong></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>State</label></div>
				<div class="col"><label>Zip Code</label></div>
			</div>
			<div class="row">
				<div class="col"><strong>${studentAddress.stateName}</strong></div>
				<div class="col"><strong>${studentAddress.zipCode}</strong></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Country</label></div>
			</div>
			<div class="row">
				<div class="col"><strong>${studentAddress.countryName}</strong></div>
			</div>
		</div>
		<hr>
		<h3 class="margin-all-side">College Details</h3><br>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>College Name</label></div>
			</div>
			<div class="row">
				<div class="col"><strong>${college.collegeName}</strong></div>
			</div>
		</div>
		
		<hr>
		<h3 class="margin-all-side margin-all-side">College Address</h3><br>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Street Name</label></div>
				<div class="col"><label>City Name</label></div>
			</div>
			<div class="row">
				<div class="col"><strong>${collegeAddress.streetName}</strong></div>
				<div class="col"><strong>${collegeAddress.cityName}</strong></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>State</label></div>
				<div class="col"><label>Zip Code</label></div>
			</div>
			<div class="row">
				<div class="col"><strong>${collegeAddress.stateName}</strong></div>
				<div class="col"><strong>${collegeAddress.zipCode}</strong></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Country</label></div>
				<div class="col"></div>
			</div>
			<div class="row">
				<div class="col"><strong>${collegeAddress.countryName}</strong></div>
				<div class="col"></div>
			</div>
		</div>
		<hr>
		<h3 class="margin-all-side">Course Details</h3><br>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Course Name</label></div>
				<div class="col"><label>Grade</label></div>
				<div class="col"><label>Credit</label></div>
			</div>
			<div class="row">
				<div class="col"><strong>${course.courseName}</strong></div>
				<div class="col"><strong>${course.courseGrade}</strong></div>
				<div class="col"><strong>${course.courseCredit}</strong></div>
			</div>
			
		</div>
		</div>
		<div class="form-group">
			
			<input type="button"  class="btn btn-danger btn-md" value="Cancel" onCLick="history.back()">
		</div>

	<br>
	<br>
	<br>
</div>
</body>
</html>