<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>

<style>
.fieldlabel {
	float: left;
	width: 120px;
	text-align: right;
	padding-right: 40px;
}

.btnfield {
	margin: 20px 0 0 130px;
}

.form-1 {
	background-color: aqua;
	
}
</style>


</head>
<body>

	<form class="form-1" name="registerform" method="post" enctype="multipart/form-data">
		<h3 style="font-size: 20px; margin-left:200px">회원가입</h3>
		<div class="fieldlabel">
			<label for="userId">아이디</label>
		</div>
		<div class="formfield">
			<input type="text" id="userId" name="userId" maxlength="20" value="">
			<input type="button" value="중복확인">
		</div>
		
		<div class="fieldlabel">
			<label for="userPw">비밀번호</label>
		</div>
		<div class="formfield">
			<input type="password" id="userPw" name="userpPw" maxlength="20"
				autocomplete="off">
		</div>
		
		<div class="fieldlabel">
			<label for="userPwCheck">비밀번호 확인</label> 
		</div>
		
		<div class="formfield">
			<input type="password" id="userPwCheck" name="userPwCheck"
				maxlength="20" autocomplete="off">
				*비밀번호를 다시입력하여주세여.
		</div>
		
		<div class="fieldlabel">
			<label for="userName">성명</label>
		</div>
		<div class="formfield">
			<input type="text" id="userName" name="userName" maxlength="20"
				value="">
		</div>
		
		<div class="fieldlabel">
			<label>성별</label>
		</div>
		<div class="formfield">
			<input type="radio" name="sex" value="남" alt="남자" checked>남자
			<input type="radio" name="sex" value="여" alt="여자">여자
		</div>

		<div class="fieldlabel">
			<label for="email01">이메일</label>
		</div>
		<div class="formfield">
			<input type="text" id="email01" name="email01" size="20"
				maxlength="20" value="" autocomplete="off"><span> @</span> 
				<input type="text" id="email01" name="email01" size="20"
				maxlength="20" value="" autocomplete="off">
				
				
				<input
				id="email02" name="email02" list="domains" placeholder="직접입력">
			<datalist id="domains">
				<option value="naver.com">
				<option value="daum.net">
				<option value="gmail.com">
				<option value="yahoo.co.kr">
			</datalist>
		</div>
		
		<div class="fieldlabel">
			<label for="userId">주소</label>
		</div>
		<div class="formfield">
			<input type="text" id="userId" name="userId" maxlength="20" value="">
			<input type="button" value="주소찾기">
		</div>
		
		
		<div class="fieldlabel">
			<label for="userId">상세주소</label>
		</div>
		<div class="formfield">
			<input type="text" id="userId" name="userId" maxlength="20" value="">
		</div>
		
		
		<div class="fieldlabel">
			<label for="mPhone1">휴대폰</label>
		</div>
		<div class="formfield">
			<select id="mPhone1" name="mPhone1">
				<option value="010" selected>010</option>
				<option value="011">011</option>
				<option value="016">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select> <input id="mPhone2" name="mPhone2" type="number" value="" size="4"
				maxlength="4" autocomplete="off"> - <input id="mPhone3"
				name="mPhone3" type="number" value="" size="4" maxlength="4"
				autocomplete="off">
		</div>
			
		
		<div class="fieldlabel">
		<label for="userId">관심</label>
		</div>
		
		<div class="formfield">
		<label><input type="checkbox" name="color" value="blue"> 수입차</label>
        <label><input type="checkbox" name="color" value="red"> 국산차</label>
		<label><input type="checkbox" name="color" value="red"> SUV</label>
		<label><input type="checkbox" name="color" value="red"> 경차</label>
		<label><input type="checkbox" name="color" value="red"> LPG</label>
		</div>
		
		<div class="fieldlabel">
		<label for="userId">자기소개</label>
		</div>
		
		<textarea cols="50" rows="10"> </textarea>
		
		
		<div class="btnfield">
			<input type="submit" value="가입하기">
			<input type="submit" value="다시 입력">
		</div>
	</form>
</body>
</html>