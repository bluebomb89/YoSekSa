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
	    	// �˻��� ������ searchname�� �˻����� �Է��Ѵ�.
	    	String searchname = "%EB%B0%B1%EC%A2%85%EC%9B%90";
	    	// page�ڿ� ���ڰ� �Խ��� �ѹ�. 
	        Document document;
	        int page=1;
			document = Jsoup.connect("http://www.10000recipe.com/recipe/list.html?q="+searchname+"&order=weight&page="+page).get();
	        if (null != document) {
	        	// a�±��� Ŭ������ thumbnail�� ��簪�� �����ɴϴ�.
	        	elements = document.select("a.thumbnail");
	        	elementstitle = document.select("a.thumbnail > div > h4");
	            for (int i = 0; i < elements.size(); i++) {
	            	if(i<=elements.size()-1){          		
			            	a++;
			                System.out.println("------------------------------------------");
			                System.out.println("��� ��ȣ :" + a);
			                System.out.println("�˻��� : " + elementstitle.get(i).text());
			                System.out.println("��ũ URL : " +"http://www.10000recipe.com"+ elements.get(i).attr("href"));
			                System.out.println("------------------------------------------");
			                // Ŭ���ϸ� ��ũURL �����±׸� �о �����Է�!
			            	
			        	}
	            	} //System.out.println("����� ��="+elements.size());
	            }
			System.out.println("�����Ǽ�ġ �޼ҵ� ��");
		req.setAttribute("jsp",	"../freeboard/list.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}
