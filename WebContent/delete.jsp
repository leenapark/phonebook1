<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	int personId = Integer.parseInt(request.getParameter("id"));
	
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.getDelete(personId);
	
	response.sendRedirect("./list.jsp");
	//리스폰.리다이렉트 해주면 바로 연결되기 때문에 응답 페이지가 따로 필요없음
%>
