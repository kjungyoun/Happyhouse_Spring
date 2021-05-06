<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <script>
  	function updateProfile(){
  		if($("#usernameU").val() == "") {
			alert("이름 입력!!!");
			return;
		} else if($("#useridU").val() == "") {
			alert("아이디 입력!!!");
			return;
		} else if($("#userpwdU").val() == "") {
			alert("비밀번호 입력!!!");
			return;
		} else if($("#emailU").val() == "") {
			alert("이메일 입력!!!");
			return;
		} else {
			document.getElementById("updateform").action = "${root}/main";
			document.getElementById("updateform").submit();
		}
  	}
  	
  	function moveDelete() {
  		document.location.href = "${root}/main?action=delete";
  	}
  </script>
</head>

<c:if test="${userinfo eq null}">
	<script>
		alert("로그인이 필요한 페이지입니다.\n로그인 페이지로 이동합니다.");
		location.href = "main";
	</script>
</c:if>
<c:if test="${userinfo ne null}">
<body>
  <jsp:include page="/include/header.jsp"/>
  <div class="jumbotron jumbotron-fluid">
      <img src="assets/img/house.jpeg" class="jumbotron__background">
    <div class="container text-white text-center">
      <h1 class="display-4">My Page</h1>
      <p class="lead"></p>
    </div>
  </div>
  <!-- /.jumbotron -->

  <main id="main">
    <section id="" class="p-1">
      <div class="container card-body">
        <h2 class="card-title text-center">회원 정보</h2>
        <table class="table mx-auto mb-5" style="width: 70%;">
          <tbody>
            <tr>
              <th>아이디</th>
              <td>${userinfo.userid}</td>
            </tr>
            <tr>
              <th>비밀번호</th>
              <td>${userinfo.userpwd}</td>
            </tr>
            <tr>
              <th>이름</th>
              <td>${userinfo.username}</td>
            </tr>
            <tr>
              <th>이메일</th>
              <td>${userinfo.email}</td>
            </tr>
          </tbody>
        </table><hr>
        <div class="text-center">
          <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#updateModal">회원정보 수정</button>
          <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#deleteModal">탈퇴</button>
        </div>
      </div>
    </section><!-- End About Section -->
    
  </main><!-- End #main -->

<jsp:include page="/include/footer.jsp"/>

  <!-- Update user info Modal -->
  <div class="modal" id="updateModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="card-title text-center mt-3">회원정보 수정</h4>
            <form id="updateform" method="post" action="">
            <input type="hidden" name="action" value="modify">
              <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                </div>
                <input id="useridU" name="userid" class="form-control" value="${userinfo.userid}" type="text">
              </div> <!-- form-group// -->
              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                </div>
                <input  id="userpwdU" name="userpwd"  class="form-control" value="${userinfo.userpwd}" type="password">
              </div> <!-- form-group// -->
              <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="far fa-smile"></i></span>
                </div>
                <input id="usernameU" name="username" class="form-control" value="${userinfo.username}" type="text">
              </div> <!-- form-group// -->     
              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                </div>
                <input id="emailU" name="email" class="form-control" value="${userinfo.email}" type="email">
              </div> <!-- form-group// --> 
              <div class="form-group">
                <button type="button" onclick="updateProfile();" class="btn btn-primary btn-block"> 수정하기 </button>
              </div> <!-- form-group// -->      
            </form>
          </article>
        </div>
      </div>
    </div>
  </div>

  <!-- Delete Modal -->
  <div class="modal" id="deleteModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <h5 class="text-center mt-3">정말 탈퇴하시겠습니까?</h5>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger logout-nav" onclick="moveDelete();">확인</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>

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
</c:if>
</html>