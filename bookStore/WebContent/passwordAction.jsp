<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import= "customer.UserDAO" %>
<%@ page import= "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="customer.UserDTO" scope="page" />
<jsp:setProperty name="user" property="cus_pw" />

<!DOCTYPE html>
<html>
<head>

<title>비밀번호 확인 처리</title>
</head>
<body>
	<%
	
		String cus_id = null;
		if(session.getAttribute("cus_id") != null) {
			cus_id = (String) session.getAttribute("cus_id");		
		}
		
		UserDAO userDAO = new UserDAO();
		int result = userDAO.passwordConfirm(user.getCus_pw());
		if(result == 1) {
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'mypageIn.jsp'"); //로그인이 성공했으니 mypageIn.jsp(마이페이지 상세)로 이동함
			script.println("</script>");
			
		} else if(result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')"); 
			script.println("history.back()"); //이전페이지로 돌아감 mypage.jsp
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다.')"); 
			script.println("history.back()"); //이전페이지로 돌아감 mypage.jsp
			script.println("</script>");
		}
	
	
	%>


</body>
</html>