<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
		fmt는 형변환을 다루는 기능을 가지고 있다
		Integer.parseInt() = String -> Int
		
		parse = 다른 타입으로 형변환
		format = 같은 타입으로 형태를 변환
	 -->

	<h1>formatNumber, parseNumber, formatDate, parseDate</h1>
	
	<hr/>
	<h3>formatDate = (날짜 데이터 -> 날짜 형식으로 변환)</h3>
	<c:set var="a" value="<%=new Date() %>"/>
	<fmt:formatDate var="a01" value="${a }" pattern="yyyy년MM월dd일 HH일mm분ss초"/>
	<fmt:formatDate var="a02" value="${a }" pattern="yyyy-MM-dd"/>
		${a01 }<br/>
		${a02 }
	
	<hr/>
	<h3>parseDate = (문자 데이터 -> 날짜 형식으로 변환 )</h3>
	<fmt:parseDate value="2023-06-07" pattern="yyyy-MM-dd"/><br/>
	<fmt:parseDate value="2023년06월07일 15시28분03초" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
	
	<hr/>
	<h3>formatNumber = (숫자 데이터 -> 숫자 형식의 변환)</h3>
	<c:set var="b" value="20000" />
	<fmt:formatNumber value="${b }" pattern="00,000원"/><br/>
	<fmt:formatNumber value="${b }" pattern="0000.00원"/>
	
	<hr/>
	<h3>parseNumber = (문자 데이터 -> 숫자 형식의 변환)</h3>
	<fmt:parseNumber value="20,000원" pattern="00,000"/><br/>
	<fmt:parseNumber value="123abc원" pattern="000abc"/>
	
	<hr/>
	<h3>2020년 05월 03일 으로 변경해서 출력</h3>
	
	<c:set var="TIME_A" value="2020/05/03" />
	<fmt:parseDate var="A" value="${TIME_A }" pattern="yyyy/MM/dd"/>
	<fmt:formatDate value="${A }" pattern="yyyy년 MM월 dd일" /><br/>
	
	<c:set var="TIME_C" value="2020-05-03 21:30:22" />
	<fmt:parseDate var="C" value="${TIME_C}" pattern="yyyy-MM-dd HH:mm:ss"/>
	<fmt:formatDate value="${C }" pattern="yyyy년 MM월 dd일"/><br/>
	
	<c:set var="TIME_D" value="<%=new Date() %>" />
	<fmt:formatDate value="${TIME_D }" pattern="yyyy년 MM월 dd일"/>
	
	
</body>
</html>