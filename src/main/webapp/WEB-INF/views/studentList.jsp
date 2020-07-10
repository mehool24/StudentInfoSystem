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
<div><a href ="add_user">Add Student</a></div>
<div><h1>Student List</h1></div>
	<c:if test="${!empty students }"></c:if>
	<table class=" table table-striped">
		<thead>
			<tr>
				<th>SN</th>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>User Name</th>
				<th>Password</th>
				<th>Date Of Birth</th>
				<th>SSN</th>
				<td>Gender</td>
				<th>Actions</th>
				
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
					
					<td><a href ="edit_user?=${student.id}">Edit</a> 
					<a href ="delete_user?id=${student.id}">Delete</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</body>
</html>