<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.ReviewDAO" %>
<%@ page import="dto.ReviewDTO" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
  <!-- 해당 페이지 타이틀 -->
  <title>BookForest review</title>

  <!-- css 파일적용 -->
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="./resources/css/style.css" rel="stylesheet">
  
  

  <!-- 홈페이지 아이콘 -->
  <link href="images/bookicon.png" rel="icon">
  <!-- 폰트어썸 사용위한 코드 -->
  <script src="https://kit.fontawesome.com/0a1668e1e9.js" crossorigin="anonymous"></script>
  
  <style type="text/css">
  	a, a:hover {
  		color: #000000;
  		text-decoration: none;
  	}

  
  </style>
  
</head>
<body>


    <%
  
  		int pageNumber = 1;
  		if(request.getParameter("pageNumber") != null) {
  			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
  		}
  
  	%> 	

  

  <!-- 큰 하나의 컨테이너 생성 -->
  <div class="container">

    <!-- header.jsp 파일을 불러옵니다. -->
    <%@ include file="header.jsp" %>
    
    

	

    <!-- 콘텐츠 부분 -->
    
    <br>
    <h3 style="text-align: center; margin-top: 20px; margin-bottom: 20px;"><i class="fas fa-book"></i> Book Forest review</h3>
    <div class="container">
	
      <div class="row">
        <table class="table table-hover" style="text-align: center; border: 1px solid #f4f5f2">
        
          <thead>
            <tr>
              <th style="background-color:#fcfbf8; text-align: center;"> 번호 </th>
              <th style="background-color:#fcfbf8; text-align: center;"> 리뷰 제목 </th>
              <th style="background-color:#fcfbf8; text-align: center;"> 도서명 </th>
              <th style="background-color:#fcfbf8; text-align: center;"> 작성자 </th>
              <th style="background-color:#fcfbf8; text-align: center;"> 작성일 </th>
            </tr>
          
          </thead>
          
          <tbody>
          	<%
          		ReviewDAO reviewDAO = new ReviewDAO();
          		ArrayList<ReviewDTO> list = reviewDAO.getList(pageNumber);
          		for(int i = 0; i<list.size(); i++) {
          	%>		
          		<tr>
            		<td><%= list.get(i).getReview_no() %></td>
            		<td><a href="reviewView.jsp?review_no=<%= list.get(i).getReview_no() %>">
            		<%= list.get(i).getReview_title().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></a></td>
            		<td><%= list.get(i).getP_name() %></td>
            		<td><%= list.get(i).getCus_id() %></td>
            		<td><%= list.get(i).getReview_date().substring(0,11) +  list.get(i).getReview_date().substring(11,13) + "시" + list.get(i).getReview_date().substring(14,16) + "분"%></td>
         	 	</tr>	
          		
          	<% 	
          		}
            %>
          	
          	
          	
          </tbody>
          
          
  
          
        
        
        </table>
        
        
      
      </div>
      
      <a href="reviewWrite.jsp" class="btn btn-primary pull-right"> 글쓰기</a>
        <%
        	if(pageNumber != 1) {
        %>		
        	<a href="review.jsp?pageNumber=<%=pageNumber - 1 %>" class="btn btn-success btn-arraw-left">이전</a>
        
        
        
        <% 
        	} if(reviewDAO.nextPage(pageNumber + 1)) {
        %>
        
        	<a href="review.jsp?pageNumber=<%=pageNumber + 1 %>" class="btn btn-success btn-arraw-left">다음</a>
        <%
        
        	}
        %>
      
    
    </div>


</div><!-- 큰 컨테이너 닫는 /div -->

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