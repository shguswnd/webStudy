<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/error/commonError.jsp" %>
<!--
전역과 지역끼리 싸우면 지역이 이긴다.
<%-- <%@ page errorPage="/error/commonError.jsp" %> --%>

-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 에러 페이지는 최종 배포때 사용해야되며 그전까지는 에러내용을 보고 수정해야되기 때문에 
	1. 페이지마다 설정하기
	2. 전역 설정하기
-->
<%
	String data = request.getParameter("name");
	String data2 = data.toLowerCase(); //null인 경우
%>
전달받은 내용 : <%=data %>
</body>
</html>