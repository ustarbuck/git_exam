<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.dao.BoardDAO" %>
<%@ page import="board.bean.BoardDTO" %>
<%@ page import="java.util.List" %>

<%
//get 방식으로 int 넘겨도 string으로 변환되니까 형변환 시켜줘야한다
int idx = Integer.parseInt(request.getParameter("idx")); ///글번호 알아오려고 list.jsp에서 넘겨옴 get방식
int pg=Integer.parseInt(request.getParameter("pg"));

BoardDAO boardDAO = BoardDAO.getInstance(); //싱글톤 생성 메모리에
BoardDTO boardDTO = boardDAO.boardView(idx); //dao함수에 글번호 뿌려줘서 디비처리후 리스트 목록뽑아옴

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>


</head>
<body>

	
		<table width="500" border="1" cellspacing="0" cellpadding="0" style="bordercolor:#000000; border-right:none; border-left:none; border-collapse:collapse">
			<tr>
				<td width="100" align="center" colspan="3"><%=boardDTO.getSubject()%></td>		
			</tr>
			
			<tr>				
				<td align="center" width="150">글번호 : <%=boardDTO.getSeq()%></td>				
				<td align="center" width="150">작성자 : <br><%=boardDTO.getName()%></td>				
				<td align="center" width="150">조회수 : <%=boardDTO.getHit()%></td> 
			</tr>
			
			<tr>		
				<<td align="center" colspan="3"><wordbreak><%=boardDTO.getContent() %></wordbreak></td>
			</tr>		
		</table>
		<br>
		<input type="button" value="목록" onclick="location.href='boardList.jsp?pg=<%=pg %>'">

	<div style="width: 450px; text-align: center;"></div>
</body>
</html>

























