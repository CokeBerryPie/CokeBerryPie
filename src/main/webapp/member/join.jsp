<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function fun01(){
		if(document.fr.mb_id.value == ""){
			alert('id를 입력해주세요');
			document.fr.mb_id.focus();
			return;
		}
		
		var inputID = document.fr.mb_id.value;
		
		window.open(""+inputID,"","width=,height=,top=,left=");	
	}	
	
	function fun02(){
		if(document.fr.mb_id.value == ""){
			alert('id를 입력해주세요');
			document.fr.mb_id.focus();
			return;
		}
		if(document.fr.mb_id.value == ""){
			alert('id 중복 체크를 확인하여 주세요');
			document.fr.mb_idCheck.focus();
			return;
		}
		if(document.fr.mb_pw.value==""){
			alert('pw를 입력하여 주세요');
			document.fr.mb_pw.focus();
			return;
		}
		if(document.fr.mb_pw2.vlaue !=="mb_pw"){
			alert('pw를 일치 시켜 주세요');
			document.fr.mb_pw2.focus();
			return;
		}
		if(document.fr.mb_name.value == ""){
			alert('이름을 입력해주세요');
			document.fr.mb_name.focus();
			return;
		}
		if(document.fr.nick.value == ""){
			alert('별명을 입력해 주세요');
			document.fr.nick.focus();
			return;
		}
		if(document.fr.mb_birth.value == ""){
			alert('생년월일을 선택해 주세요');
			document.fr.mb_birth.focus();
			return;
		}
		if(document.fr.mb_gender.value == ""){
			alert('성별을 선택해 주세요');
			document.fr.mb_gender.focus();
			return;
		}
		if(document.fr.mb_tel.value == ""){
			alert('휴대전화번호를 입력해 주세요');
			document.fr.mb_tel.focus();
			return;
		}
	}
	


</script>
</head>
<body>
	<h2> 회원가입 페이지 </h2>
			<form action="" method="post" name="fr" id="join">
				<fieldset>
					<legend> 회원가입 정보 </legend> 
					<label>ID :</label> <input type="text" name="mb_id" class="mb_id" >
									    <input type="submit" name="mb_idCheck" value="ID중복확인" onclick="fun01()"> <br>
					<label>비밀번호 : </label> <input type="password" name="mb_pw"> <br>
					<label>비밀번호 확인 : </label> <input type="password" name="mb_pw2" ><br>
					<label>이름 : </label> <input type="text" name="mb_name"><br>
					<label>별명 : </label><input type="text" name="nick"><br>
					<lavel>생년월일 : </lavel>
								<select name="mb_birth">
									<option> 년 </option>
									<c:forEach var="y" begin="2000" end="2014" step="1">
										<option value="${y }">${y }년 </option>
									</c:forEach>
								</select>
								<select name="mb_birth">
									<option> 월 </option>
									<c:forEach var="m" begin="1" end="12" step="1">
										<option value="${m }">${m }월</option>
									</c:forEach>								
								</select>
								<select name="mb_birth">
									<option> 일 </option>
									<c:forEach var="d" begin="1" end="31" step="1">
										<option value="${d }">${d }일</option>
									</c:forEach>
								</select><br>
					<label> 성별 : </label> <input type="radio" name="mb_gender" value="남">남
											<input type="radio" name="mb_gender" value="여">여 <br>
					<label> 전화번호 : </label> <input type="tel" name="mb_tel"> <br>			
					
					
				</fieldset>
				<div class="clear"></div>
				<div id="buttons">
						<input type="submit" value="회원가입" onclick="fun02()" class="submit">
						<input type="button" value="돌아가기" >
				</div>
			</form>
			
</body>
</html>
