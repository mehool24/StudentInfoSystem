<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Student</title>
<%@ include file ="header.jsp" %>
</head>
<body>
<div class="container" style="padding-top: 40px;">
	<header>
		<h1 align="center">Add new student</h1>
		<br>
	</header>
	<form action="update_student" method="post">
		<div class="jumbotron">
		<div class="form-group">
			<div class="row">
				<div class="col"><label>First Name</label></div>
				<div class="col">Last Name</div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="firstName" class="form-control" value="${student.firstName }" placeholder="Enter last name"></div>
				<div class="col"><input type="text" name="lastName" class="form-control" value="${student.lastName }" placeholder="Enter first name"></div>
			</div>
		</div>
		<div class="form-group">
			<label>Username</label>
			<input type="text" name="userName" class="form-control" value="${student.userName }" placeholder="Enter username">
		</div>
		<div class="form-group">
			<label>Password</label>
			<input type="password" name="password" class="form-control" value="${student.password }" placeholder="Enter password">
		</div>
		<div class="form-group">
			<label>Date of Birth</label>
			<input type="date" name="dob" class="form-control" value="${student.dob }" placeholder="">
		</div>
		<div class="form-group">
			<label>Social Security</label>
			<input type="text" name="ssn" class="form-control" value="${student.ssn }" placeholder="Social security number">
		</div>
		<div class="form-group">
			<label>Email</label>
			<input type="text" name="email" class="form-control" value="${student.email }" placeholder="Enter your email">
		</div>
		<div class="form-group">
				<label>Gender</label>
				<input type="radio" name="gender" value="Male" ${student.gender=='Male'?'checked':'' }> Male
				<input type="radio" name="gender" value="Female"${student.gender=='Female'?'checked':'' }> Female
			</div>
		<hr>
		<h3 class="margin-all-side">Student Address</h3>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Street Name</label></div>
				<div class="col"><label>City Name</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.streetName" class="form-control" value="${student.address.streetName }" placeholder="Enter street"></div>
				<div class="col"><input type="text" name="address.cityName" class="form-control" value="${student.address.cityName }" placeholder="Enter city"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>State</label></div>
				<div class="col"><label>Zip Code</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.stateName" class="form-control" value="${studentAddress.stateName }" placeholder="Enter state"></div>
				<div class="col"><input type="text" name="address.zipCode" class="form-control" value="${studentAddress.zipCode }" placeholder="Enter zip"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Country</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.countryName" class="form-control" value="${studentAddress.countryName }" placeholder="Entry country"></div>
			</div>
		</div>
		<hr>
		<h3 class="margin-all-side">College Details</h3>
		<div class="form-group margin-all-side">
			<label>College Name</label>
			<input type="text" name="collegeInfo.collegeName" class="form-control" value="${college.collegeName }" placeholder="Enter college name">
		</div>
		<hr>
		<h3 class="margin-all-side margin-all-side">College Address</h3>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Street Name</label></div>
				<div class="col"><label>City Name</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.streetName" class="form-control" value="${collegeAddress.streetName }" placeholder="Enter street"></div>
				<div class="col"><input type="text" name="address.cityName" class="form-control" value="${collegeAddress.cityName }" placeholder="Enter city"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>State</label></div>
				<div class="col"><label>Zip Code</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.stateName" class="form-control" value="${collegeAddress.stateName }" placeholder="Enter state"></div>
				<div class="col"><input type="text" name="address.zipCode" class="form-control" value="${collegeAddress.zipCode }" placeholder="Enter zip"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Country</label></div>
				<div class="col"></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.countryName" class="form-control" value="${collegeAddress.countryName }" placeholder="Entry country"></div>
				<div class="col"></div>
			</div>
		</div>
		<hr>
		<h3 class="margin-all-side">Course Details</h3>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Course Name</label></div>
				<div class="col"><label>Grade</label></div>
				<div class="col"><label>Credit</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="course.courseName" class="form-control" value="${course.courseName }" placeholder="Enter course name"></div>
				<div class="col"><input type="text" name="course.courseGrade" class="form-control" value="${course.courseGrade }" placeholder="Enter grade"></div>
				<div class="col"><input type="text" name="course.courseCredit" class="form-control" value="${course.courseCredit }" placeholder="Enter credit"></div>
			</div>
			
		</div>
		</div>
		<div class="form-group">
			
			<input type="button"  class="btn btn-danger btn-md" value="Cancel" onCLick="history.back()">
			<button class="btn btn-success btn-md" type="submit">Update Student</button>
		</div>
	</form>
	<br>
	<br>
	<br>
</div>
</body>
</html>