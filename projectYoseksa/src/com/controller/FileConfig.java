package com.controller;
import java.util.*;
import java.io.*;
public class FileConfig {
   public List<String> getJavaFile(String pack){

      List<String> list=new ArrayList<String>();
      try{
//       영권경로
//         String path="C:\\Users\\남영권\\git\\yoseksaProject\\projectYoseksa\\src\\";
//       민영경로
         String path="C:\\Users\\sist\\git\\YoSekSa\\projectYoseksa\\src\\";
//        홍의경로
//         String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
//        승현경로
//         String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
//        태진경로
//         String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
//        우식경로
//         String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";

         String temp=pack.replace('.', '\\');
         File dir=new File(path+temp);
         File[] files=dir.listFiles();
         for(File f:files){
            String name=f.getName();
            String ext=name.substring(name.lastIndexOf('.')+1);
            if(ext.equals("java")){
               String data=pack+"."+name.substring(0, name.lastIndexOf('.'));
               list.add(data);
            }
         }
      }catch(Exception ex){
         System.out.println(ex.getMessage());
      }
      return list;
   }
}