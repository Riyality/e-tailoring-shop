<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" dir="ltr" data-nav-layout="vertical"
	data-theme-mode="light" data-header-styles="light"
	data-menu-styles="dark" data-toggled="close">

<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>


<!-- Meta Data -->
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="Description"
	content="Laravel Bootstrap Responsive Admin Web Dashboard Template">
<meta name="Author" content="Spruko Technologies Private Limited">
<meta name="keywords"
	content="laravel admin panel, admin template, admin dashboard, admin, admin panel, laravel template, laravel admin, dashboard, admin dashboard template, admin panel template, template dashboard, bootstrap dashboard, bootstrap admin template, laravel dashboard, dashboard bootstrap 5">

<!-- TITLE -->
<title>Tailoring Shop Management</title>

<!-- Favicon -->
<link rel="icon"
	href="<c:url value="/resources/assets/img/brand-logos/favicon.ico"/>"
	type="image/x-icon">

<!-- ICONS CSS -->
<link href="<c:url value="/resources/assets/icon-fonts/icons.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/assets/css/custom.css"/>"
	rel="stylesheet">

<!-- Choices JS -->
<script
	src="<c:url value="/resources/assets/libs/choices.js/public/assets/scripts/choices.min.js"/>"></script>

<!-- Bootstrap Css -->
<link id="style"
	href="<c:url value="/resources/assets/libs/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- Node Waves Css -->
<link
	href="<c:url value="/resources/assets/libs/node-waves/waves.min.css"/>"
	rel="stylesheet">

<!-- Simplebar Css -->
<link
	href="<c:url value="/resources/assets/libs/simplebar/simplebar.min.css"/>"
	rel="stylesheet">

<!-- Color Picker Css -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/flatpickr/flatpickr.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/%40simonwep/pickr/themes/nano.min.css"/>">

<!-- Choices Css -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/choices.js/public/assets/styles/choices.min.css"/>">
<!-- APP CSS & APP SCSS -->
<link rel="preload" as="style"
	href="<c:url value="/resources/assets/app-C3rLMrk5.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/assets/app-C3rLMrk5.css"/>" />
<!-- Main Theme Js -->
<script src="<c:url value="/resources/assets/main.js"/>"></script>


<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/jsvectormap/css/jsvectormap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/libs/swiper/swiper-bundle.min.css"/>">
<link href="https://cdn.jsdelivr.net/npm/remixicon/fonts/remixicon.css"
	rel="stylesheet">
<style>
.table {
	margin-left: '200px !important';
}

.side-menu__item {
	display: flex;
	align-items: center;
	padding: 10px;
	text-decoration: none;
	color: #333;
}

.side-menu__icon {
	margin-right: 10px;
}

.sub-menu {
	display: none;
	list-style: none;
	padding-left: 20px;
}

.sub-menu li {
	margin-top: 5px;
}
</style>
</head>

