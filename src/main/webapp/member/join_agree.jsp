<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function fun01(){
	if(document.TOS1.value==""){
		alert("동의버튼을 체크해 주세요");
		document.TOS1.focus();
		return;
	}
}


</script>


</head>
<body>

		<h2> 약관 내용 </h2>
		<fieldset>
			<form acion="./join.jsp" method = "post" name="fr">
				<legend> 약관 내용 </legend> 
					<input type="checkbox" name="TOS1" onclick="fun01()"> 야아아아악관 1 <br>
					<input type="checkbox" name="TOS2" onclick="fun01()"> 야아아아아악관 2<br>
					<input type="checkbox" name="TOS3" onclick="fun01()"> 야아앙아악관3 <br>
					<input type="submit" value="회원가입하기" onclick="fun01()">
			</form>		
			</fieldset>
</body>
</html>