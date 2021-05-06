<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>HappyHouse</title>

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <script type="text/javascript">
		$(function() {
			//검색 버튼에 이벤트 연결
			$('#sub').click(function () {
				pagelist(1);
			})
			<c:if test='${not empty param.key}'>
		 		$('#key').val('${param.key}')
			</c:if>
		})
		function pagelist(cpage){
			//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
			$("#pageNo").val(cpage);
			$("#action").val("memberList");
			var frm = $("#form");
			frm.attr('action',"${root}/main");
			frm.submit();
		}
	  </script>
</head>

<body>
  <jsp:include page="/include/header.jsp"/>

  <div class="jumbotron jumbotron-fluid">
      <img src="assets/img/bg-index.jpg" class="jumbotron__background">
    <div class="container text-white text-center">
      <h1 class="display-4">Administration</h1>
      <p class="lead"></p>
    </div>
  </div>
  <!-- /.jumbotron -->

  <main id="main">
    <section id="" class="">
      <div class="container">
        <div class="row">
          <div class="col-12 mb-3">
            <h3 class="text-center">HappyHouse 회원 검색</h3>
          </div>
          <div class="col-12 mb-3">
           
            <form id="form" class="form-inline" style="float : right">
            <input type="hidden" name="pageNo" id="pageNo">
            <input type="hidden" name="action" id="action">
            <select class="form-control" id="key" name="key" style="width: 150px">
							<option value="all">전체 검색</option>
							<option value="id">아이디로 검색</option>
							<option value="name">이름으로 검색</option>
							<option value="email">이메일로 검색</option>
						  </select>
              <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" name="word" value="${bean.word}"/>
                <button type="button" id="sub" class="btn btn-primary">검색</button>
            </form>
          </div>
          <div class="col-12">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th scope="col">No</th>
                  <th scope="col">ID</th>
                  <th scope="col">이름</th>
                  <th scope="col">이메일</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach var="mem" items="${members}">
              	<tr>
                  <td>
                    <div class="custom-control custom-checkbox user-select">
                        <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                        <label class="custom-control-label" for="customCheck1">#</label>
                    </div>
                  </td>
                  <td>${mem.userid}</td>
                  <td>${mem.username}</td>
                  <td>${mem.email}</td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
          <div class="col-12 mt-3" align="center">
            ${bean.pageLink}
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

  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script src="assets/js/user.js"></script>
</body>

</html>