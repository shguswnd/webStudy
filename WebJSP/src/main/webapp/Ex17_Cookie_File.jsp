<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	1. 메모리 쿠키 (브라우저) : 클라이언트 갈제로 지우지 않는한  .... 브라우저가 닫히면 사라지는 데이터 // 닫기전까지는 존재하는 데이터
	   소멸타입 : getMaxAge() >> -1
	   
	2. 파일쿠키(소멸시간을 가지고 있다.) : 클라이언트가 강제로 지우지 않는한 정해진 시간까지 유효 (2050년 12월12일)
	   setMaxAge(60) >> 60초
	   
	   30일
	   (30*24*60*60) 일 * 시간 * 분 * 초
	   setMaxAge()

-->
<%
	Cookie co = new Cookie("kosa","hong");
	co.setMaxAge(30*24*60*60);
	response.addCookie(co);
%>
</body>
</html>