package com.mangae;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.common.YoseksaModel;

public class recipeview implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
//    	String url="http://www.10000recipe.com"+rm.elements.get(14).attr("href");
//    	System.out.println("유알엘"+url);
//    	System.out.println("??"+rm.elements);
    	// 레시피만개와 연동해서 레시피만개에서 클릭시 url을 가져오고 가져온url주소에 http://www.10000recipe.com을 붙여서
    	// document에 넣고 document에서 html을 분석 & 파싱한다.
    	String url="http://www.10000recipe.com/recipe/6836322";
        Document document = Jsoup.connect(url).get();
        if (null != document) {
            Elements elements = document.select("div.view_step > div.view_step_cont");
            Elements elementsIngredient = document.select("div.container > div.view_ready >  div.ready_ingre");
            System.out.println("재료속성 = "+elementsIngredient.size());
            System.out.println("크기 = "+ elements.size());
            if(elements.size() == 0){
            	elements = document.select("div.view_step");
            }
            for (int i = 0; i < elements.size(); i++) {
            	System.out.println(elements.get(i));
            	System.out.println("-------------------------");
            }
        }
		req.setAttribute("jsp",	"../freeboard/list.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}
