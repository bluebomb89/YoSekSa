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
	    req.setAttribute("npage", strPage);
	    req.setAttribute("login", "../../member/login.jsp");
		req.setAttribute("jsp",	"../main/yoseksa.jsp");
		req.setAttribute("ntpage",	"../notice/notice.jsp");
		req.setAttribute("mangae",	"../main/mangae.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	@RequestMapping("recipe_search.sek")
	public String recipe_search(HttpServletRequest req) throws IOException {
		req.setCharacterEncoding("EUC-KR");
		Elements elements;
		Elements elementsimg;
		Elements elementstitle;
		List<String> imglist=new ArrayList<String>();
		List<String> titlelist=new ArrayList<String>();
		List<String> linklist=new ArrayList<String>();
		int a=0;
    	int page=0;
    	// 검색을 누르면 searchname에 검색값을 입력한다.
    	String searchname = req.getParameter("mangae-search");
    	// 페이지값을 받아온다
    	String mspage=req.getParameter("mspage").trim();
    	int nconfirm;
    	// page뒤에 숫자가 게시판 넘버. 
        Document document;
        if(mspage==null){
        	mspage="1";
        }else if(mspage==""){
        	mspage="1";
        }
        // 한페이지에 20개의 데이타. 우리에겐 10개씩 보내니까. 2로나눈 나머지가 0이아니면 몫을 1증가시켜주면 된다
        // mspage는 버튼값을 넘기기 위해 만들고 page는 그냥 보여주기로.
        if(Integer.parseInt(mspage)%2==0){
        	page=(Integer.parseInt(mspage)/2);
        	nconfirm=1;
        }else{
        	page=(Integer.parseInt(mspage)/2)+1;
        	nconfirm=0;

        }
        String mangaesearch =  URLEncoder.encode(searchname, "UTF-8");
		document = Jsoup.connect("http://www.10000recipe.com/recipe/list.html?q="+mangaesearch+"&order=weight&page="+page).get();
        if (null!=document) {
        	// a태그의 클래스가 thumbnail인 모든값을 가져옵니다.
        	elements = document.select("a.thumbnail");
        	elementsimg = document.select("a.thumbnail > img[src$=.jpg]");
        	elementstitle = document.select("a.thumbnail > div > h4");	        	
            for (int i = 0; i < elements.size(); i++) {
            	if(i<=elements.size()-1){
            		try{
		            	a++;
		            	String mangaeimg=elementsimg.get(i).attr("src");
		            	String mangaetitle=elementstitle.get(i).text();
		            	String mangaelink="http://www.10000recipe.com"+ elements.get(i).attr("href");
//			                System.out.println("------------------------------------------");
//			                System.out.println("출력 번호 :" + a);
//			                System.out.println("검색어 : " + elementstitle.get(i).text());
//			                System.out.println("제목 : " + mangaetitle);
//			                System.out.println("링크 URL : " +"http://www.10000recipe.com"+ elements.get(i).attr("href"));
//			                System.out.println("링크 URL : " + mangaelink);
//			                System.out.println("이미지 src : " + mangaeimg);
//			                System.out.println("------------------------------------------");
		                // 클릭하면 링크URL 내용태그를 읽어서 나에게로!

		            	imglist.add(mangaeimg);
		            	titlelist.add(mangaetitle);
		            	linklist.add(mangaelink);
            		}catch(Exception ex){
            			break;
            		}
		        	}
            	} //System.out.println("저장된 값="+elements.size());
            }
//	        System.out.println("짝수? 홀수?"+nconfirm);
		System.out.println("레시피서치 메소드 끝");
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
