package com.controller;
import java.util.*;
public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FileConfig fc=new FileConfig();
		List<String> list=fc.getJavaFile("com.controller");
		for(String s:list){
			System.out.println(s);
		}
	}

}
