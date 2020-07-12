<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
<%@ include file ="header.jsp" %>

</head>
<body>
<div class="container">
<a href="add_student"><button class="btn btn-primary btn-sm margin-all-side">Add Student</button></a>
	<div><h1>Student List</h1></div>
	<c:if test="${!empty students }"></c:if>
	<table class=" table table-striped">
		<thead>
			<tr>
				<th>S. No.</th>
				<th>Student Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>User Name</th>
				<th>Password</th>
				<th>Date Of Birth</th>
				<th>Social Security</th>
				<th>Gender</th>
				<th>Student Address</th>
				<th>College Name</th>
				<th>College Address</th>
				<th>Courses</th>
				<th>Action</th>
				<th>				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${students}" var="student" varStatus="i">
				<tr>
					<td>${i.count}</td>
					<td>${student.id}</td>
					<td>${student.firstName}</td>
					<td>${student.lastName}</td>
					<td>${student.userName}</td>
					<td>${student.password}</td>
					<td>${student.dob}</td>
					<td>${student.ssn}</td>
					<td>${student.gender}</td>
					<td><c:if test="${!empty student.getAddress()}">${student.getAddress().getCityName()}, ${student.getAddress().getCountryName()}</c:if></td>
					<td></td>
					<td></td>
					<td></td>
					<td><a href ="edit_user?=${student.id}">Edit</a> 
					<a href ="delete_user?id=${student.id}">Delete</a></td>
					<td></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>
</body>
</html>