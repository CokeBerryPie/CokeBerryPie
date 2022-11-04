<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function fun01(){
	
	if(document.fr.TOS[0].checked==false && document.fr.TOS[1].checked==false){
		alert("필수 약관을 선택해주세요");
		return;
}

}

</script>
</head>
<body>

		<h2> 약관 내용 </h2>
		<form acion="./join.jsp" method="post" id="join" name="fr">
			<fieldset>
				<legend> 약관 내용 </legend> 
					<input type="checkbox" name="TOS" value="약관1" >야아아아악관 1 (필수)<br>
					<input type="checkbox" name="TOS" value="약관2" >야아아아아악관 2 (필수)<br>
					<input type="checkbox" name="TOS" value="약관3" >야아앙아악관3 (선택)<br>
					<input type="checkbox" name="TOS" value="약관4" >야아앙아악관4 (선택)<br>
				
			</fieldset>
			
				<div id="buttons">
						<input type="submit" value="회원가입하기" class="submit" onclick="fun01()" >
						<input type="button" value="돌아가기" class="submit" onclick="location.href='./AIM.co.kr';">
				</div>
		</form>
</body>
</html>