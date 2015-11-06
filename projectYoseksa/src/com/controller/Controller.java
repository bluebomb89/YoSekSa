	package com.controller;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
// RUNTIME, SOURCE, CLASS(�������� ����)
@Target(ElementType.TYPE)
/*
 * TYPE : class ����
 * PARAMETER : �Ű����� ����
 * FIELD : ������� ����
 * METHOD : �޼ҵ� ���� 
 */
public @interface Controller {

	public String value();
}























