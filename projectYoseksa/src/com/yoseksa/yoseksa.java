package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"function/calander/typo.html",//캘린더
			"function/freeboard/list.jsp",//프리보드
			"function/member/indexggong.jsp",//멤버
			"function/recipe/gallery.jsp",//레시피
			"function/freeboard/contact.jsp"//자게 글쓰기
	};
	public static String change(int no){
		return jsp[no];
	}
}
