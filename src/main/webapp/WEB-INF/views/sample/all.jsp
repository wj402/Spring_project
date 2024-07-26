<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 24. 7. 26.
  Time: 오전 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title> All </title>
</head>
<body>
<h1>All</h1>
    <div>
        <sec:authorize access="isAuthenticated()" >
            로그아웃
        </sec:authorize>

        <sec:authorize access="isAnonymous()" >
            로그인
        </sec:authorize>
    </div>
</body>
</html>
