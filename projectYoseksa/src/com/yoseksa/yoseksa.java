package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"../calander/typo.html",//Ķ����
			"../freeboard/list.jsp",//��������
			"../member/indexggong.jsp",//���
			"../recipe/gallery.jsp",//������
			"../freeboard/contact.jsp"//�ڰ� �۾���
	};
	public static String change(int no){
		return jsp[no];
	}
}
