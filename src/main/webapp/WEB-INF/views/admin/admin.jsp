<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%--
    Document   : admin
    Created on : 06 26, 14, 11:55:53 AM
    Author     : TSI Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <h1>This is an admin page</h1>
        <form  action="${pageContext.request.contextPath}/logout" method="post">
            <input type="submit" value="Log out" />
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </body>
</html>
