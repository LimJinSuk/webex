package com.jx372.webex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/table")
public class TableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public TableServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//table.jsp 그대로 가져와서 수정
		
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
		
		//응답시작
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<table border='1px' cellpadding='10px' cellspacing='0'>");
		for(int i=0; i<nRow; i++){
			out.println("<tr>");
			for(int j=0; j<nCol; j++){
				out.println("<td>cell("+i+","+j+")</td>");
			}
			out.println("</tr>");
		}
		out.println("</table>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
