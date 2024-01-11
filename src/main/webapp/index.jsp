<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<%--
        AJAX :  Asynchronous Javascript And Xml(json)
                Jquery

        목적 : 비동기 통신으로 송수신을 하기 위한 목적

        syschronous 처리
        a, form, location.href -> link
--%>

<p id="demo"></p>
<br/><br/>

<button type="button">클릭</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $('button').click(function () {

            // $('#demo').load("data.html");

            // $('#demo').load("data.html #apple");

            // $('#demo').load("data.jsp", "name=성춘향&age=16");

            // $('#demo').load("data.jsp", { "name" : "정수동", "age" : 25 });

            $("#demo").load(
                "data.jsp",
                { "name" : "홍길동", "age" : 24 },
                function (dta, status, xhr){
                    //alert('통신에 성공해따 : success');
                    // alert(dta);
                    // alert(status); //success
                    // alert(xhr);
                //     $('#demo').append("data = " + dta + "<br/>")
                //     $('#demo').append("status = " + status + "<br/>")
                //     $('#demo').append("xhr = " + xhr + "<br/>")
                }
            );
        });
    });
</script>


</body>
</html>