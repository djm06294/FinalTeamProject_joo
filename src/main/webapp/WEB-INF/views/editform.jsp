<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Edit Form</title>
</head>
<body>
	<h1>Edit Form</h1>
	<form:form modelAttribute="u" method="POST" action="../editok">
	<form:hidden path="seq"/>
		<table id = "edit">
			<tr><td>Category:</td><td><form:input path="category"/></td></tr>
			<tr><td>Title:</td><td><form:input path="title"/></td></tr>
			<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
			<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
<%--				<td>--%>
<%--					Photo:</td><td><input type="file" name="photo" value="${vo.getPhoto()}"/><c:if test="${vo.getPhoto() ne ''}"><br/>--%>
<%--					<img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo" width="300" height="300"> </c:if>--%>
<%--				</td>--%>
		</table>
		<input type="submit" value="Edit Post"/>
		<input type="button" value="Cancel" onclick="history.back()"/>
	</form:form>

</body>
</html>