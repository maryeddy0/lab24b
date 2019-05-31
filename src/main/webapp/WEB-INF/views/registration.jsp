<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T5jhQKMh96HMkXwqVMSjF3CmLcL1nT9//tCqu9By5XSdj7CwR0r+F3LTzUdfkkQf"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
  <h1>Add a person</h1>
  <form action="add-person">
  Name:<input type="text" name="name">
 Email:<input type="text" name="email">
 phone:<input type="text" name="phone">
  <input type="submit" value="submit">
  </form>
  
  
	<form action="/user-display">
		<div class="container">
		<table class="table" border="1">
			<thead>
				<tr>
					<td>Name</td>
					<td>Email</td>
					<td>Phone</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userInfo}" var="item">
					<tr>
					<td>${item.name}</td>
					<td>${item.email}</td>
					<td>${item.phone}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</form>
	
	
</body>
</html>