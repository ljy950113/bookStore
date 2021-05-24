<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dto.CsDTO" %>
<%@ page import="dao.CsDAO" %>    
<!DOCTYPE html>
<html>
<head>
  <!-- 해당 페이지 타이틀 -->
  <title>BookForest CS</title>

  <!-- css 파일적용 -->
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="./resources/css/style.css" rel="stylesheet">
  
  

  <!-- 홈페이지 아이콘 -->
  <link href="images/bookicon.png" rel="icon">
  <!-- 폰트어썸 사용위한 코드 -->
  <script src="https://kit.fontawesome.com/0a1668e1e9.js" crossorigin="anonymous"></script>
</head>  
<body>
  	

  <!-- 큰 하나의 컨테이너 생성 -->
  <div class="container">

    <!-- header.jsp 파일을 불러옵니다. -->
    <%@ include file="header.jsp" %>
    
    
    <%
    
  	if (cus_id == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}
    
    int cs_no = 0;
  	if(request.getParameter("cs_no") != null) {
  		cs_no = Integer.parseInt(request.getParameter("cs_no"));
  	}
  	if(cs_no == 0) {
  		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'customerService.jsp'");
		script.println("</script>");
  	}
  	
  	CsDTO csDTO = new CsDAO().getDTO(cs_no);
  	
  	if(!cus_id.equals(csDTO.getCus_id())) {
  		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'customerService.jsp'");
		script.println("</script>");
  		
  	}
    %>
  
  
  


    <!-- 콘텐츠 부분 -->
    
    <br>
    <h3 style="text-align: center; margin-top: 20px; margin-bottom: 20px;"><i class="fas fa-book"></i> Book Forest customerService</h3>
    
    <div class="container">
	
      <div class="row">
				<form method="post" action="updateAction.jsp?cs_no=<%= cs_no %>" style="width:100%; height:100%;">
					<table class="table table-striped" style="text-align: center;">
						

						<thead>
							<tr>
								<th colspan="2" style="background-color: #fcfbf8; text-align: center;"> 고객센터 글수정</th>
							</tr>		
						</thead>			

							

						

						<tbody>
							<tr>
								<td><input type="text" class="form-control" placeholder="문의 제목" name="cs_title" maxlength="50" value="<%=csDTO.getCs_title() %>"></td>
							</tr>
							<tr>	
								<td><textarea class="form-control" placeholder="문의 내용" name="ask" maxlength="3000" style="height: 300px;"><%=csDTO.getAsk() %></textarea></td>
							</tr>	
									

						</tbody>




					</table>
					
					<input type="submit" class="btn btn-success" value="글수정">
					
						
						
					</form>	
					
					




			</div>
			
			
    
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