<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="/admin/css/admin.css" rel="stylesheet">
<link rel="shortcut icon" href="/admin/icon/icon-48x48.png" />

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
			
</script>
<link href="/admin/css/menu.css" rel="stylesheet">
<title>Thêm sản phẩm</title>

<style>
.validt {
	color: red;
}
</style>
</head>
<body data-theme="default" data-layout="fluid"
	data-sidebar-position="left" data-sidebar-layout="default">
	<div class="wrapper">
		<c:import url="/WEB-INF/layout/menu.jsp"></c:import>

		<div class="main">

			<main class="content">
				<div class="container-fluid p-0">

					<div class="mb-3">
						<h1 class="h3 d-inline align-middle">Form Layouts</h1>

					</div>

					<div class="row">
						<div class="col-12 col-xl-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Basic form</h5>
									<h6 class="card-subtitle text-muted">Default Bootstrap
										form layout.</h6>
								</div>
								<div class="card-body">
									<form:form action="#" method="post" modelAttribute="product"
										class="form-horizontal" role="form">
										<div class="form-group">
											<form:input path="productId" type="hidden" />

										</div>
										<div class="mb-3">
											<label class="form-label">Name</label>
											<form:input path="name" type="text" class="form-control"
												name="name" id="name" placeholder="Name" />
											<form:errors path="name" class="validt"></form:errors>
										</div>

										<div class="mb-3">
											<label class="form-label">Price</label>
											<form:input path="price" type="number" class="form-control"
												name="name" id="name" placeholder="Price" />
											<form:errors path="price" class="validt"></form:errors>
										</div>

										<div class="mb-3">
											<label class="form-label">Detail</label>
											<form:textarea path="detail" class="form-control"
												placeholder="Detail"></form:textarea>
										</div>

										<div class="mb-3">
											<label path="category.categoryId" for="tech"
												class="col-sm-3 control-label">Categories</label>
											<div class="col-sm-3">
												<form:select path="category.categoryId"
													itemValue="categoryId" itemLabel="name"
													items="${categories}" />
											</div>
											<form:errors path="category" class="validt"></form:errors>
										</div>


										<div class="mb-3">
											<label class="form-label w-100">File input</label>
											<!-- upload image -->
											<div>
												<input type="file" class="upload" id="${editProp.prop}_file"
													accept="image/*">
												<form:input path="image" placeholder="Hình ảnh"
													type="hidden" cssClass="form-control" id="pictureInput" />
												<%-- <form:errors path="image" cssClass="small text-danger" /> --%>
												<img src="${product.image}" style="width: 100%" />
											</div>
											<!-- upload image -->
										</div>
										<button type="submit" class="btn btn-primary">Submit</button>
									</form:form>

								</div>
							</div>
						</div>
						<div class="col-12 col-xl-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Horizontal form</h5>
									<h6 class="card-subtitle text-muted">Horizontal Bootstrap
										layout.</h6>
								</div>
								<div class="card-body">
									<form>
										<div class="mb-3 row">
											<label class="col-form-label col-sm-2 text-sm-end">Email</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" placeholder="Email">
											</div>
										</div>
										<div class="mb-3 row">
											<label class="col-form-label col-sm-2 text-sm-end">Password</label>
											<div class="col-sm-10">
												<input type="password" class="form-control"
													placeholder="Password">
											</div>
										</div>
										<div class="mb-3 row">
											<label class="col-form-label col-sm-2 text-sm-end">Textarea</label>
											<div class="col-sm-10">
												<textarea class="form-control" placeholder="Textarea"
													rows="3"></textarea>
											</div>
										</div>

										<div class="mb-3 row">
											<label class="col-form-label col-sm-2 text-sm-end pt-sm-0">Checkbox</label>
											<div class="col-sm-10">
												<label class="form-check m-0"> <input
													type="checkbox" class="form-check-input"> <span
													class="form-check-label">Check me out</span>
												</label>
											</div>
										</div>
										<div class="mb-3 row">
											<div class="col-sm-10 ms-sm-auto">
												<button type="submit" class="btn btn-primary">Submit</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Form row</h5>
									<h6 class="card-subtitle text-muted">Bootstrap column
										layout.</h6>
								</div>
								<div class="card-body">
									<form>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputEmail4">Email</label> <input
													type="email" class="form-control" id="inputEmail4"
													placeholder="Email">
											</div>
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputPassword4">Password</label>
												<input type="password" class="form-control"
													id="inputPassword4" placeholder="Password">
											</div>
										</div>
										<div class="mb-3">
											<label class="form-label" for="inputAddress">Address</label>
											<input type="text" class="form-control" id="inputAddress"
												placeholder="1234 Main St">
										</div>
										<div class="mb-3">
											<label class="form-label" for="inputAddress2">Address
												2</label> <input type="text" class="form-control" id="inputAddress2"
												placeholder="Apartment, studio, or floor">
										</div>
										<div class="row">
											<div class="mb-3 col-md-6">
												<label class="form-label" for="inputCity">City</label> <input
													type="text" class="form-control" id="inputCity">
											</div>
											<div class="mb-3 col-md-4">
												<label class="form-label" for="inputState">State</label> <select
													id="inputState" class="form-control">
													<option selected>Choose...</option>
													<option>...</option>
												</select>
											</div>
											<div class="mb-3 col-md-2">
												<label class="form-label" for="inputZip">Zip</label> <input
													type="text" class="form-control" id="inputZip">
											</div>
										</div>
										<div class="mb-3">
											<label class="form-label" class="form-check m-0"> <input
												type="checkbox" class="form-check-input"> <span
												class="form-check-label">Check me out</span>
											</label>
										</div>
										<button type="submit" class="btn btn-primary">Submit</button>
									</form>
								</div>
							</div>
						</div>

						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Inline form</h5>
									<h6 class="card-subtitle text-muted">Single horizontal
										row.</h6>
								</div>
								<div class="card-body">
									<form class="row row-cols-md-auto align-items-center">
										<div class="col-12">
											<label class="visually-hidden" for="inlineFormInputName2">Name</label>
											<input type="text" class="form-control mb-2 me-sm-2"
												id="inlineFormInputName2" placeholder="Jane Doe">
										</div>

										<div class="col-12">
											<label class="visually-hidden"
												for="inlineFormInputGroupUsername2">Username</label>
											<div class="input-group mb-2 me-sm-2">
												<div class="input-group-text">@</div>
												<input type="text" class="form-control"
													id="inlineFormInputGroupUsername2" placeholder="Username">
											</div>
										</div>

										<div class="col-12">
											<div class="form-check mb-1 me-sm-2">
												<input type="checkbox" class="form-check-input"
													id="customControlInline"> <label
													class="form-check-label" for="customControlInline">Remember
													me</label>
											</div>
										</div>

										<div class="col-12">
											<button type="submit" class="btn btn-primary mb-2">Submit</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a href="index.html" class="text-muted"><strong>AdminKit
										Demo</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item"><a class="text-muted" href="#">Support</a>
								</li>
								<li class="list-inline-item"><a class="text-muted" href="#">Help
										Center</a></li>
								<li class="list-inline-item"><a class="text-muted" href="#">Privacy</a>
								</li>
								<li class="list-inline-item"><a class="text-muted" href="#">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="js/app.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		document
				.addEventListener(
						"DOMContentLoaded",
						function(event) {
							setTimeout(
									function() {
										if (localStorage.getItem('popState') !== 'shown') {
											window.notyf
													.open({
														type : "success",
														message : "Get access to all 500+ components and 45+ pages with AdminKit PRO. <u><a class=\"text-white\" href=\"https://adminkit.io/pricing\" target=\"_blank\">More info</a></u> 🚀",
														duration : 10000,
														ripple : true,
														dismissible : false,
														position : {
															x : "left",
															y : "bottom"
														}
													});

											localStorage.setItem('popState',
													'shown');
										}
									}, 15000);
						});
	</script>


	<script>
	$('.upload').change(function() {
	    uploadFile(this);
	});

	uploadFile = async (fileInput) => {
	    let formData = new FormData()
	    formData.append('file', fileInput.files[0]);
	    let uploadOption = {
	        method: 'POST',
	        body: formData
	    };
	    try {
	        let response = await fetch('/upload', uploadOption);
	        if (response.ok) {
	            let uploadResult = await response.json();
	            if (uploadResult.uploaded) {
		            $(fileInput).next().val(uploadResult.url);
		            $(fileInput).prev().val(uploadResult.url);
		            let $img =  $(fileInput).next().next();
		            if ($img.length > 0) {
		                $img.attr('src', uploadResult.url);
		            }
		        } else {
		            alert(uploadResult.messsage);
		        }
	        } else {
	            let error = await response.json();
	            alert(error);
	        }
	    } catch(error) {
	        alert(error);
	    }
	}
	</script>
</body>
</html>