<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>HappyHouse</h3>
              <h5>ssafy 5th 서울 8반 </h5>
              <h5>김정윤 이서영</h5>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Maxim</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->
  
    <!-- SignUp Modal -->
  <div class="modal" id="signupModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="card-title text-center mt-3">Create Account</h4>
            <form id="signupform" action="" method="post">
            <input type="hidden" name="action" value="register">
              <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                </div>
                <input id = "userid" name="userid" class="form-control" placeholder="ID" type="text">
              </div> <!-- form-group// -->
              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                </div>
                <input id = "userpwd" name="userpwd" class="form-control" placeholder="Create password" type="password">
              </div> <!-- form-group// -->
              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                </div>
                <input id = "pwdcheck" name="pwdcheck" class="form-control" placeholder="Repeat password" type="password">
              </div> <!-- form-group// -->
              <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="far fa-smile"></i></span>
                </div>
                <input id = "username" name="username" class="form-control" placeholder="Name" type="text">
              </div> <!-- form-group// -->     
              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                </div>
                <input id = "email" name="email" class="form-control" placeholder="Email address" type="email">
              </div> <!-- form-group// --> 
              <div class="form-group">
                <button type="button" onclick="javascript:signup();" class="btn btn-primary btn-block" data-dismiss="modal"> 가입하기 </button>
              </div> <!-- form-group// -->      
              <p class="text-center">Have an account? <a data-dismiss="modal" data-toggle="modal" href="#loginModal">Log In</a> </p>                                                                 
            </form>
          </article>
        </div>
      </div>
    </div>
  </div>

  <!-- Login Modal -->
  <div class="modal" id="loginModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="card-title text-center mt-3">Login</h4>
            <form id="loginform" action="" method="post">
            <input type="hidden" name="action" value="login">
              <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                </div>
                <input name="userid" id="useridL" class="form-control" placeholder="ID" type="text">
              </div> <!-- form-group// -->
              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                </div>
                <input name="userpwd" id="userpwdL" class="form-control" placeholder="Password" type="password">
              </div> <!-- form-group// -->
              <div class="form-group">
                <button type="button" onclick="javascript:login();" id="login-btn" class="btn btn-primary btn-block" data-dismiss="modal"> 로그인 </button>
              </div> <!-- form-group// -->      
              <p class="text-center">비밀번호를 잊어버리셨나요? <a data-dismiss="modal" data-toggle="modal" href="#findPWModal">비밀번호 찾기</a> </p>                                                                 
            </form>
          </article>
        </div>
      </div>
    </div>
  </div>

  <!-- Find Password Modal -->
  <div class="modal" id="findPWModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="card-title text-center mt-3">비밀번호 찾기</h4>
            <form>
              <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                </div>
                <input name="" class="form-control" placeholder="ID" type="text">
              </div> <!-- form-group// -->
              <div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="far fa-smile"></i></span>
                </div>
                <input name="" class="form-control" placeholder="Name" type="text">
              </div> <!-- form-group// -->     
              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                </div>
                <input name="" class="form-control" placeholder="Email address" type="email">
              </div> <!-- form-group// --> 
              <div class="form-group">
                <button type="submit" onclick="" class="btn btn-primary btn-block">이메일 전송 </button>
              </div> <!-- form-group// -->      
              <p class="text-center">입력하신 이메일로 임시 비밀번호가 전송됩니다.</p>                                                                 
            </form>
          </article>
        </div>
      </div>
    </div>
  </div>
  
