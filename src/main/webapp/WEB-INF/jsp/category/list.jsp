<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Danh sách danh mục</title>
</head>
<body>

<div class="wrapper">
<c:import url="/WEB-INF/layout/menu.jsp"></c:import>
	
	<table class="table">
		<thead>
			<tr>
				<th>Id</th>
				<th>Tên</th>
				<th>Thao tác</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="category" items="${categories}">
				<tr>
					<td>${category.categoryId}</td>
					<td>${category.name}</td>
					<td><a href="/category/edit?cId=${category.categoryId}">Sửa</a>
					<a href="/category/delete?cId=${category.categoryId}">Xóa</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>