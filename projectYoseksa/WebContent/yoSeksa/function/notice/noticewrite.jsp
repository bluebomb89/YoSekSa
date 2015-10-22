<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
  <div id="post_wrapper">
    <form id="postForm" name="post_frm" method=post action="postfind_result.jsp">
    	<!-- 제목 -->
    	<input type="text" placeholder="제목"><br>
    	<!-- 내용 -->
		<textarea name="board_tx" class="form-control" placeholder="내용" style="height:400px;width: 600px; margin-top: 20px;"></textarea>
		<!-- 게시판 번호 등록 공지사항=1번 -->
		<input type="hidden" name="noticeboardnumber" value="1">
		<!-- 버튼 -->
		<div class="write_btn" style="margin-top: 40px;">
			<!-- 버튼 등록 -->
			<button type="submit" id="submit_btn" class="btn-lg btn-primary">글쓰기</button>
			<!-- 취소 버튼 -->
			<button type="button" class="btn-lg btn-default" data-dismiss="modal" onClick="location.href='/talk/list.html?bid=5'">취소</button>
		</div>
    </form>
  </div>
</body>
</html>