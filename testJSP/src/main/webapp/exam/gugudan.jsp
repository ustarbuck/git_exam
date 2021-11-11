<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  
<table border="1">
	<% //전역변수 init()
    	for(int i=1; i<10; i++){%>
    	<tr>
    		<%for(int j=1; j<10; j++){ %>   
    			<td width="150" align="center"><%=i %>*<%=j%>=<%=i*j%><br></td>
			<%}//for i%>
			<tr>
		<%}//for j%>
	</table>
    	
</body>
</html>