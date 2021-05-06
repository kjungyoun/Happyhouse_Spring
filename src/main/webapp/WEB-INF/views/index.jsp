<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<body>
<jsp:include page="/include/header.jsp"/>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
      <h1>Welcome to HappyHouse</h1>
      <h2>HappyHouse에서 주택 실거래가를 검색하고 상권 정보와 환경 정보를 볼 수 있어요!</h2>
      <a href="#features" class="btn-get-started scrollto">실거래가 검색하러 가기</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row">
          <div class="col-xl-6 col-lg-7" data-aos="fade-right">
            <img src="assets/img/about-bg.jpeg" class="img-fluid" alt="">
          </div>
          <div class="col-xl-6 col-lg-5 pt-5 pt-lg-0">
            <h3 data-aos="fade-up">About Happy House</h3>
            <p data-aos="fade-up">
              SSAFY 5기 8반 김정윤 이서영 BackEnd Project 입니다.
            </p>
            <div class="icon-box" data-aos="fade-up">
              <i class="bx bx-receipt"></i>
              <h4>관리자 아이디와 비밀번호</h4>
              <p>아이디가 'admin'이면 모두가 관리자입니다.</p>
            </div>

            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <i class="bx bx-cube-alt"></i>
              <h4>JSP와 MySQL</h4>
              <p>JSP와 MySQL을 사용한 웹 백엔드 프로젝트입니다.</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Services</h2>
          <p>저희 HappyHouse에서 제공하는 서비스들은 아래와 같습니다.</p>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="">실거래가 검색</a></h4>
              <p class="description">선택한 지역의 아파트 실거래가를 동별로 그리고 아파트별로 검색할 수 있습니다.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a href="">주변 상권 정보</a></h4>
              <p class="description">선택한 아파트 주변 동네업종 정보를 확인할 수 있습니다.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4 class="title"><a href="">대기오염 정보</a></h4>
              <p class="description">선택한 지역의 미세먼지 농도 등의 대기오염 정보를 확인할 수 있습니다.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="">공지사항</a></h4>
              <p class="description">관리자는 공지사항을 작성, 수정, 삭제, 검색할 수 있습니다.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0" data-aos="fade-right">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item"><a class="nav-link active show"
                data-toggle="tab" href="#map">
                  <h4>아파트/주택 실거래가 검색</h4>
              </a></li>
              <li class="nav-item mt-2"><a class="nav-link"
                data-toggle="tab" href="#detail">
                  <h4>실거래가 상세 검색</h4>
              </a></li>
              <li class="nav-item mt-2"><a class="nav-link"
                data-toggle="tab" href="#srcdong">
                  <h4>동 이름으로 검색해보세요.</h4>
              </a></li>
              <li class="nav-item mt-2"><a class="nav-link"
                data-toggle="tab" href="#srcapt">
                  <h4>아파트 이름으로 검색해보세요.</h4>
              </a></li>
            </ul>
            <div class="text-center" style="margin-top: 90px;">
              <button type="button" class="btn btn-info" onclick="location.href='pollutionInfo.jsp'">환경정보 보기</button>
              <button type="button" class="btn btn-warning ml-2" onclick="location.href='shopInfo.jsp'">주변상권 보기</button>
            </div>
          </div>
          <div class="col-lg-7 ml-auto" data-aos="fade-left">
            <div class="tab-content">
              <div class="tab-pane active show" id="map">

                <form method="get" action="${root}/main">
                <input type="hidden" name="action" value="searchAll">
                  <div class="form-group d-inline-block">
                    <select class="form-control" id="sel1"name="key1">
                      <option disabled selected value="all">시/도</option>
                      <option >서울시</option>
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
                  width="600" height="450" style="border: 0;"> </iframe>
              </div>
              <div class="tab-pane" id="detail">
              <form method="get" action="${root}/main">
              <input type="hidden" name="action" value="search">
              <div class="form-group d-inline-block">
                    <button type="submit" class="btn btn-primary mb-1">상세 검색하러 가기</button>
                  </div>
              </form>
              <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3168.5607561223096!2d126.74783201543875!3d37.423855740043976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7b13aab9ed93%3A0x3abb0d0829c86fdb!2z7Iqk7YOA67KF7IqkIOyduOyynOyEnOywveygkA!5e0!3m2!1sko!2skr!4v1615476247568!5m2!1sko!2skr"
                  width="600" height="450" style="border: 0;"> </iframe>
              </div>
              <div class="tab-pane" id="srcdong">
                <div class="container mt-3">
                  <form method="post" action="${root}/main">
                  <input type="hidden" name="action" value="search">
                  <input type="hidden" name="key" value="dong">
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3168.5607561223096!2d126.74783201543875!3d37.423855740043976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7b13aab9ed93%3A0x3abb0d0829c86fdb!2z7Iqk7YOA67KF7IqkIOyduOyynOyEnOywveygkA!5e0!3m2!1sko!2skr!4v1615476247568!5m2!1sko!2skr"
                    width="600" height="300" style="border: 0;"> </iframe>
                  <div class="input-group mb-3 mt-2">
                    <input type="text" class="form-control" name="word" value="">
                    <div class="input-group-append">
                      <button class="btn btn-success" type="submit">검색</button>
                    </div>
                  </div>
                  </form>
                </div>
              </div>
              <div class="tab-pane" id="srcapt">
                <div class="container mt-3">
                <form method="post" action="${root}/main">
                <input type="hidden" name="action" value="search">
                <input type="hidden" name="key" value="AptName">
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3168.5607561223096!2d126.74783201543875!3d37.423855740043976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7b13aab9ed93%3A0x3abb0d0829c86fdb!2z7Iqk7YOA67KF7IqkIOyduOyynOyEnOywveygkA!5e0!3m2!1sko!2skr!4v1615476247568!5m2!1sko!2skr"
                    width="600" height="300" style="border: 0;"> </iframe>
                  <div class="input-group mb-3 mt-2">
                    <input type="text" class="form-control" name="word" value="">
                    <div class="input-group-append">
                      <button class="btn btn-success" type="submit">검색</button>
                    </div>
                  </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Features Section -->
   
    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Team</h2>
          <p>서울 8반 7조 김정윤 이서영 입니다.</p>
        </div>

        <div class="row">
          <div class="col-xl-3 col-lg-3 col-md-3" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-3" data-aos="fade-up">
            <div class="member">
              <img src="assets/img/team/jyyy.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>김정윤</h4>
                </div>
                <div class="social">
                  <a href="https://www.instagram.com/jungyoun729/"><i class="icofont-facebook"></i></a>
                  <a href="https://www.instagram.com/jungyoun729/"><i class="icofont-instagram"></i></a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-xl-3 col-lg-3 col-md-3" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <img src="assets/img/team/seoyoung.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>이서영</h4>
                </div>
                <div class="social">
                  <a href="https://www.instagram.com/twowestzero/"><i class="icofont-facebook"></i></a>
                  <a href="https://www.instagram.com/twowestzero/"><i class="icofont-instagram"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-3" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Team Section -->

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