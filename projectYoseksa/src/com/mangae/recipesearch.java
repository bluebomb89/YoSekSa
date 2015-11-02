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
	        System.out.println(mspage);
	    	
	        String mangaesearch =  URLEncoder.encode(searchname, "UTF-8");
			document = Jsoup.connect("http://www.10000recipe.com/recipe/list.html?q="+mangaesearch+"&order=weight&page="+page).get();
	        if (null!=document) {
	        	// a태그의 클래스가 thumbnail인 모든값을 가져옵니다.
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
}
