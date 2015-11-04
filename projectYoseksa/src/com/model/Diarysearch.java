package com.model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;
import com.diarydao.DiaryDAO;
import com.recipedao.RecipeDTO;


@Controller("aaa")
public class Diarysearch {
	@RequestMapping("bbb.sek")
	public String freeboard(HttpServletRequest req) throws IOException{
		System.out.println("aaaaaaaa");
		String a="";
		return a;
	}

}
