package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"../calendar/typo.html",//Ķ����
			"../freeboard/list.jsp",//��������
			"../member/join.jsp",//���
			"../recipe/gallery.jsp",//������
			"../freeboard/contact.jsp",//�ڰ� �۾���
			"../notice/notice.jsp",//��������
			"../QnA/qna.jsp",//qna����
			"../recipe/recipe_content.jsp"//������ ���뺸��

	};
	public static String change(int no){
		return jsp[no];
	}
}
