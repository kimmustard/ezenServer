<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
		String friend[] = {"영희", "철수", "순이"};
		request.setAttribute("fr", friend);
	%>
	
	<!-- 
		forEach : for문, loop문 (반복문)
		items : 대상배열 또는 컬렉션
		var : 변수명
		varStatus : 배열 index를 저장하는 변수 (자바로 치면 i)
		
		
	 -->
	 == 친구 명단 == <br>
	 
	<!--  requestScope는 생략 가능 -->
	<c:forEach items="${requestScope.fr}" var="fname" varStatus="st">
		${st.index }
		${fname } <br>
	</c:forEach>
</body>
</html>