<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    // Database에서 산출데이터
    String name = "홍두께";
    int age = 23;
    String phone = "123-4567";

    // json형태의 문자열
    String data = "{ \"name\":\"" + name + "\", \"age\":" + age + ", \"phone\":\"" + phone + "\" }";
//	System.out.println(data);

    // token을 사용
//	String data = name + "-" + age + "-" + phone;

    out.println(data);
%>