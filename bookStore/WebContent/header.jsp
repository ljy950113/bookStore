<%@ page language="java" contentType="text/html; charset=utf-8" %>


			<%
				String cus_id = null;
				if (session.getAttribute("cus_id") != null) {
					cus_id = (String) session.getAttribute("cus_id");
				}
				
				
				
				

			%>

    
          	
          	<%
          		if(cus_id == null) {
          	%>
          	
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
          		} else if(cus_id.equals("admin")) {
          		
          	%>	
          		<div class="top_header">
					<nav class="navbar navbar-expand w-100 navbar-light" style="background-color: #ffffff;">
						<div class="container-fluid">
							<div class="navbar-collapse justify-content-end" id="navbarsExample02">
								<ul class="navbar-nav">
									<a class="nav-link">관리자님</a>
									<a class="nav-link" href="logoutAction.jsp">로그아웃</a>
									<a class="nav-link" href="addbook.jsp">책 입고하기</a>
									<a class="nav-link" href="editBook.jsp?edit=update">상품 관리 하기</a>
									<a class="nav-link" href="editBook.jsp?edit=delete">상품 삭제 하기</a>
									<a class="nav-link" href="customerService.jsp">고객센터</a>
								</ul>
							</div>
						</div>
					</nav>
				</div>
          	
          		
          	
          		
          		
          	<%	
          		} else {
          	%>
          	
    		<div class="top_header">
      			<nav class="navbar navbar-expand w-100 navbar-light" style="background-color: #ffffff;">
        			<div class="container-fluid">
          				<div class="navbar-collapse justify-content-end" id="navbarsExample02">		
          					<ul class="navbar-nav">
          						<a class="nav-link"><%= cus_id %>님</a>
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