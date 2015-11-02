package com.mangae;

import java.net.URLEncoder;
import java.util.*;

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
		Elements elementsimg;
		Elements elementstitle;
		List<String> imglist=new ArrayList<String>();
		List<String> titlelist=new ArrayList<String>();
		List<String> linklist=new ArrayList<String>();
		int a=0;
	    	int page=0;
	    	// �˻��� ������ searchname�� �˻����� �Է��Ѵ�.
	    	String searchname = req.getParameter("mangae-search");
	    	// ���������� �޾ƿ´�
	    	String mspage=req.getParameter("mspage").trim();
	    	int nconfirm;
	    	// page�ڿ� ���ڰ� �Խ��� �ѹ�. 
	        Document document;
	        if(mspage==null){
	        	mspage="1";
	        }else if(mspage==""){
	        	mspage="1";
	        }
	        // ���������� 20���� ����Ÿ. �츮���� 10���� �����ϱ�. 2�γ��� �������� 0�̾ƴϸ� ���� 1���������ָ� �ȴ�
	        // mspage�� ��ư���� �ѱ�� ���� ����� page�� �׳� �����ֱ��.
	        if(Integer.parseInt(mspage)%2==0){
	        	page=(Integer.parseInt(mspage)/2);
	        	nconfirm=1;
	        }else{
	        	page=(Integer.parseInt(mspage)/2)+1;
	        	nconfirm=0;

	        }
	        System.out.println(mspage);
	    	
	        String mangaesearch =  URLEncoder.encode(searchname, "UTF-8");
			document = Jsoup.connect("http://www.10000recipe.com/recipe/list.html?q="+mangaesearch+"&order=weight&page="+page).get();
	        if (null!=document) {
	        	// a�±��� Ŭ������ thumbnail�� ��簪�� �����ɴϴ�.
	        	elements = document.select("a.thumbnail");
	        	elementsimg = document.select("a.thumbnail > img[src$=.jpg]");
//	        	System.out.println("elementsimg: "+elementsimg);
	        	elementstitle = document.select("a.thumbnail > div > h4");	        	
//	        	System.out.println("elementstitle: "+elementstitle);
	            for (int i = 0; i < elements.size(); i++) {
	            	if(i<=elements.size()-1){          		
			            	a++;
			            	String mangaeimg=elementsimg.get(i).attr("src");
			            	String mangaetitle=elementstitle.get(i).text();
			            	String mangaelink="http://www.10000recipe.com"+ elements.get(i).attr("href");
//			                System.out.println("------------------------------------------");
//			                System.out.println("��� ��ȣ :" + a);
//			                System.out.println("�˻��� : " + elementstitle.get(i).text());
//			                System.out.println("���� : " + mangaetitle);
//			                System.out.println("��ũ URL : " +"http://www.10000recipe.com"+ elements.get(i).attr("href"));
//			                System.out.println("��ũ URL : " + mangaelink);
//			                System.out.println("�̹��� src : " + mangaeimg);
//			                System.out.println("------------------------------------------");
			                // Ŭ���ϸ� ��ũURL �����±׸� �о �����Է�!
			            	imglist.add(mangaeimg);
			            	titlelist.add(mangaetitle);
			            	linklist.add(mangaelink);
			            	
			        	}
	            	} //System.out.println("����� ��="+elements.size());
	            }
//	        System.out.println("짝수? 홀수?"+nconfirm);
	        System.out.println("짝수? 홀수?"+nconfirm);
			req.setAttribute("imglist", imglist);
			req.setAttribute("titlelist", titlelist);
			req.setAttribute("linklist", linklist);
			req.setAttribute("nconfirm", nconfirm);
			req.setAttribute("mspage", mspage);
			return "yoSeksa/function/main/mangae.jsp";
	}
}
