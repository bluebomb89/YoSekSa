package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"function/calander/typo.html",//Ķ����
			"function/freeboard/list.jsp",//��������
			"function/member/indexggong.jsp",//���
			"function/recipe/gallery.jsp",//������
			"function/freeboard/contact.jsp"//�ڰ� �۾���
	};
	public static String change(int no){
		return jsp[no];
	}
}
