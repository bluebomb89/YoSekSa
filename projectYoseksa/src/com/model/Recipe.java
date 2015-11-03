package com.model;
import com.recipedao.*;
import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller("recipe")
public class Recipe {
	@RequestMapping("recipe_content.sek")
	public String recipe_content(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp",	"../recipe/recipe_content.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	   @RequestMapping("recipe.sek")
	   public String recipe(HttpServletRequest req) throws IOException{
	      String strPage=req.getParameter("page");
	       if(strPage==null)
	          strPage="1";
	       int curpage=Integer.parseInt(strPage);
	       int rowSize=12;
	       int start=(curpage*rowSize)-(rowSize-1);
	       int end=curpage*rowSize;
	       Map map=new HashMap();
	       map.put("start", start); // #{start} get("start")
	       map.put("end", end);
	       List<RecipeDTO> list=
	             RecipeDAO.recipeListData(map);
	       int totalpage=RecipeDAO.recipeTotalPage();
	       req.setAttribute("list", list);
	       req.setAttribute("curpage", curpage);
	       req.setAttribute("totalpage", totalpage);
	      req.setAttribute("jsp",   "../recipe/gallery.jsp");
	      return "yoSeksa/function/main/main.jsp";
	   }
	@RequestMapping("recipe_enroll.sek")
	public String recipe_enroll(HttpServletRequest req) throws IOException{
		req.setAttribute("jsp", "../recipe/recipe_enroll.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
	@RequestMapping("recipe_insert.sek")
	public String recipe_insert(HttpServletRequest req) throws IOException{
		String path="c:\\download";
		String enctype="EUC-KR";
		int size=1024*1024*500;
		MultipartRequest mr=new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy());
		String recipe_sub=mr.getParameter("cok_title");
		String kind_no=mr.getParameter("cok_sq_category_4");
		String situ_no=mr.getParameter("cok_sq_category_2");
		String how_no=mr.getParameter("cok_sq_category_1");
		String jaeryo_no=mr.getParameter("cok_sq_category_3");
		String recipe_img=mr.getParameter("메인화면 이미지");
		System.out.println(recipe_img);
		System.out.println(recipe_sub);
		RecipeDTO d=new RecipeDTO();
		int recipe_no=RecipeDAO.sequnece();
		d.setRecipe_no(recipe_no);
		d.setRecipe_sub(recipe_sub);
		d.setKind_no(Integer.parseInt(kind_no));
		d.setSitu_no(Integer.parseInt(situ_no));
		d.setHow_no(Integer.parseInt(how_no));
		d.setJaeryo_no(Integer.parseInt(jaeryo_no));
		d.setMember_no(5);
		d.setRecipe_img("메인화면 이미지");
		d.setBoard_no(2);
		// db연동
		// 레시피 인서트
		RecipeDAO.recipeInsert(d);
		// 재료 인서트
		MaterialDTO jd=new MaterialDTO();
		boolean count=true;
		int no=1;
		while(count){
			String material_content=mr.getParameter("cok_resource_nm_"+no);
			if(material_content==null){
				count=false;
				break;
			}
			String material_gramgram=mr.getParameter("cok_resource_amt_"+no);
			jd.setMaterial_content(material_content);
			jd.setMaterial_gram(material_gramgram);
			jd.setRecipe_no(recipe_no);
			// DB연동
			RecipeDAO.materialInsert(jd);
			no++;
		}	
		// 양념 인서트
		SourceDTO sc=new SourceDTO();
		boolean scount=true;
		int sno=1;
		while(scount){
			String source_content=mr.getParameter("cok_spice_nm_"+sno);
			if(source_content==null){
				scount=false;
				break;
			}
			String source_gram=mr.getParameter("cok_spice_amt_"+sno);
			sc.setSource_content(source_content);
			sc.setSource_gram(source_gram);
			sc.setRecipe_no(recipe_no);
			// DB연동
			RecipeDAO.soueceInsert(sc);
			sno++;
		}
		// 요리순서 인서트
		req.setAttribute("jsp",	"../recipe/gallery.jsp");
		return "yoSeksa/function/main/main.jsp";
	}
}












