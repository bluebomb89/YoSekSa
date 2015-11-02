package com.controller;
import java.util.*;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
public class HandleMapping extends org.xml.sax.helpers.DefaultHandler {
	Map map=new HashMap();
	@Override
	public void startElement(String uri, String localName, String qName, org.xml.sax.Attributes attributes)
			throws org.xml.sax.SAXException {
		try{
			if(qName.equals("bean")){
				String id=attributes.getValue("id");
				String cls=attributes.getValue("class");
				Class clsName=Class.forName(cls);
				Object obj=clsName.newInstance();
				map.put(id, obj);
			}
		}catch(Exception ex){}
	}
	
	
}

