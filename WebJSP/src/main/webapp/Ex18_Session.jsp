<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	 
	1. server memory : session 객체	(사이트 접속하는 [사용자]마다 [고유]하게 부여하는 메모리(객체)) >> 서버가 리부팅, 개발코드변경 > 소멸 > 생성
	2. server memory : application 객체	(사이트 접속하는 [모든 사용자]마다 고유하게 부여하는 메모리(객체)) >> 서버가 리부팅, 개발코드변경 > 소멸 > 생성

	session 객체 : 서버(Web)에 접속한 사용자 마다 고유하게 부여되는 객체
	고유성을 보장 (key 값 ) >> 각각의 session 객체마다 이름표 > key값 > 클라이언트까지 전달됨 
	
	활용) 클라이언트마다 고유하게 부여 (session 객체가)
	>> 로그인ID, 장바구니(사용자마다 다른), 사용자의 정보 (각각 다른 정보), 사용자마다 접속한 시간, 마지막 접속 시간
	
	
	1.http://192.168.0.49:8090/WebJSP/Ex18_Session.jsp 서버에 요청 보내기
	2.sessionID (key) 생성 -> session -> 생성된 세션아이디값을 클라이언트에 response함 (쿠키값으로)
	2.1  JSESSIONID : A1EC57D1C61FDABCCFCE2BBF3FC55A38
	3. 동기화 (너랑 나랑 친구다)
	
	ex) 접속자 1000명이 Web Server에는 key 1000개 만들어지고 key 이름표로 달고있는 session 객체도 1000개 생성.
	
	ex) Client 로그아웃 버튼을 클릭 >> 서버는 어떠한 작업을 수행 할까요? >>> 로그아웃 판단 >> key 가지고 와서
		
		>> key (이름표) >> 객체를 찾아서 >> abandon (소멸) >> invalidate
-->
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
	<h3>session객체 정보</h3>
	session 객체의 식별값 : <%=session.getId() %>
	<hr>
	<%
		time.setTime(session.getCreationTime());
	%>
	[session 이 생성된 시간] : <%= formatter.format(time) %>
	<hr>
	<%
		time.setTime(session.getLastAccessedTime());
	%>
	[session 마지막 접속 시간(client)] : <%=formatter.format(time) %>
	
</body>
</html>