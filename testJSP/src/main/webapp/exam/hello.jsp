<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- jsp 쓰면 무겁다. 이중작업이 들어가니까 무거워서 잘 안씀..그래도 배워야한다 si 업체에서 쓰니까  -->
    
    <% 
  	//전역, 1번, init()
    	String name = "홍길동";
    	int age = 25;
    %>
    
     <%
     //지역, 매번, service()
     age++;
    	
    	
    %>
<!DOCTYPE html> <!-- html기반, 자바로 서버씀? -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello JSP
안녕하세요 jsp
나의 이름은 <%=name %> 입니다.
내 나이 <%=age %>살 입니다.
<%out.println("내 나이는"+age+"살 입니다.");%>

</body>
</html>