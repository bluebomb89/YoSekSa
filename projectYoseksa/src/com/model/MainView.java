package com.model;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.noticedao.NoticeDAO;
import com.noticedao.NoticeDTO;

@Controller("main")
public class MainView {
	@RequestMapping("yoseksa.sek")
	public String mainview(HttpServletRequest req) throws IOException{
		String strPage=req.getParameter("page");
	    if(strPage==null)
	    	strPage="1";
	    int curpage=Integer.parseInt(strPage);
	    int rowSize=10;
	    int start=(curpage*rowSize)-(rowSize-1);
	    int end=curpage*rowSize;
	    Map map=new HashMap();
	    map.put("start", start); // #{start} get("start")
	    map.put("end", end);
	    List<NoticeDTO> list=NoticeDAO.noticeListData(map);
	    int totalpage=NoticeDAO.noticeTotalPage();
	    req.setAttribute("notice_today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
	    req.setAttribute("notice_list", list);
	    req.setAttribute("notice_curpage", curpage);
	    req.setAttribute("notice_totalpage", totalpage);
	    
		req.setAttribute("jsp",	"../main/yoseksa.jsp");
		req.setAttribute("ntpage",	"../notice/notice.jsp");
		req.setAttribute("mangae",	"../main/mangae.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	@RequestMapping("recipe_search.sek")
	public String recipe_search(HttpServletRequest req) throws IOException{
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
			System.out.println("�����Ǽ�ġ �޼ҵ� ��");
			req.setAttribute("imglist", imglist);
			req.setAttribute("titlelist", titlelist);
			req.setAttribute("linklist", linklist);
			req.setAttribute("nconfirm", nconfirm);
			req.setAttribute("mspage", mspage);
			return "yoSeksa/function/main/mangae.jsp";
	}
	@RequestMapping("recipeview.sek")
	public String recipeview(HttpServletRequest req) throws IOException{
//    	String url="http://www.10000recipe.com"+rm.elements.get(14).attr("href");
//    	System.out.println("���˿�"+url);
//    	System.out.println("??"+rm.elements);
//    	 �����Ǹ����� �����ؼ� �����Ǹ������� Ŭ���� url�� �������� ������url�ּҿ� http://www.10000recipe.com�� �ٿ���
//    	 document�� �ְ� document���� html�� �м� & �Ľ��Ѵ�.
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
