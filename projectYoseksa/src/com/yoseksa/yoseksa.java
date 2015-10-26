package com.yoseksa;

public class yoseksa {
	private static String[] jsp={
			"index.jsp",
			"../calendar/typo.html",//캘린더
			"../freeboard/list.jsp",//프리보드
			"../member/join.jsp",//멤버
			"../recipe/gallery.jsp",//레시피
			"../freeboard/contact.jsp",//자게 글쓰기
			"../notice/notice.jsp",//공지사항
			"../QnA/qna.jsp",//qna질답
			"../recipe/recipe_content.jsp"//레시피 내용보기

	};
	public static String change(int no){
		return jsp[no];
	}
}
