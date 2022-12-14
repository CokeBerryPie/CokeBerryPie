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
		
		window.open("./MemberIdCheck.aim?inputID"+inputID,"","width=400,height=250,top=200,left=100");	
	}	
	
	function fun02(){
		if(document.fr.mb_id.value == ""){
			alert('id를 입력해주세요');
			document.fr.mb_id.focus();
			return;
		}
		if(document.fr.mb_id.value.length < 4){
			alert('id는 4자리 이상 12자리 이하로 설정해주세요');
			document.fr.mb_id.focus();
			return;
		}
		
		if(document.fr.mb_pw.value==""){
			alert('pw를 입력하여 주세요');
			document.fr.mb_pw.focus();
			return;
		}
		if(document.fr.mb_pw.value.length <8 ){
			alert('pw는 8자리 이상 입력해주세요');
			document.fr.mb_pw.focus();
			return;
		}
		if(document.fr.mb_pw2.value !== document.fr.mb_pw.value){
			alert('pw를 일치 시켜 주세요');
			document.fr.mb_pw2.focus();
			return;
		}
		if(document.fr.mb_name.value == ""){
			alert('이름을 입력해주세요');
			document.fr.mb_name.focus();
			return;
		}
		if(document.fr.mb_nick.value == ""){
			alert('별명을 입력해 주세요');
			document.fr.mb_nick.focus();
			return;
		}
		if(document.fr.mb_birth.value == "년"){
			alert('년도를 선택해 주세요');
			document.fr.mb_birth1.focus();
			return;
		}
		if(document.fr.mb_birth.value == "월"){
			alert('월을 선택해 주세요');
			document.fr.mb_birth.focus();
			return;
		}
		if(document.fr.mb_birth.value == "일"){
			alert('일을 선택해 주세요');
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
		alert("회원가입이 완료되었습니다");
		document.fr.submit();
	}
	


</script>
</head>
<body>
	<h2> 회원가입 페이지 </h2>
			<form action="./MemberJoinAction.aim" method="post" name="fr" id="join">
				<fieldset>
					<legend> 회원가입 정보 </legend> 
					<label>ID :</label> <input type="text" name="mb_id" class="mb_id" maxlength="12" >
									    <input type="submit" name="mb_idCheck" value="ID중복확인" onclick="fun01()"> <br>
					<label>비밀번호 : </label> <input type="password" name="mb_pw"> <br>
					<label>비밀번호 확인 : </label> <input type="password" name="mb_pw2" ><br>
					<label>이름 : </label> <input type="text" name="mb_name"><br>
					<label>별명 : </label><input type="text" name="mb_nick">
										<input type="submit" name="NickCheck" value="닉네임중복확인" onclick="fun03()"> <br>
					<label>생년월일 : </label>
								<select name="mb_birth">
									<option> 년 </option>
									<c:forEach var="y" begin="1910" end="2014" step="1">
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
					<label> 전화번호 : </label> <input type="tel" name="mb_tel"> 
								<input type="radio" name="SMS" value="동의" checked> SMS 동의 	
								<input type="radio" name="SMS" value="비동의"> SMS 비동의
							
					
					
				</fieldset>
				<div class="clear"></div>
				<div id="buttons">
						<input type="submit" value="회원가입" class="submit" onclick="fun02()" >
						<input type="button" value="돌아가기" onclick="location.href='';" >
				</div>
			</form>
			
</body>
</html>
