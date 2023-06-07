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

	<h1>choose</h1>
	
	<c:choose>
	
		<%-- when은 여러개 = if ~ else문이 된다 --%>
		<c:when test="${param.name == '홍길동' }">
			
			홍길동 입니다	
		</c:when>
		<c:when test="${param.name == '이순신' }">
			
			이순신 입니다	
		</c:when>
		<%-- <c:otherwise>
			둘 다 아니다
		</c:otherwise> --%>
		
	</c:choose>
	
	<!-- choose문으로 age변수를 if~else로 처리 -->
	
	<c:choose>
	
		<c:when test="${param.age >= 20 }">
			 
			성인입니다
		</c:when>
		<%-- 
		<c:when test="${param.age < 20} ">
			
			미성년자 입니다
		</c:when>
		 --%>
		<c:otherwise>
			미성년자 입니다
		</c:otherwise>
	
	</c:choose>
	
</body>
</html>