<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${result=='NOID' }">
		<script>
			alert("���̵� �������� �ʽ��ϴ�.");
			history.back();
		</script>
	</c:when>
		<c:when test="${result==null }">
		<script>
			alert("null�� �������� �ʽ��ϴ�.");
			history.back();
		</script>
	</c:when>
	<c:when test="${result=='NOPWD' }">
		<script>
			alert("��й�ȣ�� Ʋ���ϴ�");
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<c:redirect url="yoseksa.sek"/>
	</c:otherwise>
</c:choose>