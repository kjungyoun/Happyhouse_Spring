<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<body>
  <jsp:include page="/include/header.jsp"/>

  <div class="jumbotron jumbotron-fluid">
      <img src="assets/img/shop-bg.png" class="jumbotron__background">
    <div class="container text-white text-center">
      <h1 class="display-4">상권 정보를 확인하세요!</h1>
      <p class="lead"></p>
    </div>
  </div>
  <!-- /.jumbotron -->

  <main id="main">
    <section id="" class="p-1">
      <div class="container">
        <div class="m-3">
          <h3>"E편한세상 서창아파트" 주변 상권</h3>
        </div>
        <!--Google map-->
        <div id="map-container-google-1" class="z-depth-1-half map-container">
          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3168.535674635454!2d126.74790741904523!3d37.42444842777541!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3abb0d0829c86fdb!2z7Iqk7YOA67KF7IqkIOyduOyynOyEnOywveygkA!5e0!3m2!1sko!2skr!4v1615535152208!5m2!1sko!2skr" width="500" height="380" style="border:0;"></iframe>
        </div>
        <!--Google Maps-->
        <div class="mb-5">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#aaa">음식점</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" data-toggle="tab" href="#bbb">카페</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#ccc">술집</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#ddd">마트</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#eee">편의점</a>
            </li>
          </ul>
          <div class="tab-content mb-3">
            <div class="tab-pane fade" id="aaa">
              <div class="row">
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    스타벅스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    투썸플레이스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    알베로테라
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    Cafe Coco.
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade show active" id="bbb">
              <div class="row">
                <div class="col-3 p-3">
                  <img src="assets/img/shop/IMG_5905.jpg" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    스타벅스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/IMG_5906.jpg" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    투썸플레이스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/IMG_5907.jpg" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    알베로테라
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/IMG_5908.jpg" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    Cafe Coco.
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="ccc">
              <div class="row">
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    스타벅스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    투썸플레이스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    알베로테라
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    Cafe Coco.
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="ddd">
              <div class="row">
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    스타벅스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    투썸플레이스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    알베로테라
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    Cafe Coco.
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="eee">
              <div class="row">
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    스타벅스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    투썸플레이스 인천서창점
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    알베로테라
                  </div>
                </div>
                <div class="col-3 p-3">
                  <img src="assets/img/shop/ex.png" class="img-fluid p-2" alt="">
                  <div class="shop-info-content text-center">
                    Cafe Coco.
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
	</div>
    </section><!-- End About Section -->
    
  </main><!-- End #main -->

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