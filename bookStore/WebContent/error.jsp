<%@ page language="java" contentType="text/html; charset=utf-8"%>
    
<!DOCTYPE html>
<html>
<head>
<title>ERRORPAGE</title>


<!-- css 파일적용 -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/style.css" rel="stylesheet">
<link href="./resources/css/store.css" rel="stylesheet">
<!-- 폰트어썸 사용위한 코드 -->
<script src="https://kit.fontawesome.com/0a1668e1e9.js" crossorigin="anonymous"></script>
  

<title>Error_page</title>
<style>

.link > a {
	font-size: 40px;
	font-family: 'Jua', sans-serif;
	font-weight:bold;
	text-decoration: none;
	color: #3a4ca8;
	padding : 100px;
}

</style>
</head>
<body>
	
	<!-- 큰 하나의 컨테이너 생성 -->
    <div class="container">
	
	<!-- header.jsp 파일을 불러옵니다. -->
    <%@ include file="header.jsp" %>


	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger"> 요청하신 페이지를 찾을 수 없습니다 </h2>
			<div class="link">
				<a href="store.jsp">#홈으로 이동</a> <br/>
				<a href="login.jsp">#로그인 페이지로 이동</a>
			</div>
		</div>
	</div>
	
</div><!-- 큰 컨테이너 닫는 /div -->

<!-- footer.jsp 파일을 불러옵니다. -->
<%@ include file="footer.jsp" %>

</body>
</html>