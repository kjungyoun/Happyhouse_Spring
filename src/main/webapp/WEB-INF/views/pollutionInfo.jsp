<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<body>
	<jsp:include page="/include/header.jsp"/>

	<div class="jumbotron jumbotron-fluid">
		<img src="assets/img/미세먼지2.jpg"
			class="jumbotron__background"> 
		<div class="container text-white text-center">
			<h4 class="display-4">관심 지역의 대기오염 정보를 확인하세요.</h4>
			<p class="lead"></p>
		</div>
	</div>
	<!-- /.jumbotron -->

	<main id="main">
	<section id="airinfo" class="p-1">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0" data-aos="fade-right">
					<ul class="nav nav-tabs flex-column">
						<div>
							<h3 class="title">관심 지역 대기질 정보</h3>
							<h5 class="title">2021년 xx월 xx일 xx시</h5>

							<div class="separator-2"></div>
							<div class="media margin-clear">
								<div class="media-body">
									<h4>
										<a href="">종로구</a>
									</h4>
									<h6 class="media-heading" id="">미세먼지 : 42㎍/㎥(보통)</h6>
									<h6 class="media-heading" id="">초미세먼지 : 24㎍/㎥(보통)</h6>
									<h6 class="media-heading" id="">알림 : 대기 오염도가 높지 않습니다.</h6>
								</div>
							</div>
							<hr>
							<div class="media margin-clear">
								<div class="media-body">
									<h4>
										<a href="">용산구</a>
									</h4>
									<h6 class="media-heading" id="">미세먼지 : 80㎍/㎥(나쁨)</h6>
									<h6 class="media-heading" id="">초미세먼지 : 80㎍/㎥(나쁨)</h6>
									<h6 class="media-heading" id="">알림 : 야외활동을 자제하세요.</h6>
								</div>
							</div>
						</div>
					</ul>
				</div>
				<div class="col-lg-7 ml-auto" data-aos="fade-left">
					<form>
						<div class="form-group d-inline-block">
						  <select class="form-control" id="sel1">
							<option disabled selected>시/도</option>
							<option>서울시</option>
							<option>경기도</option>
							<option>인천시</option>
						  </select>
						</div>
						<div class="form-group d-inline-block">
						  <select class="form-control" id="sel2">
							<option disabled selected>시/구/군</option>
							<option>종로구</option>
							<option>용산구</option>
							<option>마포구</option>
						  </select>
						</div>
						<div class="form-group d-inline-block">
						  <select class="form-control" id="sel3">
							<option disabled selected>동</option>
							<option>청운동</option>
							<option>안국동</option>
							<option>돈의동</option>
						  </select>
						</div>
						<div class="form-group d-inline-block">
						  <button type="submit" class="btn btn-primary mb-1">검색</button>
						</div>
					  </form>
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3168.5607561223096!2d126.74783201543875!3d37.423855740043976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7b13aab9ed93%3A0x3abb0d0829c86fdb!2z7Iqk7YOA67KF7IqkIOyduOyynOyEnOywveygkA!5e0!3m2!1sko!2skr!4v1615476247568!5m2!1sko!2skr"
							width="600" height="450" style="border: 0" class="mb-3">
						</iframe>
				</div>
			</div>
		</div>
	</section>
	<!-- End About Section --> </main>
	<!-- End #main -->

<jsp:include page="/include/footer.jsp"/>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<script src="assets/js/user.js"></script>

</body>

</html>