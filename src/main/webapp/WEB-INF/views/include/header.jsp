<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
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

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

<script type="text/javascript">
	function login() {
		if(document.getElementById("useridL").value == "") {
			alert("아이디 입력!!!");
			return;
		} else if(document.getElementById("userpwdL").value == "") {
			alert("비밀번호 입력!!!");
			return;
		} else {
			document.getElementById("loginform").action = "${root}/main";
			document.getElementById("loginform").submit();
		}
	}
	function signup(){
		if($("#username").val() == "") {
			alert("이름 입력!!!");
			return;
		} else if($("#userid").val() == "") {
			alert("아이디 입력!!!");
			return;
		} else if($("#userpwd").val() == "") {
			alert("비밀번호 입력!!!");
			return;
		} else if($("#userpwd").val() != $("#pwdcheck").val()) {
			alert("비밀번호 확인!!!");
			return;
		}else if($("#email").val() == "") {
			alert("이메일 입력!!!");
			return;
		} else {
			document.getElementById("signupform").action = "${root}/main";
			document.getElementById("signupform").submit();
		}
	}
	
	</script>
</head>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light d-inline-block"><a href="index.jsp">HappyHouse</a></h1>
        <span class="ml-1"><a href="notice.jsp">공지사항</a></span>
      </div>

      <nav class="nav-menu d-lg-block">
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#team">Team</a></li>
          
          <c:if test="${userinfo eq null}">
          	<li><a id="" href="" class="font-weight-bold" data-toggle="modal" data-target="#loginModal">Login</a></li>
          	<li><a id="" href="" class="font-weight-bold" data-toggle="modal" data-target="#signupModal">SignUp</a></li>
          </c:if>
          <c:if test="${userinfo ne null}">
	          <li><a id="" href="${root}/main?action=logout" class="font-weight-bold">Logout</a></li>
	          <li><a id="" href="${root}/main?action=mvmypage" class="font-weight-bold">MyPage</a></li>
	          <!-- 관리자가 로그인했을 때만 -->
	          <c:if test="${userinfo.userid eq 'admin'}">
	          	<li><a id="" href="${root}/main?action=memberList" class="font-weight-bold">Admin</a></li> 
	          </c:if>
		</c:if>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
