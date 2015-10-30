package com.mangae;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.common.YoseksaModel;

public class recipesearch implements YoseksaModel{
	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		Elements elements;
		Elements elementstitle;
	    	int a=0;
	    	// �˻��� ������ searchname�� �˻����� �Է��Ѵ�.
	    	String searchname = req.getParameter("mangae-search");
	    	// page�ڿ� ���ڰ� �Խ��� �ѹ�. 
	        Document document;
	        int page=1;
	        String mangaesearch =  URLEncoder.encode(searchname, "UTF-8");
			document = Jsoup.connect("http://www.10000recipe.com/recipe/list.html?q="+mangaesearch+"&order=weight&page="+page).get();
	        if (null!=document) {
	        	// a�±��� Ŭ������ thumbnail�� ��簪�� �����ɴϴ�.
	        	System.out.println("���̾ƴϾ�");
	        	elements = document.select("a.thumbnail");
	        	System.out.println("elements: "+elements);
	        	elementstitle = document.select("a.thumbnail > div > h4");
	        	System.out.println("elements: "+elementstitle);
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
		req.setAttribute("mangae","../main/mangae.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}
