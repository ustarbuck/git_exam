<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/boardJSP/js/checkBoardWrite.js"></script>
<script type="text/javascript">

/* $(function(){
	$('boardForm').click(fucntion(){
		
		//초기화
		$('#subjectDiv').empty();
		$('#contentDiv').empty();
		
		if($('input[name=subjec]'').val()==''){
			$('#subjectDiv').html('제목 입력');
			$('#subject').focus();		
			
		}else if ($('input[name=content]').val()==''){
			$('#contentDiv'.html('내용 입력'));
			$('#content').focus();
		
	});
	
}) */
</script>

<style type="text/css">
div{
	color:red;
	 font-size: 8pt;
	 font-weight: bold;

}
</style>
</head>

<body>
<h1>글쓰기</h1>
<form name="boardForm" method="get" action="/mvcmember/board/boardWrite.do">
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="subject" id="subject" size="10">
			<div id="subjectDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td>내용</td>
			<td>
			<textarea name="content" id="content" cols="25" rows="10"></textarea>			
			<div id="contentDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="글쓰기" onclick="checkBoardWrite()">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</body>
</html>