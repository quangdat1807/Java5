<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
<meta name="author" content="AdminKit">
<meta name="keywords"
	content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

<link rel="preconnect" href="https://fonts.gstatic.com">

<link href="/admin/css/admin.css" rel="stylesheet">
<link rel="shortcut icon" href="/admin/icon/icon-48x48.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<link href="/admin/css/menu.css" rel="stylesheet">
<title>Product - SmartWatch</title>
</head>
<style>
.xep {
	padding: 0;
	border: none;
	background: none;
	font-weight: 600;
}

.pagination a {
	border-radius: 3px;
	border: 1px solid #BDBDBD;
	float: left;
	padding: 6px 18px;
	font-size: 18px";
}

.pagination a:hover {
	text-decoration: none;
}
</style>
<body>
	<div class="wrapper">
		<c:import url="/WEB-INF/layout/menu.jsp"></c:import>
		
		<sf:form modelAttribute="searchForm" acion="search" method="get">

			<sf:input path="name" placeholder="Search..." />
			<input type="submit" value="Tìm">

			<sf:input type="hidden" path="xepTheo" id="xepTheoInput" />
			<sf:input type="hidden" path="thuTu" id="thuTuInput" />
			<sf:input type="hidden" path="trang" id="trangInput" />

		</sf:form>
		<table class="table">
			<thead>
				<tr>
					<th>
						<button xepTheo="productId" class="xep">
							ID
							<c:if test="${searchForm.xepTheo == 'productId' }">
								<c:choose>
									<c:when test="${searchForm.thuTu}">
									<i class="fas fa-caret-up"></i>
								</c:when>
									<c:otherwise>
									<i class="fas fa-caret-down"></i>
								</c:otherwise>
								</c:choose>
							</c:if>
						</button>
					</th>
					<th>
						<button xepTheo="name" class="xep">
							Tên
							<c:if test="${searchForm.xepTheo == 'name' }">
								<c:choose>
									<c:when test="${searchForm.thuTu}">
										<i class="fas fa-caret-up"></i>
									</c:when>
									<c:otherwise>
										<i class="fas fa-caret-down"></i>
									</c:otherwise>
								</c:choose>
							</c:if>
						</button>
					</th>
					<th>
						<button xepTheo="price" class="xep">
							Giá
							<c:if test="${searchForm.xepTheo == 'price' }">
								<c:choose>
									<c:when test="${searchForm.thuTu}">
										<i class="fas fa-caret-up"></i>
									</c:when>
									<c:otherwise>
										<i class="fas fa-caret-down"></i>
									</c:otherwise>
								</c:choose>
							</c:if>
						</button>
					</th>
					<th>Ngày tạo</th>
					<th>Danh mục</th>

					<th>Hình ảnh</th>
					<th>Thao tác</th>
					<th></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="product" items="${products}">
					<tr style="background-color: #fff">
						<td scope="row">${product.productId}</td>
						<td>${product.name}</td>
						<td>${product.price}</td>
						<td>${product.createdDate}</td>
						<td>${product.category.name}</td>
						<td><img src="${product.image}" style="width: 100px"></td>
						<td><a href="/product/edit?cId=${product.productId}"
							style="padding-right: 5px"><i class="fas fa-edit"></i></a>
							<button onclick="xoaSp(${product.productId})" style="border:none; background-color: #fff;"><i
								class="fas fa-trash-alt"></i></button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<ul class="pagination" style="margin-left: 12px">
			<li><c:if test="${maxPage > 0}">
					<c:forEach var="pageIndex" begin="0" end="${maxPage - 1}">
						<a trang="${pageIndex}"
							class="trang<c:if test="${pageIndex == searchForm.trang}"> active</c:if>">
							${pageIndex + 1}</a>
					</c:forEach>
				</c:if></li>
		</ul>

		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
			
		</script>
		<script type="text/javascript">
			$('#searchBt').click(function() {
				$('form #xepTheoInput').val("productId");
				$('form #thutuInput').val(true);
				$('form #trangInput').val(0);
				$('form').submit();
			});
			$('.trang').click(function() {
				var trang = $(this).attr('trang');
				$('form #trangInput').val(trang);
				$('form').submit();
			});
			$('.xep').click(function() {
				var xepTheo = $(this).attr('xepTheo');
				var xepTheoInput = $('form #xepTheoInput');
				var thutuInput = $('form #thuTuInput');
				// kiểm tra nếu xếp theo bằng giá trị xếp theo đã nhập
				// thì thay đổi thứ tự
				if (xepTheo == xepTheoInput.val()) {
					if (thutuInput.val() == 'true') {
						thutuInput.val(false);
					} else {
						thutuInput.val(true);
					}
				} else {
					// gán giá trị thứ tự thành tăng dần
					thutuInput.val(true);
					// gán giá trị xếp theo cho input
					xepTheoInput.val(xepTheo);
				}
				// đặt giá trị trang về 0
				$('form #trangInput').val(0);
				$('form').submit();
			});
			
			function xoaSp(id) {
				
				var confirm = window.confirm("Bạn có muốn xóa ?");
				if (confirm == true) {
				
				fetch('/product/delete?cId=' + id)
				.then(response => response.text())
				.then(data => {
					window.location.reload();
				});
				}
				
			}
		</script>
	</div>
</body>
</html>