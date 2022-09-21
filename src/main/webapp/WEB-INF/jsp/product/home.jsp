<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="codepixer">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>SmartWatch</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--=============CSS====================== -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">


<link rel="stylesheet" href="/home/css/linearicons.css">
<link rel="stylesheet" href="/home/css/font-awesome.min.css">
<link rel="stylesheet" href="/home/css/bootstrap.css">
<link rel="stylesheet" href="/home/css/magnific-popup.css">
<link rel="stylesheet" href="/home/css/nice-select.css">
<link rel="stylesheet" href="/home/css/animate.min.css">
<link rel="stylesheet" href="/home/css/owl.carousel.css">
<link rel="stylesheet" href="/home/css/main.css">


</head>
<style type="text/css">
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

div.gio-hang {
	width: 80%;
	min-height: 200px;
	position: fixed;
	top: 100px;
	right: 10%;
	background: #f1f1f1;
	display: none;
	border: 1px solid #000;
	z-index: 1;
	border-radius: 5px;
}

button.close {
	float: right;
}

button.mo-gio-hang {
	background-color: #fff;
	position: fixed;
	right: 0;
	top: 58px;
	border: 1px solid #ddd;
	border-radius: 3px;
	padding: 7px 8px;
}

input {
	border-radius: 5px;
	border: none;
}

.unique-feature-area {
	background-color: #f9f9ff;
}

.single-unique-product {
	border: 1px solid #ddd;
	cursor: pointer;
}

.single-unique-product:hover {
	-webkit-box-shadow: 0 2px 12px rgb(0 0 0/ 12%);
	box-shadow: 0 2px 12px rgb(0 0 0/ 12%);
}

.section-gap {
	padding-bottom: 50px;
	padding-top: 10px;
}

button.xep {
	padding: 3px 10px;
	border: 1px solid #ddd;
	background: none;
	font-weight: 500;
	border-radius: 5px;
}

.pb-60 {
	padding-bottom: 20px;
}

.imgz {
	margin-top: 20px;
	transition: 0.6s;
}

.imgz:hover {
	margin-top: 10px;
	margin-bottom: 10px;
	transition: 0.6s;
}

.zoom:hover {
	color: #288ad6;
}

button.ser {
	border: none;
	border-radius: 5px;
	width: 35px;
}

.name {
	font-weight: 450 !important;
}

.name:hover {
	color: #288ad6;
}

.price {
	background-color: #f9f9ff;
	padding-bottom: 10px;
}

.desc {
	padding-bottom: 5px !important;
}
</style>

