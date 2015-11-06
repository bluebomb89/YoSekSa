package com.model;
import com.recipedao.*;

import java.io.File;
import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.Reply.ReplyDAO;
import com.Reply.ReplylDTO;
import com.controller.Controller;
import com.controller.RequestMapping;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller("recipe")
public class Recipe {
    ReplyDAO rdao=ReplyDAO.newInstance();
    @RequestMapping("recipe_content.sek")
      public String recipe_content(HttpServletRequest req) throws IOException{
       String rPage=req.getParameter("rpage");
         int type=1;
         if(rPage==null)
         {
            rPage="1";
            type=0;
         }
         int rcurpage=Integer.parseInt(rPage);
         String recipe_no=req.getParameter("rno");   
         RecipeDTO d=RecipeDAO.recipeContentData(
               Integer.parseInt(recipe_no),type);
         List<MaterialDTO> material=RecipeDAO.materialData(Integer.parseInt(recipe_no));
         List<MaterialDTO> mlist=new ArrayList<MaterialDTO>();
         for(int i=0;i<material.size();i++){
            MaterialDTO mm=material.get(i);
            mlist.add(mm);
         }
         List<SourceDTO> source=RecipeDAO.sourceData(Integer.parseInt(recipe_no));
         List<SourceDTO> slist=new ArrayList<SourceDTO>();
         for(int i=0;i<source.size();i++){
            SourceDTO ss=source.get(i);
            slist.add(ss);
         }
         List<RecipeContentDTO> content=RecipeDAO.contentData(Integer.parseInt(recipe_no));
         List<RecipeContentDTO> clist=new ArrayList<RecipeContentDTO>();
         for(int i=0;i<content.size();i++){
            RecipeContentDTO cc=content.get(i);
            clist.add(cc);
         }
         // 댓글 내용 보기
         List<ReplylDTO> rview=rdao.replyView(Integer.parseInt(recipe_no));
         List<ReplylDTO> temp=new ArrayList<ReplylDTO>();
         int j=0;
         int pagecnt=(rcurpage*5)-5;
         for(int i=0;i<rview.size();i++)
         {
            if(j<5 && i>=pagecnt)
            {
               ReplylDTO dd=rview.get(i);
               temp.add(dd);
               j++;
            }
         }
         req.setAttribute("rcurpage", rcurpage);
         req.setAttribute("rvdto", temp);
         req.setAttribute("material", mlist);
         req.setAttribute("source", slist);
         req.setAttribute("content", content);
         req.setAttribute("dto", d);
         req.setAttribute("reply", "../recipe/recipe_reply.jsp");
         req.setAttribute("jsp",   "../recipe/recipe_content.jsp");
         return "yoSeksa/function/main/main.jsp";
      }
         @RequestMapping("recipe.sek")
         public String recipe(HttpServletRequest req) throws IOException{
            String strPage=req.getParameter("page");
             if(strPage==null)
                strPage="1";
             int curpage=Integer.parseInt(strPage);
             int rowSize=12;
             int blockSize=5;
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
      String enctype="UTF-8";
//    영권경로
      String path="C:\\javaDev\\jasb\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\projectYoseksa\\yoSeksa\\contentImg";
//      승현경로
//      String path="C:\\Users\\������\\git\\yoseksaProject\\projectYoseksa\\WebContent\\yoSeksa\\contentImg";
//      태진경로
//      String path="C:\\Users\\������\\git\\yoseksaProject\\projectYoseksa\\WebContent\\yoSeksa\\contentImg";
//      민영경로
//      String path="C:\\webDev\\homework\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\projectYoseksa\\yoSeksa\\contentImg";
//      홍의경로
//      String path="C:\\WebDev\\project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\projectYoseksa\\yoSeksa\\contentImg";
//      우식경로
//      String path="C:\\javadev\\git\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\projectYoseksa\\yoSeksa\\contentImg";
      
      int size=1024*1024*500;
      MultipartRequest mr=new MultipartRequest(req,path,size,enctype,new DefaultFileRenamePolicy());
      String recipe_sub=mr.getParameter("cok_title");
      String kind_no=mr.getParameter("cok_sq_category_4");
      String situ_no=mr.getParameter("cok_sq_category_2");
      String how_no=mr.getParameter("cok_sq_category_1");
      String jaeryo_no=mr.getParameter("cok_sq_category_3");
      String recipe_img=mr.getOriginalFileName("q_main_file");
      RecipeDTO d=new RecipeDTO();
      int recipe_no=RecipeDAO.sequnece();
      d.setRecipe_no(recipe_no);
      d.setBoard_no(2);
      d.setRecipe_sub(recipe_sub);
      d.setKind_no(Integer.parseInt(kind_no));
      d.setSitu_no(Integer.parseInt(situ_no));
      d.setHow_no(Integer.parseInt(how_no));
      d.setJaeryo_no(Integer.parseInt(jaeryo_no));
      d.setMember_no(5);
      if(recipe_img==null){
         d.setRecipe_img("");
         d.setRecipe_img_size(0);
      } else {
         d.setRecipe_img(recipe_img);
         File f=new File(path+"\\"+recipe_img);
         System.out.println("파일경로 =" +f);
         d.setRecipe_img_size((int)f.length());
      }
//      DB연동
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
         // DB����
         RecipeDAO.materialInsert(jd);
         System.out.println("asdfsdfsdf");
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
         // DB����
         RecipeDAO.soueceInsert(sc);
         System.out.println("bbbb");
         sno++;
      }
      // 내용 인서트
      RecipeContentDTO rc=new RecipeContentDTO();
      boolean nae=true;
      int cont=1;
      while(nae){
          String recipec_photo=mr.getOriginalFileName("q_step_file_"+cont);
          if(recipec_photo==null){
            nae=false;
            break;
             
          }
          String recipec_cont=mr.getParameter("step_text_"+cont);
          rc.setRecipe_no(recipe_no);
          rc.setRecipec_photo(recipec_photo);
          rc.setRecipec_cont(recipec_cont);
//          DB연동
          RecipeDAO.recipeContentInsert(rc);
          cont++;
       }
      req.setAttribute("jsp",   "../recipe/gallery.jsp");
      return "yoSeksa/function/main/main.jsp";
   }
}










