<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<script type="text/javascript">
	alert("이동했고 닫는다!");	
</script>


<script type="text/javascript">
var httpRequest=null;
function createHttpRequest(){
	if(window.ActiveXObject){ //IE 6.0 이상
		return new ActiveXObject("Msxml2.XMLHTTP");
		//Microsoft.XMLHTTP 6.0이하일때
	}else if(window.XMLHttpRequest){ // 크롬 , ff
		return new XMLHttpRequest();
	}else{ // 호환이 안될때
		return null; //지원하지 않는 브라우저
	}
}
function sendMessage(method,param,url,callback){
	// 서버 연결 DWR,DOJO
	httpRequest=createHttpRequest();
	httpRequest.open(method,url+param,true);
	// true: 비동기 false:동기
	httpRequest.onreadystatechange=callback;
	httpRequest.send(null);
}









function notice_Insert(){
	$('body').removeClass('modal-open');
	var notice_sub=$('#notice_sub').val();
	var notice_content=$('#notice_content').val();
	var param="?notice_sub="+notice_sub+"&notice_content="+notice_content;
	sendMessage('GET', param, "notice_insert.sek", notice_result);
}
function notice_result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var res=httpRequest.responseText;
			$('#services').html(res);
			// 보여주면서 div에 값저장
		}		
	}
}
</script>


<!-- DB 처리 -->





<script type="text/javascript">
	parent.parent.Shadowbox.close();// 부모의 부모창 닫기
</script>