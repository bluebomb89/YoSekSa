package com.controller;
import java.io.File;
// ModelŬ������ ��Ƽ� ���� (Container)
import java.util.*;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import com.common.YoseksaModel;

public class WebApplicationContext {
	private Map clsMap=new HashMap();
	public WebApplicationContext(String path){
		try{
			SAXParserFactory spf=SAXParserFactory.newInstance();
			SAXParser sp=spf.newSAXParser();
			HandleMapping hm=new HandleMapping();
			sp.parse(new File(path), hm);
			clsMap=hm.map;
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	// Model클래스를 모아서 관리 (Container)
	public YoseksaModel getBean(String id){
		return (YoseksaModel)clsMap.get(id);
	}
}
