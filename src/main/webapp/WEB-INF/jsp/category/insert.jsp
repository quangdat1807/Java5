<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="/admin/css/admin.css" rel="stylesheet">
<link rel="shortcut icon" href="/admin/icon/icon-48x48.png" />


<link href="/admin/css/menu.css" rel="stylesheet">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	
</script>
<title>Thêm danh mục</title>
</head>
<body>
	<div class="wrapper">

		<c:import url="/WEB-INF/layout/menu.jsp"></c:import>

		<div class="col-12 col-xl-6">

			<div class="card">
				<div class="card-header">
					<h5 class="card-title">Horizontal form</h5>
					<h6 class="card-subtitle text-muted">Horizontal Bootstrap
						layout.</h6>
				</div>
				<div class="card-body">
					<form:form action="#" method="post" modelAttribute="category">
						<div class="mb-3 row">
							<form:label path="name"
								class="col-form-label col-sm-2 text-sm-end">Name</form:label>
							<div class="col-sm-10">
								<form:input path="name" class="form-control" placeholder="Tên" />
							</div>
						</div>
						<form:errors path="name"></form:errors>
						<div class="mb-3 row">
							<label class="col-form-label col-sm-2 text-sm-end pt-sm-0">Check</label>
							<div class="col-sm-10">
								<label class="form-check m-0"> <input type="checkbox"
									class="form-check-input"> <span
									class="form-check-label">Check me out</span>
								</label>
							</div>
						</div>
						<div class="mb-3 row">
							<div class="col-sm-10 ms-sm-auto">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>