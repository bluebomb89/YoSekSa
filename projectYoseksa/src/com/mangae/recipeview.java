package com.mangae;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.common.YoseksaModel;

public class recipeview implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
//    	String url="http://www.10000recipe.com"+rm.elements.get(14).attr("href");
//    	System.out.println("유알엘"+url);
//    	System.out.println("??"+rm.elements);
//    	 레시피만개와 연동해서 레시피만개에서 클릭시 url을 가져오고 가져온url주소에 http://www.10000recipe.com을 붙여서
//    	 document에 넣고 document에서 html을 분석 & 파싱한다.
		String link=req.getParameter("link");
		String img=req.getParameter("img");
		String title=req.getParameter("title");
		String jaeryo = null;
		link=link.trim();
		List<String> searchview=new ArrayList<String>();
        Document document = Jsoup.connect(link).get();
        if (null != document) {
            Elements elements = document.select("div.view_step > div.view_step_cont");
            Elements elementsIngredient = document.select("div.container > div.view_ready >  div.ready_ingre");
            jaeryo=String.valueOf(elementsIngredient);
            if(elements.size() == 0){
            	elements = document.select("div.view_step");
            }
            for (int i = 0; i < elements.size(); i++) {
            	String msview=String.valueOf(elements.get(i));
            	searchview.add(msview);
            }
        }

		req.setAttribute("jsp",	"../main/search_content.jsp");
		req.setAttribute("jaeryo", jaeryo);
		req.setAttribute("img", img);
		req.setAttribute("title", title);
		req.setAttribute("searchview", searchview);
		return "yoSeksa/function/main/main.jsp";
	}
}
