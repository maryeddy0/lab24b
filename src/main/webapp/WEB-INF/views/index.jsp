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
<title>Insert title here</title>
</head>
<body>
	<h1>Hello</h1>

	<form action="/register">
		<input type="hidden" name="reg"> <input type="submit"
			value="Register">
	</form>
	<!--  -->
	<!--  -->
	<form>
		<div class="container"></div>
		<table class="table" border="1">
			<thead>
				<tr>
					<td>Name</td>
					<td>Description</td>
					<td>Quantity</td>
					<td>Price</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listOfStuff}" var="item">
					<tr>
					<td>${item.name}</td>
					<td>${item.description}</td>
					<td>${item.quantity}</td>
					<td>${item.price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>



</body>
</html>