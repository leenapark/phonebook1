<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	/*http://localhost:8088/phonebook1/insert.jsp?name=박리나&hp=010-1111-1111&company=02-2222-2222*/
	
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	
	PhoneDao phoneDao = new PhoneDao();
	
	/*저장*/
	phoneDao.phoneInsert(personVo);
	
	/*
	리스트
	List<PersonVo> personList = phoneDao.getList();
	*/
	
	response.sendRedirect("./list.jsp");

%>

<!-- 
리다이렉트를 할 경우 화면이 바로 넘어가서 HTML이 불필요한 코드가 된다
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	<%for(int i=0; i<personList.size(); i++) { %>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%=personList.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=personList.get(i).getCompany() %></td>
			</tr>
		</table>
		<br>
	<%} %>
	--%>
</body>
</html>

 -->