  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.bean.BoardDTO" %>
   <%@ page import="board.dao.BoardDAO" %>
  
   <%
    //모든 jsp는 서블릿을 만들어서 내장객체 다 들어온다.
    //데이터
    String subject = request.getParameter("subject"); //writeform에서 받아와서 변수에 넣어
    String content = request.getParameter("content");
    
    //디티오로 묶고 다오에서 처리해서 여기서 디비 처리하기
    BoardDTO boardDTO= new BoardDTO();
    
    
	boardDTO.setId("hong"); //걍 갖다박아
	boardDTO.setName("Hong-GilDong");
	boardDTO.setEmail("hong@naver.com");
    boardDTO.setSubject(subject); //받아서 디티오에 넣어
    boardDTO.setContent(content);
    //디비
	BoardDAO boardDAO = BoardDAO.getInstance();
    boardDAO.write(boardDTO);
    
    
    //응답
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite</title>
</head>
<body>

완료
<input type="button" value="글목록" onclick="location.href='boardList.jsp?pg=1'"> <!--list에 페이지 겟방식으로 넘겨줘야 글목록 5개씩 띄울 수 있음  -->

</body>
</html>