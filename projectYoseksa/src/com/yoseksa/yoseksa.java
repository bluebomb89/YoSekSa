package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"function/main/index.jsp",
			"function/calander/typo.html",//Ķ����
			"function/freeboard/list.jsp",//��������
			"function/member/indexggong.jsp",//���
			"function/recipe/gallery.jsp",//������
			"contact.jsp"//�ڰ� �۾���
	};
	public static String change(int no){
		return jsp[no];
	}
}
