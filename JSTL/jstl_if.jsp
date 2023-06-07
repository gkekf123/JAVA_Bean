<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 변수 선언 -->
	<!-- 혼자 사용하는 태그는 반드시 /> 로 마감 -->
	<c:set var="a" value="1"/>
	
	<!-- jstl로 선언 된 변수는 el참조가 된다 -->
	<c:out value="${a }"/><br/>
	
	 
	<h1>JAVA - if문</h1>
	<%if(true) { %>
		JAVA_if문 - 무조건 실행되는 문장<br/>
	<%}%> 
	
	
	<c:if test="true">
		무조건 실행되는 문장<br/>
	</c:if>
	
	<hr/>
	
	<!-- jstl form태그 값 받기 -->
	
	<!-- JAVA로 받기 -->
	<%if(Integer.parseInt(request.getParameter("age")) >= 20) { %>
		<%=request.getParameter("age") %> JAVA로 확인
	<%} %><br/>

	<!-- jstl - el로 받기 -->
	<c:if test="${param.age >= 20}">
		${param.age } jstl_el로 확인
	</c:if>
	
	<c:if test="${param.name == '홍길동' }">
		홍길동 입니다
	</c:if>
	
	
</body>
</html>