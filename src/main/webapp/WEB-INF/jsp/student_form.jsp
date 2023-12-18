<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
  <spring:url value="/student/addStudent" var="addURL" />
  <h2>Add Student</h2>
  <form:form modelAttribute="studentForm" method="post" action="${addURL}" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>First Name</label>
    <form:input path="firstname" cssClass="form-control" id="firstname" />
   </div>
   <div class="form-group">
    <label>Last Name</label>
    <form:input path="lastname" cssClass="form-control" id="lastname" />
   </div>
   <button type="submit" class="btn btn-success">Add Student</button>
  </form:form>
  
 </div>
</body>
</html>