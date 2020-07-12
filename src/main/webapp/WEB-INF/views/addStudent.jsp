
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<%@ include file="header.jsp" %>
</head>
<body>
<div class="container" style="margin-bottom: 150px;">
	<h2 class="margin-all-side">Add Student</h2>
	<form action="save_student" method="post">
		<div class="form-group">
			<div class="row">
				<div class="col"><label>First Name</label></div>
				<div class="col">Last Name</div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="firstName" class="form-control" value="" placeholder="Enter last name"></div>
				<div class="col"><input type="text" name="lastName" class="form-control" value="" placeholder="Enter first name"></div>
			</div>
		</div>
		<div class="form-group">
			<label>Username</label>
			<input type="text" name="userName" class="form-control" value="" placeholder="Enter username">
		</div>
		<div class="form-group">
			<label>Password</label>
			<input type="password" name="password" class="form-control" value="" placeholder="Enter password">
		</div>
		<div class="form-group">
			<label>Date of Birth</label>
			<input type="date" name="dob" class="form-control" value="" placeholder="">
		</div>
		<div class="form-group">
			<label>Social Security</label>
			<input type="text" name="ssn" class="form-control" value="" placeholder="Social security number">
		</div>
		<div class="form-group">
			<label>Gender</label><br>
			Male  <input type="radio" name="gender" class="" value="male"> &nbsp; &nbsp;
			Female  <input type="radio" name="gender" class="" value="female">
		</div>
		<hr>
		<h3 class="margin-all-side">Student Address</h3>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Street Name</label></div>
				<div class="col"><label>City Name</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.streetName" class="form-control" value="" placeholder="Enter street"></div>
				<div class="col"><input type="text" name="address.cityName" class="form-control" value="" placeholder="Enter city"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>State</label></div>
				<div class="col"><label>Zip Code</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.stateName" class="form-control" value="" placeholder="Enter state"></div>
				<div class="col"><input type="text" name="address.zipCode" class="form-control" value="" placeholder="Enter zip"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Country</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="address.countryName" class="form-control" value="" placeholder="Entry country"></div>
			</div>
		</div>
		<hr>
		<h3 class="margin-all-side">College Details</h3>
		<div class="form-group margin-all-side">
			<label>College Name</label>
			<input type="text" name="college.collegeName" class="form-control" value="" placeholder="Enter college name">
		</div>
		<hr>
		<h3 class="margin-all-side margin-all-side">College Address</h3>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Street Name</label></div>
				<div class="col"><label>City Name</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="collegeInfo.address.streetName" class="form-control" value="" placeholder="Enter street"></div>
				<div class="col"><input type="text" name="collegeInfo.address.cityName" class="form-control" value="" placeholder="Enter city"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>State</label></div>
				<div class="col"><label>Zip Code</label></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="collegeInfo.address.stateName" class="form-control" value="" placeholder="Enter state"></div>
				<div class="col"><input type="text" name="collegeInfo.address.zipCode" class="form-control" value="" placeholder="Enter zip"></div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col"><label>Country</label></div>
				<div class="col"></div>
			</div>
			<div class="row">
				<div class="col"><input type="text" name="collegeInfo.address.countryName" class="form-control" value="" placeholder="Entry country"></div>
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
				<div class="col"><input type="text" name="courses.courseName" class="form-control" value="" placeholder="Enter course name"></div>
				<div class="col"><input type="text" name="courses.courseGrade" class="form-control" value="" placeholder="Enter grade"></div>
				<div class="col"><input type="text" name="courses.courseCredit" class="form-control" value="" placeholder="Enter credit"></div>
			</div>
			
		</div>
		<div class="form-group">
			<button class="btn btn-success btn-md" type="submit">Save Student</button>
		</div>
	</form>
	<input type=button value="Cancel" onCLick="history.back()">
</div>
</body>
</html>