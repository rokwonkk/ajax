<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");

    System.out.println(name + ", " + age);
%>

address = <%=name + ":" + age%>
