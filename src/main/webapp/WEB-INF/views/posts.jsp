<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>HGU 중고 마켓 Main</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	  integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<link href='https://css.gg/log-out.css' rel='stylesheet'>

	<style>
	#p_title {
		font-size: 30px;
		text-align: center;
		background-color: deepskyblue;
		border-radius: 5px;
		border: 1px solid;
		display: block;
		width: 500px;
		height: 50px;
		margin-left: 500px;
	}
	#list {
	  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	#list td, #list th {
	  border: 1px solid #ddd;
	  padding: 8px;
	  text-align:center;
	}
	tr{
		vertical-align: middle;
	}
	td{
		max-width: 150px;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
	}
	#list tr:nth-child(even){background-color: #f2f2f2;}
	#list tr:hover {background-color: #ddd;}
	#list th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: center;
	  border-radius: 5px;
	  background-color: deepskyblue;
	  color: beige;
	}
	#logout_info {
		text-align: left;
		left: 12px;
		position: relative;
	}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
	<div>
		<h1 id="p_title">한동 중고 마켓</h1>
		<div class="d-flex justify-content-end mb-3">
<%--		<a href="addpostform.jsp" class="btn btn-primary" role="button" aria-pressed="true">Register Now</a>--%>
			<button type="button" onclick="location.href='add'">Register Now</button><br/>
	</div>
	<div>
		<div id="logout_info">
			<a href="login/logout"><i class="gg-log-out"></i></a>
		</div>
		<table id="list" width="90%">
		<tr>
<%--			<th>No</th>--%>
			<th>Id</th>
			<th>Type</th>
			<th>Title</th>
			<th>Price</th>
			<th>Content</th>
<%--			<th>Photo</th>--%>
			<th>Writer</th>
			<th>Place</th>
			<th>Number</th>
			<th>Regdate</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
<%--		<c:forEach items="${list}" var="u" varStatus="status">--%>
			<tr>
<%--				<td>${fn:length(list)-status.index}</td>--%>
				<td>${u.seq}</td>
				<td>${u.type}</td>
				<td>${u.title}</td>
				<td>${u.price}</td>
				<td>${u.content}</td>
				<td>${u.writer}</td>
				<td>${u.place}</td>
				<td>${u.number}</td>
<%--				<td>--%>
<%--					<c:if test="${u.photo ne ''}"><br/>--%>
<%--					<img src="${pageContext.request.contextPath}/upload/${u.photo}" class="photo" width="300" height="300"></c:if>--%>
<%--				</td>--%>
				<td>${u.regdate}</td>
				<td>
					<a href="editform/${u.seq}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
						<path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
					</svg></a>
				</td>
				<td>
					<a href="javascript:delete_ok('${u.seq}')"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
					<path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
				</svg></a>
				</td>
			</tr>
		</c:forEach>
		</table>
	</div>
	<br/>
	<%--<a href="addpostform.jsp">Add New Post</a>--%>
</div>
</html>