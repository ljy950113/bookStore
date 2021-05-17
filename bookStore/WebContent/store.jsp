<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter" %>    

<!DOCTYPE html>
<html>

  <!-- 해당 페이지 타이틀 -->
  <title>BookForest Store</title>

  <!-- css 파일적용 -->
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="./resources/css/style.css" rel="stylesheet">
  <link href="./resources/css/store.css" rel="stylesheet"> 
  

  <!-- 홈페이지 아이콘 -->
  <link href="./resources/images/bookicon.png" rel="icon">
  <!-- 폰트어썸 사용위한 코드 -->
  <script src="https://kit.fontawesome.com/0a1668e1e9.js" crossorigin="anonymous"></script>

<body>
	<%
		String cus_id = null;
		if (session.getAttribute("cus_id") != null) {
			cus_id = (String) session.getAttribute("cus_id");
		}

	%>

<!-- 큰 하나의 컨테이너 생성 -->
  <div class="container">

    
          	
          	<%
          		if(cus_id == null) {
          	%>
          	<!-- top menu -->
    		<div class="top_header">
      			<nav class="navbar navbar-expand w-100 navbar-light" style="background-color: #ffffff;">
        			<div class="container-fluid">
          				<div class="navbar-collapse justify-content-end" id="navbarsExample02">		
          					<ul class="navbar-nav">
              					<a class="nav-link" href="login.jsp">로그인</a>
              					<a class="nav-link" href="join.jsp">회원가입</a>	
          					</ul>
          				</div>
        			</div>
      			</nav>
    		</div>
          	<%
          		} else {
          	%>
          	<!-- top menu -->
    		<div class="top_header">
      			<nav class="navbar navbar-expand w-100 navbar-light" style="background-color: #ffffff;">
        			<div class="container-fluid">
          				<div class="navbar-collapse justify-content-end" id="navbarsExample02">		
          					<ul class="navbar-nav">
              					<a class="nav-link" href="logoutAction.jsp">로그아웃</a>
          	  					<a class="nav-link" href="mypage.jsp">마이 페이지</a>
              					<a class="nav-link" href="customerService.jsp">고객센터</a>	
          					</ul>
          				</div>
        			</div>
      			</nav>
    		</div>
          			
          	<% 		
          		}
          	%>	
          		
          		
          	
          	
          
              
              
            

    <!-- title -->
    <div class="title">
     	✨Ezen Book Store✨
    </div>
    <br>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Ezen-Store</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03"
        aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav mr-auto">

          <li class="nav-item active">
            <a class="nav-link" href="store.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
              aria-expanded="false">카테고리</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">로맨스</a>
              <a class="dropdown-item" href="#">판타지</a>
              <a class="dropdown-item" href="#">추리</a>
              <a class="dropdown-item" href="#">코믹</a>
              <a class="dropdown-item" href="#">에세이</a>
              <a class="dropdown-item" href="#">자격증</a>
            </div>
          </li>



          <li class="nav-item">
            <a class="nav-link" href="#">대여 서비스</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">추천 서비스</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">리뷰</a>
          </li>

        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search">
          <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>


    <!-- 메인 콘텐츠 슬라이드 부분 -->
    <div class="container">
      <h3 style="text-align: center; margin-top: 20px; margin-bottom: 20px; color: thistle;"><i class="fas fa-book"></i> Ezen Store Best Seller</h3>
      
      <div class="slide_wrap">
        <div class="slide_box">
          <div class="slide_list clearfix">
            <div class="slide_content slide">
              <a href="#"><img src="./resources/images/book1.jpg" alt="book1"></a>
            </div>
            <div class="slide_content slide">
              <a href="#"><img src="./resources/images/book2.jpg" alt="book2"></a>
            </div>
            <div class="slide_content slide">
              <a href="#"><img src="./resources/images/book3.jpg" alt="book3"></a>
            </div>
            <div class="slide_content slide">
              <a href="#"><img src="./resources/images/book4.jpg" alt="book4"></a>
            </div>
            <div class="slide_content slide">
              <a href="#"><img src="./resources/images/book5.jpg" alt="book5"></a>
            </div>
          </div>
          <!-- // .slide_list -->
        </div>
        <!-- // .slide_box -->
        <div class="slide_btn_box">
          <button type="button" class="slide_btn_prev">이전</button>
          <button type="button" class="slide_btn_next">다음</button>
        </div>
        <!-- // .slide_btn_box -->
        <ul class="slide_pagination"></ul>
        <!-- // .slide_pagination -->
      </div>
      <!-- // .slide_wrap -->
    </div>
    <!-- // .container -->




</div><!-- 큰 컨테이너 닫는 /div -->

<!-- 웹페이지의 하단부입니다.-->
<footer id="footer">

    

  <div class="container d-md-flex py-4">

    <div class="mr-md-auto text-center text-md-left">
      <div class="copyright">
        &copy; Copyright <strong><span>Ezen-Store</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        
        Designed by Team3
      </div>
    </div>
    <div class="social-links text-center text-md-right pt-3 pt-md-0">
      <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
      <a href="#" class="facebook"><i class="fab fa-facebook"></i></a>
      <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
    </div>
  </div>
</footer>
<!-- End Footer -->






  <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
  <script src="./resources/js/bootstrap.min.js"></script>
  <!-- 이 스크립트 파일은 네비게이션바(메뉴바)의 드롭다운 기능을 가지고있습니다.-->
  <script src="./resources/js/bundle.min.js"></script>
  <!-- 이 스크립트 파일은 메인콘텐츠의 슬라이드 효과 기능을 가지고 있습니다.-->
  <script src="./resources/js/test.js"></script>


</body>
</html>