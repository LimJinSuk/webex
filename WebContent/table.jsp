<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	//서블릿으로 가 서버측에서 작동되는 코드
	//인수는 모드 String객체로 넘어오게됨 캐스팅따로 해야해
	String row = request.getParameter("r"); //응답,요청,세션 객체들 다 이미 내장되어 있음
	
	//사용자 입력 오류 방어
	 //방어프로그램 : 아무것도 안적을경우, 입력데이터가 숫자가 아닐 경우
	if(row==null || row.matches("-?\\d+(\\.\\d+)?")==false)
		row="0";
	//변수는 JSP내에서 전역변수로 쓰임
	int nRow = Integer.parseInt(row);
	
	
	String col = request.getParameter("c");
	if(col==null || col.matches("-?\\d+(\\.\\d+)?")==false)
		col="0";
	int nCol = Integer.parseInt(col);
	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px" cellpadding="10px" cellspacing="0">
		<%
			for(int i=0; i<nRow; i++){
		%>
		<tr>
			<%
				for(int j=0; j<nCol; j++){
			%>
			<td>cell(<%= i %>,<%= j %>)</td>
			<% 
				}
			%>
		</tr>
		<%
			} 
		%>
		
	</table>
</body>
</html>