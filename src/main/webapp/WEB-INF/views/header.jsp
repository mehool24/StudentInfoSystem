<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/style.css" />
<script type="text/javascript" src="resources/jquery.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
	
<nav class="navbar navbar-expand-lg   navbar-dark bg-success">
  <a class="navbar-brand" href="home">Home <span class="sr-only">(current)</span></a>
 <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
       <a class="navbar-brand" href="student_list">StudentInfoSystem</a>
      </li>
      <li class="nav-item active">
        <a class="navbar-brand" href="student_list">CollegeInformation</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle ml-auto" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
        ${uname}
        </a>
        <div class="dropdown-menu"  aria-labelledby="navbarDropdown"  >
        <c:choose>
        	<c:when test="${empty uname}">
        		<a class="dropdown-item" href="login">login</a>
        	</c:when>
        	<c:otherwise>
        		<a class="dropdown-item" href="student_details">Student Details</a>
        		<a class="dropdown-item" href="logout">logout</a>
        	</c:otherwise>
        </c:choose>
        </div>
      </li>
      </ul>
    
  </div>
</nav>

