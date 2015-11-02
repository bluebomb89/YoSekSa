package com.controller;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
//RUNTIME, SOURCE, CLASS(컴파일후 제거)
@Target(ElementType.TYPE)
/*
 * TYPE : class 구분
 * PARAMETER : 매개변수 구분
 * FIELD : 멤버변수 구분
 * METHOD : 메소드 구분 
 */
public @interface Controller {

	public String value();
}