<body>
	<button class="mo-gio-hang">
		<i class="fas fa-shopping-cart"></i>
	</button>
	<div class="gio-hang">
		<button class="close">
			<i class="fas fa-times"></i>
		</button>
		<div id="table-content"></div>
	</div>
	<header id="header" id="home">
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="/product/home"><img src="/home/img/logo.png" alt=""
						title="" /></a>
				</div>
				<sf:form modelAttribute="searchForm" acion="search" method="get">

					<sf:input path="name" placeholder=" Search..." />
					<button type="submit" class="ser">
						<i class="fas fa-search"></i>
					</button>

					<sf:input type="hidden" path="xepTheo" id="xepTheoInput" />
					<sf:input type="hidden" path="thuTu" id="thuTuInput" />
					<sf:input type="hidden" path="trang" id="trangInput" />

				</sf:form>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="menu-active"><a href="/product/home"><s:message
									code="lo.index.home" /></a></li>
						<li><a href="#about"><s:message code="lo.index.about" /></a></li>
						<li><a href="#service"><s:message code="lo.index.service" /></a></li>
						<li><a href="#unique"><s:message code="lo.index.product" /></a></li>
						<li><a href="#review"><s:message code="lo.index.review" /></a></li>
						<li></li>
						<li class="menu-has-children"><a href="#"><s:message
									code="lo.index.pages" /></a>
							<ul>
								<li><a href="/product/listProducts">Dashboard</a></li>
								<li><a
									href="${requestScope['javax.servlet.forward.request_uri']}?lang=en">
										<s:message code="lo.index.en" />
								</a> <a
									href="${requestScope['javax.servlet.forward.request_uri']}?lang=vi">
										<s:message code="lo.index.vi" />
								</a></li>
							</ul></li>

					</ul>
				</nav>

				<!-- #nav-menu-container -->
			</div>
		</div>

	</header>
	<!-- #header -->


	<!-- start banner Area -->
	<section class="banner-area" id="home">
		<div class="container">
			<div
				class="row fullscreen d-flex align-items-center justify-content-center">
				<div class="banner-content col-lg-10">
					<h5 class="text-white text-uppercase">Now you can feel the
						Heat</h5>
					<h1>Smart New Future</h1>
					<a href="#" class="primary-btn text-uppercase">Buy Now</a>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- Start video-sec Area -->
	<section class="video-sec-area section-gap" id="about">
		<div class="container">
			<div class="row justify-content-center align-items-center ">
				<div class="col-lg-6 video-left">
					<h6>Brand new app to blow your mind</h6>
					<h1>
						We’ve made a life <br> that will change you
					</h1>
					<p>
						<span>We are here to listen from you deliver exellence</span>
					</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod temp or incididunt ut labore et dolore magna
						aliqua. Ut enim ad minim.</p>
					<a class="primary-btn" href="#">Get Started now</a>
				</div>
				<div
					class="col-lg-6 video-right justify-content-center align-items-center d-flex">
					<div class="overlay overlay-bg"></div>
					<a class="play-btn"
						href="https://www.youtube.com/watch?v=ARA0AxrnHdM"><img
						class="img-fluid" src="/home/img/play-icon.png" alt=""></a>
				</div>
			</div>
		</div>
	</section>
	<!-- End video-sec Area -->

	<!-- Start top-course Area -->
	<section class="top-course-area section-gap">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-60 col-lg-10">
					<div class="title text-center">
						<h1 class="mb-10">Top Courses That are open for Students</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-3 course-left">
					<div class="single-course">
						<span class="lnr lnr-rocket"></span> <a href="#"><h4>High
								Performance</h4></a>
						<p>Lorem ipsum dolor sit amet, consectetur adipisic ing elit,
							seddo eiusmod tempor incid.idunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div class="single-course">
						<span class="lnr lnr-cog"></span> <a href="#"><h4>High
								Performance</h4></a>
						<p>Lorem ipsum dolor sit amet, consectetur adipisic ing elit,
							seddo eiusmod tempor incid.idunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
				<div class="col-lg-6 course-middle">
					<img class="img-fluid mx-auto d-block" src="/home/img/c1.png"
						alt="">
				</div>
				<div class="col-lg-3 course-right">
					<div class="single-course">
						<span class="lnr lnr-apartment"></span> <a href="#"><h4>High
								Performance</h4></a>
						<p>Lorem ipsum dolor sit amet, consectetur adipisic ing elit,
							seddo eiusmod tempor incid.idunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div class="single-course">
						<span class="lnr lnr-phone"></span> <a href="#"><h4>High
								Performance</h4></a>
						<p>Lorem ipsum dolor sit amet, consectetur adipisic ing elit,
							seddo eiusmod tempor incid.idunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End top-course Area -->



	<!-- Start service Area -->
	<section class="service-area section-gap" id="service">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-md-8 pb-40 header-text">
					<h1>Some Features that Made us Unique</h1>
					<p>Who are in extremely love with eco friendly system.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4>
							<span class="lnr lnr-user"></span>Expert Technicians
						</h4>
						<p>Usage of the Internet is becoming more common due to rapid
							advancement of technology and power.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4>
							<span class="lnr lnr-license"></span>Professional Service
						</h4>
						<p>Usage of the Internet is becoming more common due to rapid
							advancement of technology and power.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4>
							<span class="lnr lnr-phone"></span>Great Support
						</h4>
						<p>Usage of the Internet is becoming more common due to rapid
							advancement of technology and power.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4>
							<span class="lnr lnr-rocket"></span>Technical Skills
						</h4>
						<p>Usage of the Internet is becoming more common due to rapid
							advancement of technology and power.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4>
							<span class="lnr lnr-diamond"></span>Highly Recomended
						</h4>
						<p>Usage of the Internet is becoming more common due to rapid
							advancement of technology and power.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4>
							<span class="lnr lnr-bubble"></span>Positive Reviews
						</h4>
						<p>Usage of the Internet is becoming more common due to rapid
							advancement of technology and power.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End service Area -->

	<!-- Start unique-feature Area -->
	<section class="unique-feature-area section-gap" id="unique">

		<div class="container">
			<div class="row d-flex justify-content-left">
				<div class="menu-content pb-60 col-lg-10">
					<div style="margin-bottom: 10px; font-weight: 600; font-size: 17px">SmartWatch</div>
					<div class="title text-left">
						<button xepTheo="name" class="xep">
							<s:message code="lo.index.name" />
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
								<s:message code="lo.index.price" />
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
					</div>
				</div>
			</div>

			<div id="myCarousel" class="carousel slide">
				<div class="carousel-inner">
					<div class="item">
						<div class="row">

							<c:forEach var="product" items="${products}">
								<div class="col-md-3">

									<div class="single-unique-product">
										<div class="zoom">
											<div class="imgz">
												<a href="/them-vao-gio/${product.productId}"> <img
													src="${product.image}" style="width: 170px">
												</a>
											</div>
											<div class="desc">
												<div class="name" style="font-weight: 600; font-size: 16px">
													${product.name}</div>
											</div>
										</div>
										<div class="price">${product.price}₫</div>

									</div>

								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<ul class="pagination" style="margin-left: 12px">
					<li><c:if test="${maxPage > 0}">
							<c:forEach var="pageIndex" begin="0" end="${maxPage - 1}">
								<a trang="${pageIndex}"
									class="trang<c:if test="${pageIndex == searchForm.trang}"> active</c:if>">
									${pageIndex + 1}</a>
							</c:forEach>
						</c:if></li>
				</ul>

			</div>
		</div>
	</section>
	<!-- End unique-feature Area -->

	<!-- Start review Area -->
	<section class="review-area section-gap" id="review">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-60 col-lg-10">
					<div class="title text-center">
						<h1 class="mb-10">Some Features that Made us Unique</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-review">
						<h4>Cody Hines</h4>
						<p>Accessories Here you can find the best computer accessory
							for your laptop, monitor, printer, scanner, speaker.</p>
						<div class="star">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-review">
						<h4>Chad Herrera</h4>
						<p>Accessories Here you can find the best computer accessory
							for your laptop, monitor, printer, scanner, speaker.</p>
						<div class="star">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-review">
						<h4>Andre Gonzalez</h4>
						<p>Accessories Here you can find the best computer accessory
							for your laptop, monitor, printer, scanner, speaker.</p>
						<div class="star">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span> <span class="fa fa-star"></span>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-review">
						<h4>Jon Banks</h4>
						<p>Accessories Here you can find the best computer accessory
							for your laptop, monitor, printer, scanner, speaker.</p>
						<div class="star">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-review">
						<h4>Landon Houston</h4>
						<p>Accessories Here you can find the best computer accessory
							for your laptop, monitor, printer, scanner, speaker.</p>
						<div class="star">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-review">
						<h4>Nelle Wade</h4>
						<p>Accessories Here you can find the best computer accessory
							for your laptop, monitor, printer, scanner, speaker.</p>
						<div class="star">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End review Area -->
	<!-- start footer Area -->
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Us</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore dolore magna aliqua.</p>
						<p class="footer-text">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
				<div class="col-lg-5  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>Stay update with our latest</p>
						<div class="" id="mc_embed_signup">
							<form target="_blank" novalidate="true"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">
								<input class="form-control" name="EMAIL"
									placeholder="Enter Email" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Enter Email '" required=""
									type="email">
								<button class="click-btn btn btn-default">
									<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
								</button>
								<div style="position: absolute; left: -5000px;">
									<input name="b_36c4fd991d266f23781ded980_aefe40901a"
										tabindex="-1" value="" type="text">
								</div>

								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>Let us be social</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-dribbble"></i></a> <a href="#"><i
								class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>


	<script>
      		$('button.close').click(function () {
      			$(this).parent().css("display", "none");
      		});
      		$('button.mo-gio-hang').click(function() {
      			$('div.gio-hang').css("display", "block");
      			fetch('/gio-hang')
      			.then(response => response.text())
      			.then(data => {
      				$('#table-content').html(data);
      			});
      		});
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
		</script>
	<script src="/home/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="/home/js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="/home/js/easing.min.js"></script>
	<script src="/home/js/hoverIntent.js"></script>
	<script src="/home/js/superfish.min.js"></script>
	<script src="/home/js/jquery.ajaxchimp.min.js"></script>
	<script src="/home/js/jquery.magnific-popup.min.js"></script>
	<script src="/home/js/owl.carousel.min.js"></script>
	<script src="/home/js/jquery.sticky.js"></script>
	<script src="/home/js/jquery.nice-select.min.js"></script>
	<script src="/home/js/parallax.min.js"></script>
	<script src="/home/js/mail-script.js"></script>
	<script src="/home/js/main.js"></script>
</body>
</html>