<body class="">

	<!-- Switcher -->


	<!-- Loader -->
	<div id="loader">
		<img src="<c:url value="/resources/assets/img/media/loader.svg"/>"
			alt="">
	</div>
	<!-- Loader -->

	<div class="page">

		<!-- Main-Header -->
		<header class="app-header">

			<!-- Start::main-header-container -->
			<div class="main-header-container container-fluid">

				<!-- Start::header-content-left -->
				<div class="header-content-left">

					<!-- Start::header-element -->
					<div class="header-element">
						<div class="horizontal-logo">
							<a href="index.html" class="header-logo"> <img
								src="<c:url value="/resources/assets/img/brand-logos/desktop-logo.png"/>"
								alt="logo" class="desktop-logo"> <img
								src="<c:url value="/resources/assets/img/brand-logos/toggle-logo.png"/>"
								alt="logo" class="toggle-logo"> <img
								src="<c:url value="/resources/assets/img/brand-logos/desktop-dark.png"/>"
								alt="logo" class="desktop-dark"> <img
								src="<c:url value="/resources/assets/img/brand-logos/toggle-dark.png"/>"
								alt="logo" class="toggle-dark"> <img
								src="<c:url value="/resources/assets/img/brand-logos/desktop-white.png"/>"
								alt="logo" class="desktop-white"> <img
								src="<c:url value="/resources/assets/img/brand-logos/toggle-white.png"/>"
								alt="logo" class="toggle-white">
							</a>
						</div>
					</div>
					<!-- End::header-element -->
					<!-- Start::header-element -->
					<div class="header-element">
						<!-- Start::header-link -->
						<div class="">
							<a class="sidebar-toggle sidemenu-toggle header-link"
								data-bs-toggle="sidebar" href="javascript:void(0);"> <span
								class="sr-only">Toggle Navigation</span> <i
								class="ri-arrow-right-circle-line header-icon"></i>
							</a>
						</div>
						<!-- <a aria-label="Hide Sidebar" class="sidemenu-toggle header-link animated-arrow hor-toggle horizontal-navtoggle" data-bs-toggle="sidebar" href="javascript:void(0);"><span></span></a> -->
						<!-- End::header-link -->
					</div>
					<!-- End::header-element -->


				</div>
				<!-- End::header-content-left -->

				<!-- Start::header-content-right -->
				<div class="header-content-right">

					<!-- Start::header-element -->


					<!-- Start::header-element -->


					<!-- Start::header-element -->
					<div class="header-element">
						<!-- Start::header-link|dropdown-toggle -->
						<a href="javascript:void(0);" class="header-link dropdown-toggle"
							id="mainHeaderProfile" data-bs-toggle="dropdown"
							data-bs-auto-close="outside" aria-expanded="false">
							<div class="d-flex align-items-center">
								<div class="">
									<img src="<c:url value="/resources/assets/img/users/1.jpg"/>"
										alt="img" width="30" height="30" class="rounded-circle">
								</div>
							</div>
						</a>
					</div>
					<!-- End::header-element -->

				</div>
				<!-- End::header-content-right -->

			</div>
			<!-- End::main-header-container -->


		</header>
		<!-- End Main-Header -->

		<!--Main-Sidebar-->
		<aside class="app-sidebar" id="sidebar">

			<!-- Start::main-sidebar-header -->
			<div class="main-sidebar-header">
				<a href="/home" class="header-logo"> <img
					src='<c:url value="/resources/assets/img/logos/logo.png"/>'
					width="120px" alt="logo">
				</a>
			</div>
			<!-- End::main-sidebar-header -->

			<!-- Start::main-sidebar -->
			<div class="main-sidebar " id="sidebar-scroll">

				<!-- Start::nav -->
				<nav class="main-menu-container nav nav-pills flex-column sub-open">
					<div class="slide-left" id="slide-left"></div>
					<ul class="main-menu">
						<!-- Start::slide__category -->
						<li class="slide__category"><span class="category-name">Riyality
								Softwares</span></li>
						<!-- End::slide__category -->

						<!-- Start::slide -->
						<li class="slide  has-sub"><a href="/home"
							class="side-menu__item"> <i
								class="ri-home-8-line side-menu__icon"></i> <span
								class="side-menu__label">Dashboard</span>
						</a></li>
						<!-- End::slide -->

						<!-- Start::slide__category -->
						<li class="slide__category"><span class="category-name">Measurements</span></li>
						<!-- End::slide__category -->






						<!-- Start::slide -->

						<li class="slide has-sub"><a href="#" class="side-menu__item">
								<i class="ri-inbox-line side-menu__icon"></i> <span
								class="side-menu__label">Employee</span>
						</a></li>

						<li class="slide has-sub"><a href="/employees/add-form"
							class="side-menu__item"> <i
								class="ri-inbox-line side-menu__icon"></i> <span
								class="side-menu__label">Add Employee</span>
						</a></li>
						<li class="slide has-sub"><a href="/employees/allemployee"
							class="side-menu__item"> <i
								class="ri-inbox-line side-menu__icon"></i> <span
								class="side-menu__label">All Employee</span>
						</a></li>




						</li>
						
						
						 <li class="slide has-sub"><a href="/recipt/add_recipt"
							class="side-menu__item"> <i
								class="ri-inbox-line side-menu__icon"></i> <span
								class="side-menu__label">Recipt</span>
						</a></li>

						</li>
                   

					</ul>





					<!-- End::slide -->


					<!-- Start::slide -->




					<!-- End::slide -->


					<!-- Start::slide -->


					<li class="slide has-sub"><a href="#" class="side-menu__item">
							<i class="ri-inbox-line side-menu__icon"></i> <span
							class="side-menu__label">Customer</span>
					</a></li>


					<li class="slide has-sub"><a
						href="/customers/add_customer_form" class="side-menu__item"> <i
							class="ri-inbox-line side-menu__icon"></i> <span
							class="side-menu__label">Add Customer</span>
					</a></li>

					<li class="slide has-sub"><a href="/customers/allcustomer"
						class="side-menu__item"> <i
							class="ri-inbox-line side-menu__icon"></i> <span
							class="side-menu__label">All Customer</span>
					</a></li>


					<li class="slide has-sub"><a href="/dropdowns/add-dropdown"
						class="side-menu__item"> <i
							class="ri-inbox-line side-menu__icon"></i> <span
							class="side-menu__label">Configuration</span>
					</a></li>

					</li>


					<!-- End::slide -->


					<div class="slide-right" id="slide-right">
						<svg xmlns="http://www.w3.org/2000/svg" fill="#7b8191" width="24"
							height="24" viewBox="0 0 24 24">
								<path
								d="M10.707 17.707 16.414 12l-5.707-5.707-1.414 1.414L13.586 12l-4.293 4.293z"></path>
							</svg>
					</div>
				</nav>
				<!-- End::nav -->

			</div>
			<!-- End::main-sidebar -->

		</aside>
		<!-- End Main-Sidebar-->