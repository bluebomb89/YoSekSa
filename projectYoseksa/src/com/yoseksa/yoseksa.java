package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"../calendar/typo.html",//Ķ����
			"../freeboard/list.jsp",//��������
			"../member/join.jsp",//���
			"../recipe/gallery.jsp",//������
			"../freeboard/contact.jsp",//�ڰ� �۾�rl
			"../notice/notice.jsp",//��������
			"../QnA/qna.jsp"//qna����

	};
	public static String change(int no){
		return jsp[no];
	}
}
