package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"../calendar/typo.html",//Ķ����
			"../freeboard/list.jsp",//��������
			"../member/indexggong.jsp",//���
			"../recipe/gallery.jsp",//������
			"../freeboard/contact.jsp",//�ڰ� �۾���
			"../QnA/qna.jsp",//qna����
			"../notice/notice.jsp"//��������

	};
	public static String change(int no){
		return jsp[no];
	}
}
