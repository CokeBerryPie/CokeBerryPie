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
		alert("아이디 중복체크 시작");
		
		if(document.fr.mb_id.value.length < 4 && document.fr.mb_id.value.length>10){
			  alert("회원 ID의 길이는 4~10자로 제한");
			  document.fr.mb_id.focus();
			  return;
		 }
		
		var inputID = document.fr.mb_id.value;
		
		window.open("./idCheck.jsp?inputID="+inputID,"","width=500,height=300,top=200,left=100");	
	}	
	
	function fun02(){
		if(document.fr.mb_id.value == ""){
			alert('id를 입력해주세요');
			document.fr.mb_id.focus();
			return;
		}
		if(document.fr.mb_id.value.length<5 && document.fr.mb_id.value.length>12){
			alert("id는 6자 이상 12자 이하로 입력하여야 합니다");
			document.fr.mb_id.focus();
			return;
		}

		if(document.fr.mb_pw.value==""){
			alert('pw를 입력하여 주세요');
			document.fr.mb_pw.focus();
			return;
		}
		if(document.fr.mb_pw.value.length<9){
			 alert("비밀번호의 길이는 10자 이상이어야 합니다");
			 document.fr.pw.focus();
			 return;
		}
		if(document.fr.mb_pw.value==""){
			alert('pw를 입력하여 주세요');
			document.fr.mb_pw.focus();
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
		if(document.fr.mb_birth1.value == "년"){
			alert('년도를 체크하세요');
			document.fr.mb_birth1.focus();
			return;
		}
		if(document.fr.mb_birth2.value == "월"){
			alert('월을 체크하세요');
			document.fr.mb_birth2.focus();
			return;
		}
		if(document.fr.mb_birth3.value == "일"){
			alert('일을 체크하세요');
			document.fr.mb_birth3.focus();
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
	
	function fun03(){
		if(document.fr.nick.value == ""){
			alert('닉네임을 입력해주세요');
			document.fr.mb_id.focus();
			return;
		}
		
		var inputNick = document.fr.nick.value;
		
		window.open(""+inputID,"","width=,height=,top=,left=");	
	}
	

</script>
</head>
<body>
	<h2> 회원가입 페이지 </h2>
			<form action="./AIM.co.kr" method="post" id="join" name="fr">
				<fieldset>
					<legend> 회원가입 정보 </legend> 
					<label>ID :</label> <input type="text" name="mb_id" >
									    <input type="button" name="mb_idCheck" value="ID중복확인" onclick="fun01()"> <br>
					<label>비밀번호 : </label> <input type="password" name="mb_pw"> <br>
					<label>비밀번호 확인 : </label> <input type="password" name="mb_pwCheck" ><br>
					<label>이름 : </label> <input type="text" name="mb_name"><br>
					<label>별명 : </label><input type="text" name="nick">
									  <input type="button" name="nickCheck" value="닉네임중복확인" onclick="fun03()"> <br>
					<lavel>생년월일 : </lavel>
								<select name="mb_birth1" >
									<option> 년 </option>
									<c:forEach var="y" begin="1910" end="2014" step="1">
										<option value="${y }">${y }년 </option>
									</c:forEach>
								</select>
								<select name="mb_birth2" >
									<option> 월 </option>
									<c:forEach var="m" begin="1" end="12" step="1">
										<option value="${m }">${m }월</option>
									</c:forEach>								
								</select>
								<select name="mb_birth3" >
									<option> 일 </option>
									<c:forEach var="d" begin="1" end="31" step="1">
										<option value="${d }">${d }일</option>
									</c:forEach>
								</select><br>
					<label> 성별 : </label> <input type="radio" name="mb_gender" value="남">남
											<input type="radio" name="mb_gender" value="여">여 <br>
					<label> 전화번호 : </label> <input type="tel" name="mb_tel">
									   <input type="radio" name="sms" value="수신" checked> SMS 수신 동의 			
									   <input type="radio" name="sms" value="수신" > SMS 수신 비동의 <br>		
					
					
				</fieldset>
				<div class="clear"></div>
				<div id="buttons">
						<input type="button" value="회원가입" class="submit" onclick="fun02()" >
						<input type="button" value="돌아가기" class="submit" >
				</div>
			</form>
			
</body>
</html>
