<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<script type="text/javascript">
	alert("�̵��߰� �ݴ´�!");	
</script>


<script type="text/javascript">
var httpRequest=null;
function createHttpRequest(){
	if(window.ActiveXObject){ //IE 6.0 �̻�
		return new ActiveXObject("Msxml2.XMLHTTP");
		//Microsoft.XMLHTTP 6.0�����϶�
	}else if(window.XMLHttpRequest){ // ũ�� , ff
		return new XMLHttpRequest();
	}else{ // ȣȯ�� �ȵɶ�
		return null; //�������� �ʴ� ������
	}
}
function sendMessage(method,param,url,callback){
	// ���� ���� DWR,DOJO
	httpRequest=createHttpRequest();
	httpRequest.open(method,url+param,true);
	// true: �񵿱� false:����
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
			// �����ָ鼭 div�� ������
		}		
	}
}
</script>


<!-- DB ó�� -->





<script type="text/javascript">
	parent.parent.Shadowbox.close();// �θ��� �θ�â �ݱ�
</script>