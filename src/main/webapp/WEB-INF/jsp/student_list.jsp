<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
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
  <table class="table table-striped">
   <thead class="thead-dark">
    <th scope="row">ID</th>
    <th scope="row">First Name</th>
    <th scope="row">Last Name</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${studentList}" var="student" >
     <tr>
      <td>${student.id}</td>
      <td>${student.firstname}</td>
      <td>${student.lastname}</td>
      <td>
       <spring:url value="/student/editStudent/${student.id}" var="editURL" />
       <a class="btn btn-info" href="${editURL}" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/student/deleteStudent/${student.id}" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL}" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/student/addStudent/" var="addURL" />
  <a class="btn btn-success" href="${addURL}" role="button" >Add New Student</a>
 </div>

</body>
</html>