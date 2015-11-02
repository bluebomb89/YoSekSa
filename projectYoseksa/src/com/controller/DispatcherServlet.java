package com.controller;

import java.io.*;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private List<String> clsList=new ArrayList<String>();
		
	
	public void init(ServletConfig config) throws ServletException {
		FileConfig fc=new FileConfig();
		clsList=fc.getJavaFile("com.model");
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String cmd=request.getRequestURI();
			cmd=cmd.substring(request.getContextPath().length()+1);
			// main.do
			for(String clsName:clsList){
				Class cls=Class.forName(clsName);
				if(cls.isAnnotationPresent(Controller.class)==false){
					continue;
				}
				Object obj=cls.newInstance();
				Method[] methods=cls.getDeclaredMethods();
				for(Method m:methods){
					RequestMapping rm=m.getAnnotation(RequestMapping.class);
					if(rm.value().equals(cmd)){
						String jsp=(String)m.invoke(obj, request);
						RequestDispatcher rd=request.getRequestDispatcher(jsp);
						rd.forward(request, response);
						return;
					}
				}
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}

}
