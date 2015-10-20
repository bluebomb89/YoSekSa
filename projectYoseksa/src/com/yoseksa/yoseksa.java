package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"../calender/typo.html",//캘린더
			"../freeboard/list.jsp",//프리보드
			"../member/indexggong.jsp",//멤버
			"../recipe/gallery.jsp",//레시피
			"../freeboard/contact.jsp"//자게 글쓰기
	};
	public static String change(int no){
		return jsp[no];
	}
}
