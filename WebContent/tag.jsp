<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="/webex/table?r=10&c=3" target="_blank">동적테이블로 이동
	 	: 하이퍼 링크 레퍼런스</a><!-- 창이동,새창열기 -->
	 	
	<h4>form Test</h4>
	
	<form method="post" action="/webex/form"><!-- get타입으로 form에게 보냄 -->
		<!-- hidden -->
		<input type="hidden" name="no" value="1"/>
		
		이메일 : <input type="text" name="email" value=""/><!-- 셀프close -->
		<br/>
		<br/>
		비밀번호 : <input type="password" name="password" value=""/><!-- 셀프close -->
		<br/>
		<br/>
		<!-- gender라는 이름으로 value값을 넘김 -->
		성별 : 남<input type="radio" name="gender" value="male" checked="checked"/>
		성별 : 여<input type="radio" name="gender" value="female"/>
		<br/>
		<br/>
		생년월일
		<br/>
		<select name="birth-year">
			<option value="2010" selected>2010년</option>
			<option value="2009">2009년</option>
			<option value="2008">2008년</option>
			<option value="2007">2007년</option>
			<option value="2006">2006년</option>
			
		</select>
		
		<br/>
		<br/>
		취미
		독서<input type="checkbox" name="hobbies" value="reading"/>
		수영<input type="checkbox" name="hobbies" value="swimming"/>
		잠자기<input type="checkbox" name="hobbies" value="sleeping"/>
		코딩<input type="checkbox" name="hobbies" value="coding"/>
		<br/>
		<br/>
		자기소개<textarea name="self-intro"></textarea>
		<br/>
		<br/>
		<input type="submit" value="확인"/>
		
	</form>
	
	<br/>
	<br/>
	
	<h1>타이틀 입니다.</h1>
	<h2>타이틀 입니다.</h2>
	<h3>타이틀 입니다.</h3>
	<h4>타이틀 입니다.</h4>
	<h5>타이틀 입니다.</h5>
	<h6>타이틀 입니다.</h6>
	
	
</body>
</html>