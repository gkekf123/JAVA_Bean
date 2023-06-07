<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// java로 세션 값 참조
    	// String name = (String)session.getAttribute("name");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>세션값은 sessionScope.내장객체명 붙인다(생략가능하지만 적어준다)</h1>
	${sessionScope.name}<br/>
	${sessionScope.id}<br/>
	
	${applicationScope.count }

</body>
</html>