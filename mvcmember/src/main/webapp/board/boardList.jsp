<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.dao.BoardDAO" %>
<%@ page import="board.bean.BoardDTO" %>
<%@ page import="java.util.List" %>

<%
//데이터
int pg = Integer.parseInt(request.getParameter("pg"));

//DB
//페이징처리 1페이지에 5개씩
int endNum=pg*5;
int startNum=endNum-4;
BoardDAO boardDAO = BoardDAO.getInstance(); //싱글톤 생성 메모리에
List<BoardDTO> list = boardDAO.boardList(startNum,endNum);

//d=총 글수 반환
int totalA = boardDAO.getTotalA();
//페이지 번호 
int totalP = (totalA+4)/5;
//페이지번호 계산 공식 total+3-1/3(3개씩할거면)

int idx;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판목록</title>
<style type="text/css">
	#subjecView:hover{
		color:green;
		text-decoration:underline;
	
	}
	.subjectView{
		color:black;
		text-decoration:none;
	}
	#currentPagingA{
		text-decoration:underline;
	}
	
	#pagingA{
		color:black;
		text-decoration:none;
	}
	
<%-- 	a:nth-child(<%=pg%>){
      color: red;
   } --%>
	
</style>
<script type="text/javascript">
</script>
</head>
<body>

	<table  width="500" border="1" cellspacing="0" cellpadding="0" style="bordercolor:#000000; border-right:none; border-left:none; border-collapse:collapse">
		<thead>
			<tr>
				<th width="100" align="center">글번호</th>
				<th width="100" align="center">제목</th>
	            <th width="100" align="center">작성자</th>
	            <th width="100" align="center">조회수</th>
	             <th width="100" align="center">작성일</th>        
			</tr>
		</thead>	
	</table>		
	<%if(list != null){ %>
	<%for(BoardDTO boardDTO : list) { //리스트에 담음 dto 값을 가져온다. 한사람당 하나의 테이블에 가져옴 %>

	<table width="500" border="1" cellspacing="0" cellpadding="0" style="bordercolor:#000000; border-right:none; border-left:none; border-collapse:collapse">
		<tbody>
			<tr>
				<td width="100" align="center"><%=boardDTO.getSeq() %></td>
				<td width="100" align="center"><a href="boardView.jsp?idx=<%=boardDTO.getSeq() %>&pg=<%=pg %>" class="subjectView" id="subjecView"  ><%=boardDTO.getSubject() %></a></td>
				<td width="100" align="center"><%=boardDTO.getName() %></td>
				<td width="100" align="center"><%=boardDTO.getHit() %></td>
				<td width="100" align="center"><%=boardDTO.getLogtime() %></td>
			</tr>
			
		</tbody>		
	</table>
	<%}//for %>
	<div style="width: 450px; text-align: center;">
	<%for(int i=1; i<=totalP; i++){ %>
		<%if(i==pg) { %>
			[<a href="boardList.jsp?pg=<%=i %>" id="currentPagingA"><%= i %></a>]
		<%}else{ %>
			[<a href="boardList.jsp?pg=<%=i %>" id="pagingA"><%= i %></a>]
		<%} %>
	<%}//for %>
	</div>
<%}//if %>
</body>
</html>

























