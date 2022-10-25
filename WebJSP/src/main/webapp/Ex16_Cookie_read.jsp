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
		접속한 클라이언트 가 가지고있는 (domain) 별로 기록되어 있는 cookie read
		
	 -->
<%
	Cookie[] cs = request.getCookies();
	//getCookies는 배열로 받는다.
	//웹 브라우저가 가지는 모든 쿠기들을 다 가지고 와서
	if(cs != null || cs.length > 0){
		
		//개발자 마음
		for(Cookie c : cs)
		{
			out.print("c.getName : " + c.getName() + "<br>");
			out.print("c.getValue : " + c.getValue() + "<br>");
			out.print("c.getMaxAge : " + c.getMaxAge() + "<br>");	//-1 (소멸시간이 없다 : 메모리)
			out.print("c.getDomain : " + c.getDomain() + "<br>");
			out.print("<hr>");
		}
	}
%>
</body>
</html>