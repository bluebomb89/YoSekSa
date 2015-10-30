package com.mangae;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.common.YoseksaModel;

public class recipesearch implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Elements elements;
		Elements elementstitle;
	    	int a=0;
	    	// 검색을 누르면 searchname에 검색값을 입력한다.
	    	String searchname = "%EB%B0%B1%EC%A2%85%EC%9B%90";
	    	// page뒤에 숫자가 게시판 넘버. 
	        Document document;
	        int page=1;
			document = Jsoup.connect("http://www.10000recipe.com/recipe/list.html?q="+searchname+"&order=weight&page="+page).get();
	        if (null != document) {
	        	// a태그의 클래스가 thumbnail인 모든값을 가져옵니다.
	        	elements = document.select("a.thumbnail");
	        	elementstitle = document.select("a.thumbnail > div > h4");
	            for (int i = 0; i < elements.size(); i++) {
	            	if(i<=elements.size()-1){          		
			            	a++;
			                System.out.println("------------------------------------------");
			                System.out.println("출력 번호 :" + a);
			                System.out.println("검색어 : " + elementstitle.get(i).text());
			                System.out.println("링크 URL : " +"http://www.10000recipe.com"+ elements.get(i).attr("href"));
			                System.out.println("------------------------------------------");
			                // 클릭하면 링크URL 내용태그를 읽어서 나에게로!
			            	
			        	}
	            	} //System.out.println("저장된 값="+elements.size());
	            }
			System.out.println("레시피서치 메소드 끝");
		req.setAttribute("jsp",	"../freeboard/list.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}
