<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="/detail/css/style.css">
<link rel="stylesheet" href="/home/css/linearicons.css">
<link rel="stylesheet" href="/home/css/font-awesome.min.css">
<link rel="stylesheet" href="/home/css/bootstrap.css">
<link rel="stylesheet" href="/home/css/magnific-popup.css">
<link rel="stylesheet" href="/home/css/nice-select.css">
<link rel="stylesheet" href="/home/css/animate.min.css">
<link rel="stylesheet" href="/home/css/owl.carousel.css">
<link rel="stylesheet" href="/home/css/main.css">
</head>
<body>
	
	<header id="header" id="home" style=" background-color: #777777">
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="/product/home"><img src="/home/img/logo.png" alt=""
						title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="menu-active"><a href="#home">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#service">Service</a></li>
						<li><a href="#unique">Unique Feature</a></li>
						<li><a href="#review">Review</a></li>
						<li><a href="#faq">Faq</a></li>
						<li class="menu-has-children"><a href="#">Pages</a>
							<ul>
								<li><a href="/product/listProducts">Dashboard</a></li>
								<li><a href="#">Elements</a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<div class="single_product" style="margin-top: 50px">
		<div class="container-fluid"
			style="background-color: #fff; padding: 11px;">
			<div class="row">
				<div class="col-lg-4 order-lg-2 order-1">
					<div class="image_selected">
						<img src="https://i.imgur.com/qEwct2O.jpg" alt="">
					</div>
				</div>
				
				<div class="col-lg-6 order-3">
					<div class="product_description">
						<nav>
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Products</a></li>
								<li class="breadcrumb-item active">Accessories</li>
							</ol>
						</nav>
						<div class="product_name">Acer Aspire 3 Celeron Dual Core -
							(2 GB/500 GB HDD/Windows 10 Home) A315-33 Laptop (15.6 inch,
							Black, 2.1 kg)</div>
						<div class="product-rating">
							<span class="badge badge-success"><i class="fa fa-star"></i>
								4.5 Star</span> <span class="rating-review">35 Ratings & 45
								Reviews</span>
						</div>
						<div>
							<span class="product_price">₹ 29,000</span> <strike
								class="product_discount"> <span style="color: black">₹
									2,000<span></strike>
						</div>
						<div>
							<span class="product_saved">You Saved:</span> <span
								style='color: black'>₹ 2,000<span>
						</div>
						<hr class="singleline">
						<div>
							<span class="product_info">EMI starts at ₹ 2,000. No Cost
								EMI Available<span><br> <span class="product_info">Warranty:
										6 months warranty<span><br> <span
											class="product_info">7 Days easy return policy<span><br>
													<span class="product_info">7 Days easy return policy<span><br>
															<span class="product_info">In Stock: 25 units sold
																this week<span>
						</div>
						<div>
							<div class="row">
								<div class="col-md-5">
									<div class="br-dashed">
										<div class="row">
											<div class="col-md-3 col-xs-3">
												<img
													src="https://img.icons8.com/color/48/000000/price-tag.png">
											</div>
											<div class="col-md-9 col-xs-9">
												<div class="pr-info">
													<span class="break-all">Get 5% instant discount +
														10X rewards @ RENTOPC</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-7"></div>
							</div>
							<div class="row" style="margin-top: 15px;">
								<div class="col-xs-6" style="margin-left: 15px;">
									<span class="product_options">RAM Options</span><br>
									<button class="btn btn-primary btn-sm">4 GB</button>
									<button class="btn btn-primary btn-sm">8 GB</button>
									<button class="btn btn-primary btn-sm">16 GB</button>
								</div>
								<div class="col-xs-6" style="margin-left: 55px;">
									<span class="product_options">Storage Options</span><br>
									<button class="btn btn-primary btn-sm">500 GB</button>
									<button class="btn btn-primary btn-sm">1 TB</button>
								</div>
							</div>
						</div>
						<hr class="singleline">
						<div class="order_info d-flex flex-row">
							<form action="#">
						</div>
						<div class="row">
							<div class="col-xs-6" style="margin-left: 13px;">
								<div class="product_quantity">
									<span>QTY: </span> <input id="quantity_input" type="text"
										pattern="[0-9]*" value="1">
									<div class="quantity_buttons">
										<div id="quantity_inc_button"
											class="quantity_inc quantity_control">
											<i class="fas fa-chevron-up"></i>
										</div>
										<div id="quantity_dec_button"
											class="quantity_dec quantity_control">
											<i class="fas fa-chevron-down"></i>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-6">
								<button type="button" class="btn btn-primary shop-button">Add
									to Cart</button>
								<button type="button" class="btn btn-success shop-button">Buy
									Now</button>
								<div class="product_fav">
									<i class="fas fa-heart"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>