<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="board/board.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// window.onload=function(){}
// $(document).ready(function(){})
$(function(){
		
	if(cont=="")
		{
			$('#contSpan').text("������ �ݵ�� �Է��ؾ� �մϴ�!!");
			$('#userscontent').focus();
			return;
		}
		$('#contSpan').text("");
		
		var pwd=$('#userpwd').val();
		
		});
	$('#btnCancel').click(function(){
		history.back();
		});

</script>
</head>
<body>
  <div id="wrapper">
    <form name="write_frm" id="writeForm" method=post action="board_insert_ok.do">
      <p>
       <label for="usercontent">����</label>
       <textarea name="content" id="usercontent"></textarea>
        <br>
       <span id="contSpan" style="color:red;text-align: center"></span>
      
      </p>
      <p class="btnSubmit">
       <input type=button value="���" id="btnSub">
       <input type=button value="���" id="btnCancel">
      </p>
    </form>
  </div>
</body>
</html>

