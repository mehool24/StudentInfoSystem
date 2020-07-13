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
<div class="container" style="padding-top: 40px">
	
	<div><h1 align="center">Student List</h1> <br></div>
	<div class="jumbotron">
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
				<th>Email</th>
				<th>Action</th>
				<th>				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${students}" var="student" varStatus="i">
				<tr>
					<td>${i.count}</td>
					<td><a href="student_detail?id=${student.id}"> ${student.id}</a></td>
					<td>${student.firstName}</td>
					<td>${student.lastName}</td>
					<td>${student.userName}</td>
					<td>${student.password}</td>
					<td>${student.dob}</td>
					<td>${student.ssn}</td>
					<td>${student.gender}</td>
					<td>${student.email} </td>
					<td><a href ="edit_student?id=${student.id}">Edit</a> |
					<a href ="delete_student?id=${student.id}">Delete</a></td>
					<td></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	</div>
</div>
</body>
</html>