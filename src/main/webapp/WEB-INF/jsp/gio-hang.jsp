<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8" />
<title>Detail Product</title>


<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--=============CSS====================== -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />

<link rel="stylesheet" href="/home/css/linearicons.css">
<link rel="stylesheet" href="/home/css/font-awesome.min.css">
<link rel="stylesheet" href="/home/css/bootstrap.css">
<link rel="stylesheet" href="/home/css/magnific-popup.css">
<link rel="stylesheet" href="/home/css/nice-select.css">
<link rel="stylesheet" href="/home/css/animate.min.css">
<link rel="stylesheet" href="/home/css/owl.carousel.css">
<link rel="stylesheet" href="/home/css/main.css">

<style type="text/css">
	button.btn {
	border: none;
}
</style>
</head>

<body>
	<div id="table-content">
		<div class="container mt-5 p-3 rounded cart">
			<div class="row no-gutters">
				<div class="col-md-8">
					<div class="product-details mr-2">
						<div class="d-flex flex-row align-items-center">
							<a href="/product/home"><i class="fa fa-long-arrow-left"></i></a><span
								class="ml-2">Continue Shopping</span>
						</div>
						<hr>

						<c:forEach var="chitiet" items="${gioHang.chiTietGioHang}">
							<div
								class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
								<div class="d-flex flex-row">
									<img class="rounded" src="${chitiet.key.image}" width="60">
									<div class="ml-2">
										<span class="font-weight-bold d-block">${chitiet.key.name}</span><span
											class="spec">32GB, Navy Blue</span>
									</div>
								</div>
								<div class="d-flex flex-row align-items-center">
									<button onclick="truSP(event)" id="${chitiet.key.productId}"
										style="margin-right: 3px;" class="btn"
										<c:if test="${chitiet.value == 1}">disabled="disabled"</c:if>>
										-</button>
									<div style="margin-left: 5px; margin-right: 5px">${chitiet.value}</div>
									<button onclick="congSP(event)" id="${chitiet.key.productId}" class="btn"
										<c:if test="${chitiet.value == 10}">disabled="disabled"</c:if>>+</button>
										<c:set var="tongGia" scope="session" value="${chitiet.value * chitiet.key.price}"></c:set>
									<span class="d-block ml-5 font-weight-bold"><c:out value="${tongGia}"></c:out></span>

									<a href="/xoa-san-pham/${chitiet.key.productId}"
										id="${chitiet.key.productId}"> <i class="fas fa-trash"></i>
									</a>
								</div>
							</div>
						</c:forEach>

						<a href="/hoan-thanh-dat-hang">Hoàn thành giỏ</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
function truSP(ev) {
		let id = $(ev.target).attr('id');
		fetch('/tru-san-pham/' + id)
		.then(response => response.text())
		.then(data => {
			$('#table-content').html(data);
		});
	}
	function congSP(ev) {
		let id = $(ev.target).attr('id');
		fetch('/them-vao-gio/' + id)
		.then(response => response.text())
		.then(data => {
			$('#table-content').html(data);
		});
	}
	
</script>
</body>