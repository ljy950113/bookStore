<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    
    <!-- 해당 페이지 타이틀 -->
    <title>BookForest Login</title>
    <!-- css 파일적용 -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="./resources/css/login.css" rel="stylesheet" >
    <link href="./resources/css/style.css" rel="stylesheet" > 
    
    
    <!-- 홈페이지 아이콘 -->
	<link href="./resources/images/bookicon.png" rel="icon">
	<!-- 폰트어썸 사용위한 코드 -->
	<script src="https://kit.fontawesome.com/0a1668e1e9.js" crossorigin="anonymous"></script>


</head>
<body>


<div class="container">
	<!-- header.jsp 파일을 불러옵니다. -->
    <%@ include file="header.jsp" %>
	<div class="row" align="center">
		<%@ include file="dbconn.jsp" %>
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from book where p_catagory=300";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()){
		%>
			<div class="col-md-4">
			<a href="./book_detail.jsp?id=<%= rs.getString("p_isbn") %>">
				<img src="./resources/images/book5.jpg" style="width:100%"><br>
				<small><%= rs.getString("p_name") %> </small><br>
				<small>"<%= rs.getString("p_author") %>" 작가님 </small><br></a>
			</div>
		<%
				}
				
		if (rs != null) rs.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
		
		%>
	</div>
</div>



<!-- footer.jsp 파일을 불러옵니다. -->
<%@ include file="footer.jsp" %>

 


  <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
  <script src="./resources/js/bootstrap.min.js"></script>
  <!-- 이 스크립트 파일은 네비게이션바(메뉴바)의 드롭다운 기능을 가지고있습니다.-->
  <script src="./resources/js/bundle.min.js"></script>
    
</body>
</html>