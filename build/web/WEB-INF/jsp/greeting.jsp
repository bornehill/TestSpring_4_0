<%-- 
    Document   : greeting
    Created on : 19/09/2017, 11:24:28 PM
    Author     : Borne
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <spring:url value="/resource/css/bootstrap.min.css" var="bootstrapCSS"/>
        <spring:url value="/resource/css/materialize.min.css" var="materializeCSS"/>
        <spring:url value="/resource/js/jquery.min.js" var="jqueryJS"/>
        <spring:url value="/resource/js/bootstrap.min.js" var="bootstrapJS"/>
        <spring:url value="/resource/js/materialize.min.js" var="materializeJS"/>

        <link href="${bootstrapCSS}" rel="stylesheet"/>
        <link href="${materializeCSS}" rel="stylesheet"/>
        <script src="${jqueryJS}"></script>
        <script src="${bootstrapJS}"></script>
        <script src="${materializeJS}"></script>        
        <title>Getting Started: Serving Web Content</title>
    </head>
    <body>
        <h1>Hello ${name}  </h1>
        <a class="waves-effect waves-light btn">button</a>
    </body>
</html>