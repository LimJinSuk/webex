package com.jx372.webex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doGet() called");
		request.setCharacterEncoding("utf-8"); //맨위에 꼭 들어가야함
		response.setContentType("text/html; charset=utf-8"); 
		
		String no = request.getParameter("no");
		String email = request.getParameter("email"); //form input의 name
		String password=request.getParameter("password");
		
		String birth_year=request.getParameter("birth-year");
		//배타적 관계로 하나만 넘어옴
		String gender = request.getParameter("gender");
		//배타적이지않아 같은 이름으로 여러개 넘어옴
		String[] hobbies = request.getParameterValues("hobbies");
		String selfIntro = request.getParameter("self-intro");
		
		
		
		PrintWriter out = response.getWriter();
		out.println(no);
		out.println("</br>");
		out.println(email);
		out.println("</br>");
		out.println(password);
		out.println("</br>");
		out.println(birth_year);
		out.println("</br>");
		out.println(gender);
		out.println("</br>");
		if(hobbies!=null){
			for(String hobby : hobbies){
				out.println(hobby+",");
			}
		}
		out.println("</br>");
		out.println(selfIntro);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
