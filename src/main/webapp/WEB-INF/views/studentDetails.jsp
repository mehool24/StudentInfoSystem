<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<%@ include file ="header.jsp" %>
</head>
<body>
<div align="center">
<div><h1>Personal Details</h1></div>
	<c:if test="${!empty student }">
	
		<div>
			First Name:  ${student.firstName}
			</div>
			<div>
			Last Name:   ${student.lastName}
			</div>
			<div>
			User Name: ${student.userName}
			</div>
			<div>
			Password:  ${student.password}
			</div>
			<div>
			SSN  :${student.ssn}
			</div>
			<div>
			Gender:  ${student.gender}	
			</div>
			<div>
			Date Of Birth: ${student.dob}
			</div>
		
	</c:if>
	</div>
</body>
</html>