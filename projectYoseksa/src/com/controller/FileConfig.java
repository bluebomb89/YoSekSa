package com.controller;
import java.util.*;
import java.io.*;
public class FileConfig {
	public List<String> getJavaFile(String pack){
		List<String> list=new ArrayList<String>();
		try{
			// �쁺沅� 寃쎈줈
//			String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
			// �슦�떇 寃쎈줈
//			String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
			// 誘쇱쁺 寃쎈줈
//			String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
			// �솉�쓽 寃쎈줈
			String path="C:\\Users\\ssd\\git\\YoSekSa\\projectYoseksa\\src\\";
			// �듅�쁽 寃쎈줈
//			String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
			// �깭吏� 寃쎈줈
//			String path="C:\\Users\\�궓�쁺沅�\\git\\yoseksaProject\\projectYoseksa\\src\\";
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
